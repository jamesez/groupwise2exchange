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

require 'yaml'
require 'rubygems'
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
  puts "Usage: contact-blender.rb <exchange destination> <exchange password> [<groupwise account>]"
  exit -1
end

username = ARGV[0]
exchange_pw = ARGV[1]
groupwise_account = ARGV[2] || ARGV[0]

puts "Migrating GW account #{groupwise_account} to Exchange account #{username}..."
Dir::mkdir("wiredumps/#{username}") unless File::exists?("wiredumps/#{username}")

# Create Exchange protocol endpoint
exchange = Exchange::ExchangeServicePortType.new(config["exchange"]["endpoint"])
exchange.streamhandler.filterchain << SendBasicAuthFilter.new(username, exchange_pw)
exchange.wiredump_dev = File.open("wiredumps/#{username}/exchange_contacts", "a")

# Create GroupWise protocol endpoint
groupwise = GroupWise::GroupWisePortType.new(config["groupwise"]["endpoint"])
groupwise.wiredump_dev = File.open("wiredumps/#{username}/groupwise_contacts", "a")

# Log in to GW
r = groupwise.loginRequest(
    GroupWise::LoginRequest.new(
      GroupWise::TrustedApplication.new(groupwise_account, config["groupwise"]["key_name"], config["groupwise"]["key"])
    ))

#  require 'ruby-debug'; debugger;


# Attach session
groupwise.headerhandler << ( c = ClientAuthHeaderHandler.new; c.session = r.session; c; )

# Find the "Contacts" folder
contact_folder = groupwise.getFolderListRequest(
    GroupWise::GetFolderListRequest.new("folders", nil, true, false, false)).folders.find { |f| f.name == "Contacts" }

# Obtain matching contacts from the address book attached to Contacts
gw_contacts =  groupwise.getItemsRequest(GroupWise::GetItemsRequest.new(contact_folder.addressBook, "id") )

# Target folder finder
ex_target_folder = Exchange::TargetFolderIdType.new(nil, 
  (e = Exchange::DistinguishedFolderIdType.new; e.xmlattr_Id = "contacts"; e) )

puts "Got source list, #{gw_contacts.items.length}"


