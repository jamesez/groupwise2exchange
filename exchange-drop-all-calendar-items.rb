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
gem 'soap4r'
require 'soap/header/simplehandler'
require 'soap/filter/streamhandler'
require 'ExchangeDriver.rb'

config = YAML::load_file("config.yaml")

class SendBasicAuthFilter < SOAP::Filter::StreamHandler
  def initialize(loginname, password)
    @authorization = 'Basic ' + [ loginname + ':' + password ].pack('m').delete("\r\n")
  end

  def on_http_outbound(req)
    req.header.delete('Authorization')
    req.header['Authorization'] = @authorization
  end

  def on_http_inbound(req, res)
  end
end

if ARGV.length != 2
  puts "Usage: exchange-drop-all-calendar-items.rb <exchange account> <exchange password>"
  exit -1
end

username = ARGV[0]
exchange_pw = ARGV[1]

ex = Exchange::ExchangeServicePortType.new(config["exchange"]["endpoint"])
ex.streamhandler.filterchain << SendBasicAuthFilter.new(username, exchange_pw)
ex.wiredump_dev = STDERR

calendar_folder = Exchange::DistinguishedFolderIdType.new
calendar_folder.xmlattr_Id = "calendar"
saved_folder = Exchange::TargetFolderIdType.new(nil, calendar_folder)

find_request = Exchange::FindItemType.new
find_request.xmlattr_Traversal = "Shallow"
find_request.itemShape = Exchange::ItemResponseShapeType.new(Exchange::DefaultShapeNamesType.new("IdOnly"))

ex_folder_list = Exchange::NonEmptyArrayOfBaseFolderIdsType.new
ex_folder_list.distinguishedFolderId = calendar_folder
find_request.parentFolderIds = ex_folder_list

a = ex.findItem(find_request).\
  responseMessages.findItemResponseMessage[0].\
  rootFolder.items.calendarItem.map { |i| i.itemId }

d = Exchange::DeleteItemType.new
d.itemIds = a
d.xmlattr_DeleteType = "HardDelete"
d.xmlattr_SendMeetingCancellations = "SendToNone"

ex.deleteItem(d)
