#!/usr/bin/env ruby

# Copyright (c) 2009 The Regents of the University of Michigan
# Written by Jim Zajkowski <jamesez@umich.edu>
# 
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'rubygems'
require 'yaml'
require 'pp'
require 'base64'
gem 'soap4r'
require 'soap/header/simplehandler'
require 'soap/filter/streamhandler'

require 'ExchangeDriver.rb'
require 'GroupWiseDriver.rb'

require 'blender-helpers.rb'

config = YAML::load_file("config.yaml")

if ARGV.length < 2 || ARGV.length > 3
  puts "Usage: calendar-blender.rb <exchange destination> <exchange password> [<groupwise account>]"
  exit -1
end

username = ARGV[0]
exchange_pw = ARGV[1]
groupwise_account = ARGV[2] || ARGV[0]

puts "Migrating GW account #{groupwise_account} to Exchange account #{username}"
Dir::mkdir("wiredumps/#{username}") unless File::exists?("wiredumps/#{username}")

# Create Exchange protocol endpoint
exchange = Exchange::ExchangeServicePortType.new(config["exchange"]["endpoint"])
exchange.streamhandler.filterchain << SendBasicAuthFilter.new(username, exchange_pw)
exchange.wiredump_dev = File.open("wiredumps/#{username}/exchange", "a")

# Create GroupWise protocol endpoint
groupwise = GroupWise::GroupWisePortType.new(config["groupwise"]["endpoint"])
groupwise.wiredump_dev = File.open("wiredumps/#{username}/groupwise", "a")

# Log in to GW
r = groupwise.loginRequest(
    GroupWise::LoginRequest.new(
      GroupWise::TrustedApplication.new(groupwise_account, config["groupwise"]["key_name"], config["groupwise"]["key"])
    ))

#  require 'ruby-debug'; debugger;

# Attach session
groupwise.headerhandler << ( c = ClientAuthHeaderHandler.new; c.session = r.session; c; )

# Find the "Calendar" folder
calendar_folder = groupwise.getFolderListRequest(
    GroupWise::GetFolderListRequest.new("folders", nil, true, false, false)).folders.find \
      { |f| f.respond_to?(:folderType) && f.folderType == "Calendar" }

# Only obtain IDs, this is somewhat less resource intensive
gw_events =  groupwise.getItemsRequest(GroupWise::GetItemsRequest.new(calendar_folder.id, "id") )

# Calendar target folder
ex_target_folder = Exchange::TargetFolderIdType.new(nil, 
  (e = Exchange::DistinguishedFolderIdType.new; e.xmlattr_Id = "calendar"; e) )

# Tasks target folder
ex_tasks_folder = Exchange::TargetFolderIdType.new(nil, 
  (e = Exchange::DistinguishedFolderIdType.new; e.xmlattr_Id = "tasks"; e) )

# Last time
cap = DateTime.parse(config["groupwise"]["calendar_cap"])

puts "Got source list, #{gw_events.items.length}"

