# Converted from the WSDL with wsdl2ruby.

require 'GroupWise.rb'
require 'GroupWiseMappingRegistry.rb'
require 'soap/rpc/driver'

module GroupWise

class GroupWisePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8080"

  Methods = [
    [ "acceptRequest",
      "acceptRequest",
      [ ["in", "acceptReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "acceptRequest"]],
        ["out", "acceptRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "acceptResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "acceptShareRequest",
      "acceptShareRequest",
      [ ["in", "acceptShareReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "acceptShareRequest"]],
        ["out", "acceptShareRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "acceptShareResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "addItemRequest",
      "addItemRequest",
      [ ["in", "addItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addItemRequest"]],
        ["out", "addItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "addItemsRequest",
      "addItemsRequest",
      [ ["in", "addItemsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addItemsRequest"]],
        ["out", "addItemsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "addMembersRequest",
      "addMembersRequest",
      [ ["in", "addMembersReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addMembersRequest"]],
        ["out", "addMembersRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "addMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "closeFreeBusySessionRequest",
      "closeFreeBusySessionRequest",
      [ ["in", "closeFreeBusySessionReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "closeFreeBusySessionRequest"]],
        ["out", "closeFreeBusySessionRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "closeFreeBusySessionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "completeRequest",
      "completeRequest",
      [ ["in", "completeReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "completeRequest"]],
        ["out", "completeRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "completeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createCursorRequest",
      "createCursorRequest",
      [ ["in", "createCursorReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createCursorRequest"]],
        ["out", "createCursorRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createCursorResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createItemRequest",
      "createItemRequest",
      [ ["in", "createItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createItemRequest"]],
        ["out", "createItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createItemsRequest",
      "createItemsRequest",
      [ ["in", "createItemsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createItemsRequest"]],
        ["out", "createItemsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createJunkEntryRequest",
      "createJunkEntryRequest",
      [ ["in", "createJunkEntryReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createJunkEntryRequest"]],
        ["out", "createJunkEntryRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createJunkEntryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createProxyAccessRequest",
      "createProxyAccessRequest",
      [ ["in", "createProxyAccessReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createProxyAccessRequest"]],
        ["out", "createProxyAccessRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createProxyAccessResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "createSignatureRequest",
      "createSignatureRequest",
      [ ["in", "createSignatureReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createSignatureRequest"]],
        ["out", "createSignatureRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "createSignatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "declineRequest",
      "declineRequest",
      [ ["in", "declineReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "declineRequest"]],
        ["out", "declineRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "declineResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "delegateRequest",
      "delegateRequest",
      [ ["in", "delegateReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "delegateRequest"]],
        ["out", "delegateRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "delegateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "destroyCursorRequest",
      "destroyCursorRequest",
      [ ["in", "destroyCursorReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "destroyCursorRequest"]],
        ["out", "destroyCursorRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "destroyCursorResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "executeRuleRequest",
      "executeRuleRequest",
      [ ["in", "executeRuleReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "executeRuleRequest"]],
        ["out", "executeRuleRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "executeRuleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "forwardRequest",
      "forwardRequest",
      [ ["in", "forwardReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "forwardRequest"]],
        ["out", "forwardRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "forwardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getAddressBookListRequest",
      "getAddressBookListRequest",
      [ ["in", "getAddressBookListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getAddressBookListRequest"]],
        ["out", "getAddressBookListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getAddressBookListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getAttachmentRequestMessage",
      "getAttachmentRequestMessage",
      [ ["in", "getAttachmentReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getAttachmentRequest"]],
        ["out", "getAttachmentRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getAttachmentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getCategoryListRequest",
      "getCategoryListRequest",
      [ ["in", "getCategoryListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getCategoryListRequest"]],
        ["out", "getCategoryListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getCategoryListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getCustomListRequest",
      "getCustomListRequest",
      [ ["in", "getCustomListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getCustomListRequest"]],
        ["out", "getCustomListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getCustomListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getDeltasRequest",
      "getDeltasRequest",
      [ ["in", "getDeltasReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDeltasRequest"]],
        ["out", "getDeltasRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDeltasResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getDeltaInfoRequest",
      "getDeltaInfoRequest",
      [ ["in", "getDeltaInfoReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDeltaInfoRequest"]],
        ["out", "getDeltaInfoRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDeltaInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getDocumentTypeListRequest",
      "getDocumentTypeListRequest",
      [ ["in", "getDocumentTypeListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDocumentTypeListRequest"]],
        ["out", "getDocumentTypeListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getDocumentTypeListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getFolderRequest",
      "getFolderRequest",
      [ ["in", "getFolderReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFolderRequest"]],
        ["out", "getFolderRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFolderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getFolderListRequest",
      "getFolderListRequest",
      [ ["in", "getFolderListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFolderListRequest"]],
        ["out", "getFolderListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFolderListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getFreeBusyRequest",
      "getFreeBusyRequest",
      [ ["in", "getFreeBusyReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFreeBusyRequest"]],
        ["out", "getFreeBusyRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getFreeBusyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getItemRequest",
      "getItemRequest",
      [ ["in", "getItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getItemRequest"]],
        ["out", "getItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getItemsRequest",
      "getItemsRequest",
      [ ["in", "getItemsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getItemsRequest"]],
        ["out", "getItemsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getJunkEntriesRequest",
      "getJunkEntriesRequest",
      [ ["in", "getJunkEntriesReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getJunkEntriesRequest"]],
        ["out", "getJunkEntriesRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getJunkEntriesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getJunkMailSettingsRequest",
      "getJunkMailSettingsRequest",
      [ ["in", "getJunkMailSettingsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getJunkMailSettingsRequest"]],
        ["out", "getJunkMailSettingsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getJunkMailSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getLibraryItemRequest",
      "getLibraryItemRequest",
      [ ["in", "getLibraryItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getLibraryItemRequest"]],
        ["out", "getLibraryItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getLibraryItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getLibraryListRequest",
      "getLibraryListRequest",
      [ ["in", "getLibraryListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getLibraryListRequest"]],
        ["out", "getLibraryListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getLibraryListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getQuickMessagesRequest",
      "getQuickMessagesRequest",
      [ ["in", "getQuickMessagesReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getQuickMessagesRequest"]],
        ["out", "getQuickMessagesRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getQuickMessagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getProxyAccessListRequest",
      "getProxyAccessListRequest",
      [ ["in", "getProxyAccessListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getProxyAccessListRequest"]],
        ["out", "getProxyAccessListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getProxyAccessListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getProxyListRequest",
      "getProxyListRequest",
      [ ["in", "getProxyListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getProxyListRequest"]],
        ["out", "getProxyListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getProxyListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getRuleListRequest",
      "getRuleListRequest",
      [ ["in", "getRuleListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getRuleListRequest"]],
        ["out", "getRuleListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getRuleListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getSettingsRequest",
      "getSettingsRequest",
      [ ["in", "getSettingsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getSettingsRequest"]],
        ["out", "getSettingsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getSignaturesRequest",
      "getSignaturesRequest",
      [ ["in", "getSignaturesReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getSignaturesRequest"]],
        ["out", "getSignaturesRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getSignaturesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getTimestampRequest",
      "getTimestampRequest",
      [ ["in", "getTimestampReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getTimestampRequest"]],
        ["out", "getTimestampRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getTimestampResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getTimezoneListRequest",
      "getTimezoneListRequest",
      [ ["in", "getTimezoneListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getTimezoneListRequest"]],
        ["out", "getTimezoneListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getTimezoneListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getUserListRequest",
      "getUserListRequest",
      [ ["in", "getUserListReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getUserListRequest"]],
        ["out", "getUserListRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "getUserListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "loginRequest",
      "loginRequest",
      [ ["in", "loginReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "loginRequest"]],
        ["out", "loginRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "logoutRequest",
      "logoutRequest",
      [ ["in", "logoutReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "logoutRequest"]],
        ["out", "logoutRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "markPrivateRequest",
      "markPrivateRequest",
      [ ["in", "markPrivateReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markPrivateRequest"]],
        ["out", "markPrivateRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markPrivateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "markReadRequest",
      "markReadRequest",
      [ ["in", "markReadReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markReadRequest"]],
        ["out", "markReadRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markReadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "markUnPrivateRequest",
      "markUnPrivateRequest",
      [ ["in", "markUnPrivateReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markUnPrivateRequest"]],
        ["out", "markUnPrivateRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markUnPrivateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "markUnReadRequest",
      "markUnReadRequest",
      [ ["in", "markUnReadReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markUnReadRequest"]],
        ["out", "markUnReadRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "markUnReadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifyItemRequest",
      "modifyItemRequest",
      [ ["in", "modifyItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyItemRequest"]],
        ["out", "modifyItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifyJunkEntryRequest",
      "modifyJunkEntryRequest",
      [ ["in", "modifyJunkEntryReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyJunkEntryRequest"]],
        ["out", "modifyJunkEntryRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyJunkEntryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifyJunkMailSettingsRequest",
      "modifyJunkMailSettingsRequest",
      [ ["in", "modifyJunkMailSettingsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyJunkMailSettingsRequest"]],
        ["out", "modifyJunkMailSettingsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyJunkMailSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifyPasswordRequest",
      "modifyPasswordRequest",
      [ ["in", "modifyPasswordReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyPasswordRequest"]],
        ["out", "modifyPasswordRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifyProxyAccessRequest",
      "modifyProxyAccessRequest",
      [ ["in", "modifyProxyAccessReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyProxyAccessRequest"]],
        ["out", "modifyProxyAccessRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifyProxyAccessResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifySettingsRequest",
      "modifySettingsRequest",
      [ ["in", "modifySettingsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifySettingsRequest"]],
        ["out", "modifySettingsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifySettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "modifySignaturesRequest",
      "modifySignaturesRequest",
      [ ["in", "modifySignaturesReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifySignaturesRequest"]],
        ["out", "modifySignaturesRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "modifySignaturesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "moveItemRequest",
      "moveItemRequest",
      [ ["in", "moveItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "moveItemRequest"]],
        ["out", "moveItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "moveItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "positionCursorRequest",
      "positionCursorRequest",
      [ ["in", "positionCursorReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "positionCursorRequest"]],
        ["out", "positionCursorRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "positionCursorResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "purgeDeletedItemsRequest",
      "purgeDeletedItemsRequest",
      [ ["in", "purgeDeletedItemsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "purgeDeletedItemsRequest"]],
        ["out", "purgeDeletedItemsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "purgeDeletedItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "purgeRequest",
      "purgeRequest",
      [ ["in", "purgeReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "purgeRequest"]],
        ["out", "purgeRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "purgeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "readCursorRequest",
      "readCursorRequest",
      [ ["in", "readCursorReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "readCursorRequest"]],
        ["out", "readCursorRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "readCursorResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeCustomDefinitionRequest",
      "removeCustomDefinitionRequest",
      [ ["in", "removeCustomDefinitionReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeCustomDefinitionRequest"]],
        ["out", "removeCustomDefinitionRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeCustomDefinitionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeItemRequest",
      "removeItemRequest",
      [ ["in", "removeItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeItemRequest"]],
        ["out", "removeItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeItemsRequest",
      "removeItemsRequest",
      [ ["in", "removeItemsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeItemsRequest"]],
        ["out", "removeItemsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeJunkEntryRequest",
      "removeJunkEntryRequest",
      [ ["in", "removeJunkEntryReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeJunkEntryRequest"]],
        ["out", "removeJunkEntryRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeJunkEntryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeMembersRequest",
      "removeMembersRequest",
      [ ["in", "removeMembersReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeMembersRequest"]],
        ["out", "removeMembersRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeProxyAccessRequest",
      "removeProxyAccessRequest",
      [ ["in", "removeProxyAccessReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeProxyAccessRequest"]],
        ["out", "removeProxyAccessRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeProxyAccessResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeProxyUserRequest",
      "removeProxyUserRequest",
      [ ["in", "removeProxyUserReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeProxyUserRequest"]],
        ["out", "removeProxyUserRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeProxyUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeSignatureRequest",
      "removeSignatureRequest",
      [ ["in", "removeSignatureReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeSignatureRequest"]],
        ["out", "removeSignatureRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "removeSignatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "replyRequest",
      "replyRequest",
      [ ["in", "replyReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "replyRequest"]],
        ["out", "replyRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "replyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "retractRequest",
      "retractRequest",
      [ ["in", "retractReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "retractRequest"]],
        ["out", "retractRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "retractResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "sendItemRequest",
      "sendItemRequest",
      [ ["in", "sendItemReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "sendItemRequest"]],
        ["out", "sendItemRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "sendItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "setTimestampRequest",
      "setTimestampRequest",
      [ ["in", "setTimestampReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "setTimestampRequest"]],
        ["out", "setTimestampRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "setTimestampResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "startFreeBusySessionRequest",
      "startFreeBusySessionRequest",
      [ ["in", "startFreeBusySessionReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "startFreeBusySessionRequest"]],
        ["out", "startFreeBusySessionRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "startFreeBusySessionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "unacceptRequest",
      "unacceptRequest",
      [ ["in", "unacceptReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "unacceptRequest"]],
        ["out", "unacceptRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "unacceptResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "uncompleteRequest",
      "uncompleteRequest",
      [ ["in", "uncompleteReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "uncompleteRequest"]],
        ["out", "uncompleteRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "uncompleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "updateVersionStatusRequest",
      "updateVersionStatusRequest",
      [ ["in", "updateVersionStatusReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "updateVersionStatusRequest"]],
        ["out", "updateVersionStatusRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/methods", "updateVersionStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

class GroupWiseEventsPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:7191"

  Methods = [
    [ "cleanEventConfigurationRequest",
      "cleanEventConfigurationRequest",
      [ ["in", "cleanEventConfigurationReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "cleanEventConfigurationRequest"]],
        ["out", "cleanEventConfigurationRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "cleanEventConfigurationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "configureEventsRequest",
      "configureEventsRequest",
      [ ["in", "configureEventsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "configureEventsRequest"]],
        ["out", "configureEventsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "configureEventsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getEventConfigurationRequest",
      "getEventConfigurationRequest",
      [ ["in", "getEventConfigurationReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "getEventConfigurationRequest"]],
        ["out", "getEventConfigurationRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "getEventConfigurationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "getEventsRequest",
      "getEventsRequest",
      [ ["in", "getEventsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "getEventsRequest"]],
        ["out", "getEventsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "getEventsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeEventConfigurationRequest",
      "removeEventConfigurationRequest",
      [ ["in", "removeEventConfigurationReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "removeEventConfigurationRequest"]],
        ["out", "removeEventConfigurationRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "removeEventConfigurationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "removeEventsRequest",
      "removeEventsRequest",
      [ ["in", "removeEventsReq", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "removeEventsRequest"]],
        ["out", "removeEventsRes", ["::SOAP::SOAPElement", "http://schemas.novell.com/2005/01/GroupWise/events", "removeEventsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