# Convert
gw_contacts.items.each_with_index do |input_stub, index|
  print "Item #{input_stub.id}, #{index + 1} of #{gw_contacts.items.length}"

  # Skip organizations - not important for our use
  if input_stub.class != GroupWise::Contact
    puts " -- SKIPPING (#{input_stub.class.to_s})"
    next
  end
  
  input = groupwise.getItemRequest(GroupWise::GetItemRequest.new(input_stub.id)).item
  
  if input_stub.id != input.id
    puts "## REALITY HAS GONE NONLINEAR! #{input_stub.id} != #{input.id}! DO SOMETHING!"
    exit
  end
  
  output = Exchange::ContactItemType.new
  
  # Body Text
  output.body = ""

  # Names
  output.displayName  = input.name                unless input.name.nil?
  output.fileAs       = input.name                unless input.name.nil?
  output.fileAsMapping = Exchange::FileAsMappingType.new("FirstSpaceLast")
  output.subject      = input.name                unless input.name.nil?

  output.givenName    = input.fullName.firstName  unless input.fullName.nil? || input.fullName.firstName.nil?
  output.surname      = input.fullName.lastName   unless input.fullName.nil? || input.fullName.lastName.nil?
  output.middleName   = input.fullName.middleName unless input.fullName.nil? || input.fullName.middleName.nil?
  output.generation   = input.fullName.nameSuffix unless input.fullName.nil? || input.fullName.nameSuffix.nil?
  # prefix (e.g, "Prof.") has to be handled through an extended propery.
  if input.fullName && input.fullName.namePrefix
    ep = Exchange::ExtendedPropertyType.new
    url = Exchange::PathToExtendedFieldType.new
    url.xmlattr_PropertyTag = 0x3A45 # PidTagDisplayNamePrefix
    url.xmlattr_PropertyType = "String"
    ep.extendedFieldURI = url
    ep.value = input.fullName.namePrefix
    output.extendedProperty << ep
  end
  
  output.body << input.comment if input.respond_to?(:comment) && !input.comment.nil?
  output.body << "\n"
  
  # Company info
  if input.officeInfo
    output.companyName = input.officeInfo.organization.to_s unless input.officeInfo.organization.nil?
    output.department  = input.officeInfo.department        unless input.officeInfo.department.nil?
    output.jobTitle    = input.officeInfo.title             unless input.officeInfo.title.nil?
    output.businessHomePage = input.officeInfo.website      unless input.officeInfo.website.nil?
  end
  
  # Personal info
  if input.personalInfo
    output.birthday = input.personalInfo.birthday unless input.personalInfo.birthday.nil?
    # No mapping to Exchange
    if input.personalInfo.website
      output.body << "Personal website: #{input.personalInfo.website}\n\n"
    end
  end
  
  # IM Lists - Exchange has an "im address" field but they don't handle anything but MSN (ha!)
  # so I'm stashing information in the "body" section which is the large block of notes.
  if input.imList
    input.imList.each do |im|
      output.body << "#{(im.service == "" || im.service.nil?) ? "IM" : im.service.upcase}: #{im.address}\n"
    end
    output.body << "\n"
  end
  
  # E-mail addresses
  if input.emailList && input.emailList.email
    output.emailAddresses = Exchange::EmailAddressDictionaryType.new
    
    input.emailList.email.each_with_index do |email, i|
      break if i >= 3  # Exchange only handles three addresses per person.
      a = Exchange::EmailAddressDictionaryEntryType.new(email)
      a.xmlattr_Key = "EmailAddress#{i + 1}"
      output.emailAddresses << a
      
      # Outlook won't send mail to contacts unless they have additional
      # MAPI properties with the e-mail address info.  I don't know why
      # the EWS interface doesn't just do this automatically but it doesn't.
      # http://social.technet.microsoft.com/Forums/es-ES/exchangesvrdevelopment/thread/bc98f0e8-afc8-47f6-a309-2e1faa815b0c
      ep = Exchange::ExtendedPropertyType.new
      url = Exchange::PathToExtendedFieldType.new
      url.xmlattr_DistinguishedPropertySetId = "Address"
      url.xmlattr_PropertyId = 0x8084 + 0x0010 * i # 32900, PidLidEmail1OriginalDisplayName
      url.xmlattr_PropertyType = "String"
      ep.extendedFieldURI = url
      ep.value = email
      output.extendedProperty << ep

      ep = Exchange::ExtendedPropertyType.new
      url = Exchange::PathToExtendedFieldType.new
      url.xmlattr_DistinguishedPropertySetId = "Address"
      url.xmlattr_PropertyId = 0x8082 + 0x0010 * i # 32898, PidLidEmail1AddressType
      url.xmlattr_PropertyType = "String"
      ep.extendedFieldURI = url
      ep.value = 'SMTP'
      output.extendedProperty << ep

    end
  end
  
  # Phone Numbers
  if input.phoneList && input.phoneList.phone
    output.phoneNumbers = Exchange::PhoneNumberDictionaryType.new
    input.phoneList.phone.each do |phone|
      
      new_phone = Exchange::PhoneNumberDictionaryEntryType.new(phone)

      # Convert GroupWise types to Exchange.  GW 7 only has five phone types; 8 added a bunch more.
      new_phone.xmlattr_Key = case phone.xmlattr_type
        when "Fax"    then "BusinessFax"
        when "Home"   then "HomePhone"
        when "Office" then "BusinessPhone"
        when "Pager"  then "Pager"
        when "Mobile" then "MobilePhone"
      end
      
      output.phoneNumbers << new_phone
    end
  end
  
  # Addresses
  if input.addressList
    output.physicalAddresses = Exchange::PhysicalAddressDictionaryType.new
    input.addressList.each do |address|
      new_address = Exchange::PhysicalAddressDictionaryEntryType.new
      
      new_address.street          = address.streetAddress unless address.streetAddress.nil?
      new_address.city            = address.city          unless address.city.nil?
      new_address.state           = address.state         unless address.state.nil?
      new_address.postalCode      = address.postalCode    unless address.postalCode.nil?
      new_address.countryOrRegion = address.country       unless address.country.nil?
      
      new_address.xmlattr_Key = case address.xmlattr_type
        when "Office" then "Business"
        when "Home"   then "Home"
        else               "Other"
      end
      
      # Handle the mail stop field, which strangely is here.  It's moved in GW 8.
      if address.xmlattr_type == "Office" && address.location != nil
        output.officeLocation = address.location
      end
      
      output.physicalAddresses << new_address
    end
  end
  
  # output.body << "Backup\n"
  # output.body << Base64.encode64(Marshal.dump(input))
  
  output.body << "Originating ID: #{input.id}\n"
  # Body text cleanup
  output.body = Exchange::BodyType.new(output.body)
  output.body.xmlattr_BodyType = "Text"
  
  # Build output
  ex_add_list = Exchange::NonEmptyArrayOfAllItemsType.new
  ex_add_list.contact << output
  item_request = Exchange::CreateItemType.new(ex_target_folder, ex_add_list)
  
  # Create
  response = exchange.createItem(item_request)
  
  if response.responseMessages.createItemResponseMessage[0].xmlattr_ResponseClass != "Success"
    puts " -- FAILED: #{response.responseMessages.createItemResponseMessage[0].responseCode}"
  else 
    puts " -- OK"
  end
  
end

# Log out from GroupWise, clean up session
groupwise.logoutRequest(GroupWise::LogoutRequest.new)