# Convert
gw_events.items.each_with_index do |input_stub, index|
  print "Item #{input_stub.id}, #{index + 1} of #{gw_events.items.length}"

  # Obtain the actual item
  attributes = [ "id", "startDate", "endDate", "subject", "message", 
    "alarm", "allDayEvent", "startDay", "endDay", "acceptLevel", "place" ]
  input = groupwise.getItemRequest(GroupWise::GetItemRequest.new(input_stub.id, attributes.join(" "))).item
  
  # Apparently this can occur with some special items.  I didn't
  # track down why, it wasn't important enough.  Only had it happen once.
  if input_stub.id != input.id
    puts "## REALITY HAS GONE NONLINEAR! #{input_stub.id} != #{input.id}! DO SOMETHING!"
    exit
  end
  
  if input.startDate > cap
    puts " -- Skipping, past cap date"
    next
  end

  # Handle appointments.  Tasks are below.
  if input.class == GroupWise::Appointment
    print " (A) "
    output = Exchange::CalendarItemType.new

    # Body Text - some conversion components don't map to Exchange so we're
    # throwing them in the body text.
    output.body = ""
    
    if input.respond_to?(:message) && input.message != nil
      output.body << Base64.decode64(input.message[0])
      output.body << "\n<br/>"
    end
    
    # output.isMeeting = false
    output.subject = input.subject unless input.subject.nil?

    # alarms
    if input.alarm.nil? == false && input.alarm.xmlattr_enabled == true && input.alarm.to_i > 0
      output.reminderIsSet = true
      output.reminderMinutesBeforeStart = input.alarm.to_i / 60
    end

    output.isAllDayEvent = input.allDayEvent unless input.allDayEvent.nil?
    output.start = input.startDate unless input.startDate.nil?
    output.m_end = input.endDate unless input.endDate.nil?  # m_ because end is reserved in ruby
    
    output.location = input.place unless input.place.nil?
    
    if input.acceptLevel.nil? == false
      output.legacyFreeBusyStatus = case input.acceptLevel
        when "Free" then "Free"
        when "Busy" then "Busy"
        when "Tentative" then "Tentative"
        when "OutOfOffice" then "OOF"
      end
    end

    output.body << "Originating ID: #{input.id}<br\>\n"
    # Body text cleanup
    output.body = Exchange::BodyType.new(output.body)
    output.body.xmlattr_BodyType = "HTML"

    # Add to output stream
    ex_add_list = Exchange::NonEmptyArrayOfAllItemsType.new
    ex_add_list.calendarItem << output
    item_request = Exchange::CreateItemType.new(ex_target_folder, ex_add_list)
    item_request.xmlattr_SendMeetingInvitations = "SendToNone"

    response = exchange.createItem(item_request)

    if response.responseMessages.createItemResponseMessage[0].xmlattr_ResponseClass != "Success"
      puts " -- FAILED: #{response.responseMessages.createItemResponseMessage[0].responseCode}"
    else
      puts " -- OK"
    end

  # GroupWise Tasks
  elsif input.class == GroupWise::Task
    print " (T) "
    output = Exchange::TaskType.new
    output.body = ""

    output.subject = input.subject unless input.subject.nil?
    
    output.dueDate   = input.dueDate   + 0.166667 unless input.dueDate.nil?
    output.startDate = input.startDate + 0.166667 unless input.startDate.nil?
    
    if input.respond_to?(:completed)
      output.status = "Completed" if input.completed
    end
    
    if input.respond_to?(:message) && input.message != nil
      output.body << Base64.decode64(input.message[0])
      output.body << "\n<br/>"
    end

    output.body << "Originating ID: #{input_stub.id}<br\>\n"
    # Body text cleanup
    output.body = Exchange::BodyType.new(output.body)
    output.body.xmlattr_BodyType = "HTML"
    
    # Add to output stream
    ex_add_list = Exchange::NonEmptyArrayOfAllItemsType.new
    ex_add_list.task << output
    item_request = Exchange::CreateItemType.new(ex_tasks_folder, ex_add_list)

    response = exchange.createItem(item_request)

    if response.responseMessages.createItemResponseMessage[0].xmlattr_ResponseClass != "Success"
      puts " -- FAILED: #{response.responseMessages.createItemResponseMessage[0].responseCode}"
    else 
      puts " -- OK"
    end
        
  elsif input.class == GroupWise::Note
    print " (N) "
    output = Exchange::CalendarItemType.new
    
    output.body = ""    
    if input.respond_to?(:message) && input.message != nil
      output.body << Base64.decode64(input.message[0])
      output.body << "\n<br/>"
    end
    
    output.subject = input.subject unless input.subject.nil?

    output.isAllDayEvent = true
    output.start = input.startDate + 0.166667  # Because GroupWise returns these at GMT 0 it
    output.m_end = input.startDate + 0.166667  # messes with Exchange and makes them off a day.

    output.body << "Originating ID: #{input.id}<br\>\n"
    # Body text cleanup
    output.body = Exchange::BodyType.new(output.body)
    output.body.xmlattr_BodyType = "HTML"

    # Add to output stream
    ex_add_list = Exchange::NonEmptyArrayOfAllItemsType.new
    ex_add_list.calendarItem << output
    item_request = Exchange::CreateItemType.new(ex_target_folder, ex_add_list)
    item_request.xmlattr_SendMeetingInvitations = "SendToNone"

    response = exchange.createItem(item_request)

    if response.responseMessages.createItemResponseMessage[0].xmlattr_ResponseClass != "Success"
      puts " -- FAILED: #{response.responseMessages.createItemResponseMessage[0].responseCode}"
    else 
      puts " -- OK"
    end

  else
    puts "## Error: unknown dohickey in calendar folder, eject eject.\n"
    pp input
    exit
  end
  

end

# Log out from GroupWise, clean up session
groupwise.logoutRequest(GroupWise::LogoutRequest.new)
