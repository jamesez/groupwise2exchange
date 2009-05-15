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
# gem 'tzinfo'
require 'soap/header/simplehandler'
require 'GroupWiseDriver.rb'
require 'ExchangeDriver.rb'

config = YAML::load_file("config.yaml")

class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler
  MyHeaderName = XSD::QName.new("http://schemas.novell.com/2005/01/GroupWise/types", "session")

  attr_accessor :session

  def initialize
    super(MyHeaderName)
    @session = nil
  end

  def on_simple_outbound
    if @session
      @session
      # { "session" => @session }
    end
  end

  def on_simple_inbound(my_header, mustunderstand)
    @session = my_header["session"]
  end
end

gw = GroupWise::GroupWisePortType.new(config["groupwise"]["endpoint"])
# gw.wiredump_file_base = "foo"
gw.options["protocol.http.receive_timeout"] = 600

resp = gw.loginRequest(
    GroupWise::LoginRequest.new(
      GroupWise::TrustedApplication.new(groupwise_account, config["groupwise"]["key_name"], config["groupwise"]["key"])
    ))

h = ClientAuthHeaderHandler.new
h.session = resp.session
gw.headerhandler << h

# books = gw.getAddressBookListRequest(GroupWise::GetAddressBookListRequest.new)
# book = books.books.find { |book| book.name == "" }

# l = gw.getItemsRequest(GetItemsRequest.new("3F671A6F.gw.postoffice.104.16A7836.1.3.1@53"))

folders = gw.getFolderListRequest(GroupWise::GetFolderListRequest.new("folders", nil, true, false, false))

contacts_folder = folders.folders.find { |f| f.respond_to?(:folderType) && f.folderType == "Contacts" }
calendar_folder = folders.folders.find { |f| f.respond_to?(:folderType) && f.folderType == "Calendar" }
checklist_folder = folders.folders.find { |f| f.respond_to?(:folderType) && f.folderType == "Checklist" }
cabinet_folder = folders.folders.find { |f| f.respond_to?(:folderType) && f.folderType == "Cabinet" }
documents_folder = folders.folders.find { |f| f.respond_to?(:folderType) && f.folderType == "Documents" }

# matching_ab = books.books.find { |f| f.id == contact_folder.addressBook }
calendar = gw.getItemsRequest(GroupWise::GetItemsRequest.new(calendar_folder.id))
# contacts = gw.getItemsRequest(GroupWise::GetItemsRequest.new(contacts_folder.id))

# drop into debugger.  I usually then drop to irb from here.
require 'ruby-debug'; debugger;

# first_last = contacts.items.find { |i| i.name == "First Last" }

# require


gw.logoutRequest(GroupWise::LogoutRequest.new)

