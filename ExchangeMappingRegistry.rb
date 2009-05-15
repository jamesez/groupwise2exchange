# Converted from the WSDL with wsdl2ruby.

require 'Exchange.rb'
require 'soap/mapping'

module Exchange

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsMessages = "http://schemas.microsoft.com/exchange/services/2006/messages"
  NsNamespace = "http://www.w3.org/XML/1998/namespace"
  NsTypes = "http://schemas.microsoft.com/exchange/services/2006/types"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => Exchange::ResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfResponseMessagesType,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfResponseMessagesType"),
    :schema_element => [ :choice,
      ["createItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateItemResponseMessage")]],
      ["deleteItemResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteItemResponseMessage")]],
      ["getItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetItemResponseMessage")]],
      ["updateItemResponseMessage", ["Exchange::UpdateItemResponseMessageType[]", XSD::QName.new(NsMessages, "UpdateItemResponseMessage")]],
      ["sendItemResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "SendItemResponseMessage")]],
      ["deleteFolderResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteFolderResponseMessage")]],
      ["createFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateFolderResponseMessage")]],
      ["getFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetFolderResponseMessage")]],
      ["findFolderResponseMessage", ["Exchange::FindFolderResponseMessageType[]", XSD::QName.new(NsMessages, "FindFolderResponseMessage")]],
      ["updateFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "UpdateFolderResponseMessage")]],
      ["moveFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "MoveFolderResponseMessage")]],
      ["copyFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CopyFolderResponseMessage")]],
      ["createAttachmentResponseMessage", ["Exchange::AttachmentInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateAttachmentResponseMessage")]],
      ["deleteAttachmentResponseMessage", ["Exchange::DeleteAttachmentResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteAttachmentResponseMessage")]],
      ["getAttachmentResponseMessage", ["Exchange::AttachmentInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetAttachmentResponseMessage")]],
      ["findItemResponseMessage", ["Exchange::FindItemResponseMessageType[]", XSD::QName.new(NsMessages, "FindItemResponseMessage")]],
      ["moveItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "MoveItemResponseMessage")]],
      ["copyItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CopyItemResponseMessage")]],
      ["resolveNamesResponseMessage", ["Exchange::ResolveNamesResponseMessageType[]", XSD::QName.new(NsMessages, "ResolveNamesResponseMessage")]],
      ["expandDLResponseMessage", ["Exchange::ExpandDLResponseMessageType[]", XSD::QName.new(NsMessages, "ExpandDLResponseMessage")]],
      ["getEventsResponseMessage", ["Exchange::GetEventsResponseMessageType[]", XSD::QName.new(NsMessages, "GetEventsResponseMessage")]],
      ["subscribeResponseMessage", ["Exchange::SubscribeResponseMessageType[]", XSD::QName.new(NsMessages, "SubscribeResponseMessage")]],
      ["unsubscribeResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "UnsubscribeResponseMessage")]],
      ["sendNotificationResponseMessage", ["Exchange::SendNotificationResponseMessageType[]", XSD::QName.new(NsMessages, "SendNotificationResponseMessage")]],
      ["syncFolderHierarchyResponseMessage", ["Exchange::SyncFolderHierarchyResponseMessageType[]", XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseMessage")]],
      ["syncFolderItemsResponseMessage", ["Exchange::SyncFolderItemsResponseMessageType[]", XSD::QName.new(NsMessages, "SyncFolderItemsResponseMessage")]],
      ["createManagedFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateManagedFolderResponseMessage")]],
      ["convertIdResponseMessage", ["Exchange::ConvertIdResponseMessageType[]", XSD::QName.new(NsMessages, "ConvertIdResponseMessage")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BaseResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetFolderType,
    :schema_type => XSD::QName.new(NsMessages, "GetFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateFolderType,
    :schema_type => XSD::QName.new(NsMessages, "CreateFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ParentFolderId")]],
      ["folders", ["Exchange::NonEmptyArrayOfFoldersType", XSD::QName.new(NsMessages, "Folders")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindFolderType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      [ :choice,
        ["indexedPageFolderView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageFolderView")]],
        ["fractionalPageFolderView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageFolderView")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FolderInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FolderInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FolderInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["folders", ["Exchange::ArrayOfFoldersType", XSD::QName.new(NsMessages, "Folders")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FolderInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindFolderResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FindFolderResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootFolder", ["Exchange::FindFolderParentType", XSD::QName.new(NsMessages, "RootFolder")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FindFolderResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteFolderType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BaseMoveCopyFolderType,
    :schema_type => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MoveFolderType,
    :schema_type => XSD::QName.new(NsMessages, "MoveFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CopyFolderType,
    :schema_type => XSD::QName.new(NsMessages, "CopyFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateFolderType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderChanges", ["Exchange::NonEmptyArrayOfFolderChangesType", XSD::QName.new(NsMessages, "FolderChanges")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MoveFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "MoveFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CopyFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CopyFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetItemType,
    :schema_type => XSD::QName.new(NsMessages, "GetItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateItemType,
    :schema_type => XSD::QName.new(NsMessages, "CreateItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["items", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsMessages, "Items")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitations") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateItemType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["itemChanges", ["Exchange::NonEmptyArrayOfItemChangesType", XSD::QName.new(NsMessages, "ItemChanges")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ConflictResolution") => "SOAP::SOAPString",
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitationsOrCancellations") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ItemInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ItemInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ItemInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsMessages, "Items")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ItemInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateItemResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ItemInfoResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::UpdateItemResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsMessages, "Items")]],
      ["conflictResults", ["Exchange::ConflictResultsType", XSD::QName.new(NsMessages, "ConflictResults")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateItemResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteItemType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingCancellations") => "SOAP::SOAPString",
      XSD::QName.new(nil, "AffectedTaskOccurrences") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AttachmentInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "AttachmentInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::AttachmentInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["attachments", ["Exchange::ArrayOfAttachmentsType", XSD::QName.new(NsMessages, "Attachments")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AttachmentInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteAttachmentResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::DeleteAttachmentResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootItemId", ["Exchange::RootItemIdType", XSD::QName.new(NsMessages, "RootItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteAttachmentResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BaseMoveCopyItemType,
    :schema_type => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MoveItemType,
    :schema_type => XSD::QName.new(NsMessages, "MoveItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CopyItemType,
    :schema_type => XSD::QName.new(NsMessages, "CopyItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SendItemType,
    :schema_type => XSD::QName.new(NsMessages, "SendItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]],
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "SaveItemToFolder") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SendItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SendItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindItemType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      [ :choice,
        ["indexedPageItemView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageItemView")]],
        ["fractionalPageItemView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageItemView")]],
        ["calendarView", ["Exchange::CalendarViewType", XSD::QName.new(NsMessages, "CalendarView")]],
        ["contactsView", ["Exchange::ContactsViewType", XSD::QName.new(NsMessages, "ContactsView")]]
      ],
      [ :choice,
        ["groupBy", ["Exchange::GroupByType", XSD::QName.new(NsMessages, "GroupBy")]],
        ["distinguishedGroupBy", ["Exchange::DistinguishedGroupByType", XSD::QName.new(NsMessages, "DistinguishedGroupBy")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["sortOrder", ["Exchange::NonEmptyArrayOfFieldOrdersType", XSD::QName.new(NsMessages, "SortOrder")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::CreateAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "CreateAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentItemId", ["Exchange::ItemIdType", XSD::QName.new(NsMessages, "ParentItemId")]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsMessages, "Attachments")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "GetAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["attachmentShape", ["Exchange::AttachmentResponseShapeType", XSD::QName.new(NsMessages, "AttachmentShape")], [0, 1]],
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MoveItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "MoveItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CopyItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CopyItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindItemResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FindItemResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootFolder", ["Exchange::FindItemParentType", XSD::QName.new(NsMessages, "RootFolder")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FindItemResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ResolveNamesType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")], [0, 1]],
      ["unresolvedEntry", [nil, XSD::QName.new(NsMessages, "UnresolvedEntry")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ReturnFullContactData") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "SearchScope") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ResolveNamesResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ResolveNamesResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["resolutionSet", ["Exchange::ArrayOfResolutionType", XSD::QName.new(NsMessages, "ResolutionSet")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ResolveNamesResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ResolveNamesResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExpandDLType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExpandDLResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ExpandDLResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["dLExpansion", ["Exchange::ArrayOfDLExpansionType", XSD::QName.new(NsMessages, "DLExpansion")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString",
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ExpandDLResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExpandDLResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateManagedFolderRequestType,
    :schema_type => XSD::QName.new(NsMessages, "CreateManagedFolderRequestType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderNames", ["Exchange::NonEmptyArrayOfFolderNamesType", XSD::QName.new(NsMessages, "FolderNames")]],
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CreateManagedFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateManagedFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SubscribeType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [ :choice,
      ["pullSubscriptionRequest", ["Exchange::PullSubscriptionRequestType", XSD::QName.new(NsMessages, "PullSubscriptionRequest")]],
      ["pushSubscriptionRequest", ["Exchange::PushSubscriptionRequestType", XSD::QName.new(NsMessages, "PushSubscriptionRequest")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SubscribeResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SubscribeResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")], [0, 1]],
      ["watermark", [nil, XSD::QName.new(NsMessages, "Watermark")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SubscribeResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SubscribeResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UnsubscribeType,
    :schema_type => XSD::QName.new(NsMessages, "UnsubscribeType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UnsubscribeResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UnsubscribeResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetEventsType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]],
      ["watermark", [nil, XSD::QName.new(NsMessages, "Watermark")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetEventsResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::GetEventsResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["notification", ["Exchange::NotificationType", XSD::QName.new(NsMessages, "Notification")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::GetEventsResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetEventsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SendNotificationResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SendNotificationResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["notification", ["Exchange::NotificationType", XSD::QName.new(NsMessages, "Notification")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SendNotificationResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SendNotificationResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SendNotificationResultType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResultType"),
    :schema_element => [
      ["subscriptionStatus", ["Exchange::SubscriptionStatusType", XSD::QName.new(NsMessages, "SubscriptionStatus")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SyncFolderHierarchyResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["includesLastFolderInRange", ["SOAP::SOAPBoolean", XSD::QName.new(NsMessages, "IncludesLastFolderInRange")], [0, 1]],
      ["changes", ["Exchange::SyncFolderHierarchyChangesType", XSD::QName.new(NsMessages, "Changes")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["ignore", ["Exchange::ArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "Ignore")], [0, 1]],
      ["maxChangesReturned", [nil, XSD::QName.new(NsMessages, "MaxChangesReturned")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SyncFolderItemsResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["includesLastItemInRange", ["SOAP::SOAPBoolean", XSD::QName.new(NsMessages, "IncludesLastItemInRange")], [0, 1]],
      ["changes", ["Exchange::SyncFolderItemsChangesType", XSD::QName.new(NsMessages, "Changes")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetUserAvailabilityRequestType,
    :schema_type => XSD::QName.new(NsMessages, "GetUserAvailabilityRequestType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["timeZone", ["Exchange::SerializableTimeZone", XSD::QName.new(NsTypes, "TimeZone")]],
      ["mailboxDataArray", ["Exchange::ArrayOfMailboxData", XSD::QName.new(NsMessages, "MailboxDataArray")]],
      ["freeBusyViewOptions", ["Exchange::FreeBusyViewOptionsType", XSD::QName.new(NsTypes, "FreeBusyViewOptions")], [0, 1]],
      ["suggestionsViewOptions", ["Exchange::SuggestionsViewOptionsType", XSD::QName.new(NsTypes, "SuggestionsViewOptions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FreeBusyResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FreeBusyResponseType"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]],
      ["freeBusyView", ["Exchange::FreeBusyView", XSD::QName.new(NsMessages, "FreeBusyView")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfFreeBusyResponse,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfFreeBusyResponse"),
    :schema_element => [
      ["freeBusyResponse", ["Exchange::FreeBusyResponseType[]", XSD::QName.new(NsMessages, "FreeBusyResponse")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SuggestionsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SuggestionsResponseType"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]],
      ["suggestionDayResultArray", ["Exchange::ArrayOfSuggestionDayResult", XSD::QName.new(NsMessages, "SuggestionDayResultArray")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetUserAvailabilityResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetUserAvailabilityResponseType"),
    :schema_element => [
      ["freeBusyResponseArray", ["Exchange::ArrayOfFreeBusyResponse", XSD::QName.new(NsMessages, "FreeBusyResponseArray")], [0, 1]],
      ["suggestionsResponse", ["Exchange::SuggestionsResponseType", XSD::QName.new(NsMessages, "SuggestionsResponse")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetUserOofSettingsRequest,
    :schema_type => XSD::QName.new(NsMessages, "GetUserOofSettingsRequest"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetUserOofSettingsResponse,
    :schema_type => XSD::QName.new(NsMessages, "GetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")]],
      ["oofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "OofSettings")], [0, 1]],
      ["allowExternalOof", ["Exchange::ExternalAudience", XSD::QName.new(NsMessages, "AllowExternalOof")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SetUserOofSettingsRequest,
    :schema_type => XSD::QName.new(NsMessages, "SetUserOofSettingsRequest"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]],
      ["userOofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "UserOofSettings")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SetUserOofSettingsResponse,
    :schema_type => XSD::QName.new(NsMessages, "SetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ConvertIdType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["sourceIds", ["Exchange::NonEmptyArrayOfAlternateIdsType", XSD::QName.new(NsMessages, "SourceIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DestinationFormat") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ConvertIdResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ConvertIdResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ConvertIdResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["alternateId", ["Exchange::AlternateIdBaseType", XSD::QName.new(NsMessages, "AlternateId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ConvertIdResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GetDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "GetDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IncludePermissions") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "GetDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::GetDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfDelegateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfDelegateUserResponseMessageType"),
    :schema_element => [
      ["delegateUserResponseMessageType", ["Exchange::DelegateUserResponseMessageType[]", XSD::QName.new(NsMessages, "DelegateUserResponseMessageType")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DelegateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "DelegateUserResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::DelegateUserResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["delegateUser", ["Exchange::DelegateUserType", XSD::QName.new(NsMessages, "DelegateUser")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DelegateUserResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AddDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "AddDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "AddDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::AddDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RemoveDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "RemoveDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "RemoveDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::RemoveDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::UpdateDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SidAndAttributesType,
    :schema_type => XSD::QName.new(NsTypes, "SidAndAttributesType"),
    :schema_element => [
      ["securityIdentifier", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SecurityIdentifier")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Attributes") => "SOAP::SOAPUnsignedInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfGroupIdentifiersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfGroupIdentifiersType"),
    :schema_element => [
      ["groupIdentifier", ["Exchange::SidAndAttributesType[]", XSD::QName.new(NsTypes, "GroupIdentifier")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfRestrictedGroupIdentifiersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfRestrictedGroupIdentifiersType"),
    :schema_element => [
      ["restrictedGroupIdentifier", ["Exchange::SidAndAttributesType[]", XSD::QName.new(NsTypes, "RestrictedGroupIdentifier")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SerializedSecurityContextType,
    :schema_type => XSD::QName.new(NsTypes, "SerializedSecurityContextType"),
    :schema_element => [
      ["userSid", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UserSid")]],
      ["groupSids", ["Exchange::NonEmptyArrayOfGroupIdentifiersType", XSD::QName.new(NsTypes, "GroupSids")], [0, 1]],
      ["restrictedGroupSids", ["Exchange::NonEmptyArrayOfRestrictedGroupIdentifiersType", XSD::QName.new(NsTypes, "RestrictedGroupSids")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ConnectingSIDType,
    :schema_type => XSD::QName.new(NsTypes, "ConnectingSIDType"),
    :schema_element => [
      ["principalName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrincipalName")], [0, 1]],
      ["sID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SID")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExchangeImpersonationType,
    :schema_type => XSD::QName.new(NsTypes, "ExchangeImpersonationType"),
    :schema_element => [
      ["connectingSID", ["Exchange::ConnectingSIDType", XSD::QName.new(NsTypes, "ConnectingSID")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ProxySecurityContextType,
    :schema_type => XSD::QName.new(NsTypes, "ProxySecurityContextType")
  )

  EncodedRegistry.register(
    :class => Exchange::BaseEmailAddressType,
    :schema_type => XSD::QName.new(NsTypes, "BaseEmailAddressType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Exchange::EmailAddressType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseEmailAddressType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["emailAddress", [nil, XSD::QName.new(NsTypes, "EmailAddress")], [0, 1]],
      ["routingType", [nil, XSD::QName.new(NsTypes, "RoutingType")], [0, 1]],
      ["mailboxType", ["Exchange::MailboxTypeType", XSD::QName.new(NsTypes, "MailboxType")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfRecipientsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfRecipientsType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType[]", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SingleRecipientType,
    :schema_type => XSD::QName.new(NsTypes, "SingleRecipientType"),
    :schema_element => [ :choice,
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PathToUnindexedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToUnindexedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PathToIndexedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToIndexedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FieldIndex") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PathToExceptionFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToExceptionFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PathToExtendedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToExtendedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "DistinguishedPropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyTag") => nil,
      XSD::QName.new(nil, "PropertyName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyId") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "PropertyType") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfPathsToElementType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfPathsToElementType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType[]", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfPropertyValuesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfPropertyValuesType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "Value")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExtendedPropertyType,
    :schema_type => XSD::QName.new(NsTypes, "ExtendedPropertyType"),
    :schema_element => [
      ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]],
      [ :choice,
        ["value", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Value")]],
        ["values", ["Exchange::NonEmptyArrayOfPropertyValuesType", XSD::QName.new(NsTypes, "Values")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FolderResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "FolderResponseShapeType"),
    :schema_element => [
      ["baseShape", ["Exchange::DefaultShapeNamesType", XSD::QName.new(NsTypes, "BaseShape")]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ItemResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "ItemResponseShapeType"),
    :schema_element => [
      ["baseShape", ["Exchange::DefaultShapeNamesType", XSD::QName.new(NsTypes, "BaseShape")]],
      ["includeMimeContent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IncludeMimeContent")], [0, 1]],
      ["bodyType", ["Exchange::BodyTypeResponseType", XSD::QName.new(NsTypes, "BodyType")], [0, 1]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AttachmentResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentResponseShapeType"),
    :schema_element => [
      ["includeMimeContent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IncludeMimeContent")], [0, 1]],
      ["bodyType", ["Exchange::BodyTypeResponseType", XSD::QName.new(NsTypes, "BodyType")], [0, 1]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ItemChangeDescriptionType,
    :schema_type => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FolderChangeDescriptionType,
    :schema_type => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SetItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "SetItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SetFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "SetFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "DeleteItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeleteFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "DeleteFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AppendToItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "AppendToItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AppendToFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "AppendToFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      [ :choice,
        ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
        ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
        ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
        ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
        ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfItemChangeDescriptionsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfItemChangeDescriptionsType"),
    :schema_element => [ :choice,
      ["appendToItemField", ["Exchange::AppendToItemFieldType[]", XSD::QName.new(NsTypes, "AppendToItemField")]],
      ["setItemField", ["Exchange::SetItemFieldType[]", XSD::QName.new(NsTypes, "SetItemField")]],
      ["deleteItemField", ["Exchange::DeleteItemFieldType[]", XSD::QName.new(NsTypes, "DeleteItemField")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderChangeDescriptionsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderChangeDescriptionsType"),
    :schema_element => [ :choice,
      ["appendToFolderField", ["Exchange::AppendToFolderFieldType[]", XSD::QName.new(NsTypes, "AppendToFolderField")]],
      ["setFolderField", ["Exchange::SetFolderFieldType[]", XSD::QName.new(NsTypes, "SetFolderField")]],
      ["deleteFolderField", ["Exchange::DeleteFolderFieldType[]", XSD::QName.new(NsTypes, "DeleteFolderField")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ItemChangeType,
    :schema_type => XSD::QName.new(NsTypes, "ItemChangeType"),
    :schema_element => [
      [ :choice,
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
        ["occurrenceItemId", ["Exchange::OccurrenceItemIdType", XSD::QName.new(NsTypes, "OccurrenceItemId")]],
        ["recurringMasterItemId", ["Exchange::RecurringMasterItemIdType", XSD::QName.new(NsTypes, "RecurringMasterItemId")]]
      ],
      ["updates", ["Exchange::NonEmptyArrayOfItemChangeDescriptionsType", XSD::QName.new(NsTypes, "Updates")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfItemChangesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfItemChangesType"),
    :schema_element => [
      ["itemChange", ["Exchange::ItemChangeType[]", XSD::QName.new(NsTypes, "ItemChange")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::InternetHeaderType,
    :schema_type => XSD::QName.new(NsTypes, "InternetHeaderType"),
    :schema_attribute => {
      XSD::QName.new(nil, "HeaderName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfInternetHeadersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfInternetHeadersType"),
    :schema_element => [
      ["internetMessageHeader", ["Exchange::InternetHeaderType[]", XSD::QName.new(NsTypes, "InternetMessageHeader")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RequestAttachmentIdType,
    :schema_type => XSD::QName.new(NsTypes, "RequestAttachmentIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AttachmentIdType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RequestAttachmentIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::RootItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "RootItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "RootItemId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfRequestAttachmentIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfRequestAttachmentIdsType"),
    :schema_element => [
      ["attachmentId", ["Exchange::RequestAttachmentIdType[]", XSD::QName.new(NsTypes, "AttachmentId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ItemAttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "ItemAttachmentType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [ :choice,
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsCreateOrUpdateType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsCreateOrUpdateType"),
    :schema_element => [ :choice,
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FileAttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "FileAttachmentType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]],
      ["content", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "Content")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfAttachmentsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfAttachmentsType"),
    :schema_element => [ :choice,
      ["itemAttachment", ["Exchange::ItemAttachmentType[]", XSD::QName.new(NsTypes, "ItemAttachment")]],
      ["fileAttachment", ["Exchange::FileAttachmentType[]", XSD::QName.new(NsTypes, "FileAttachment")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfAttachmentsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAttachmentsType"),
    :schema_element => [ :choice,
      ["itemAttachment", ["Exchange::ItemAttachmentType[]", XSD::QName.new(NsTypes, "ItemAttachment")]],
      ["fileAttachment", ["Exchange::FileAttachmentType[]", XSD::QName.new(NsTypes, "FileAttachment")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BodyType,
    :schema_type => XSD::QName.new(NsTypes, "BodyType"),
    :schema_attribute => {
      XSD::QName.new(nil, "BodyType") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DistinguishedFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedFolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderIdType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "FolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfBaseFolderIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfBaseFolderIdsType"),
    :schema_element => [ :choice,
      ["folderId", ["Exchange::FolderIdType[]", XSD::QName.new(NsTypes, "FolderId")]],
      ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType[]", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::TargetFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "TargetFolderIdType"),
    :schema_element => [ :choice,
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
      ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FindFolderParentType,
    :schema_type => XSD::QName.new(NsTypes, "FindFolderParentType"),
    :schema_element => [
      ["folders", ["Exchange::ArrayOfFoldersType", XSD::QName.new(NsTypes, "Folders")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ManagedFolderInformationType,
    :schema_type => XSD::QName.new(NsTypes, "ManagedFolderInformationType"),
    :schema_element => [
      ["canDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanDelete")], [0, 1]],
      ["canRenameOrMove", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanRenameOrMove")], [0, 1]],
      ["mustDisplayComment", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MustDisplayComment")], [0, 1]],
      ["hasQuota", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasQuota")], [0, 1]],
      ["isManagedFoldersRoot", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsManagedFoldersRoot")], [0, 1]],
      ["managedFolderId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ManagedFolderId")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Comment")], [0, 1]],
      ["storageQuota", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "StorageQuota")], [0, 1]],
      ["folderSize", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "FolderSize")], [0, 1]],
      ["homePage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "HomePage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FolderType,
    :schema_type => XSD::QName.new(NsTypes, "FolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarFolderType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::CalendarPermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ContactsFolderType,
    :schema_type => XSD::QName.new(NsTypes, "ContactsFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SearchFolderType,
    :schema_type => XSD::QName.new(NsTypes, "SearchFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]],
      ["searchParameters", ["Exchange::SearchParametersType", XSD::QName.new(NsTypes, "SearchParameters")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::TasksFolderType,
    :schema_type => XSD::QName.new(NsTypes, "TasksFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfFoldersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFoldersType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType[]", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType[]", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType[]", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType[]", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType[]", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfFoldersType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfFoldersType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType[]", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType[]", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType[]", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType[]", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType[]", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "ItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfBaseItemIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfBaseItemIdsType"),
    :schema_element => [ :choice,
      ["itemId", ["Exchange::ItemIdType[]", XSD::QName.new(NsTypes, "ItemId")]],
      ["occurrenceItemId", ["Exchange::OccurrenceItemIdType[]", XSD::QName.new(NsTypes, "OccurrenceItemId")]],
      ["recurringMasterItemId", ["Exchange::RecurringMasterItemIdType[]", XSD::QName.new(NsTypes, "RecurringMasterItemId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfBaseItemIdsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfBaseItemIdsType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType[]", XSD::QName.new(NsTypes, "ItemId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfResponseObjectsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfResponseObjectsType"),
    :schema_element => [ :choice,
      ["acceptItem", ["Exchange::AcceptItemType[]", XSD::QName.new(NsTypes, "AcceptItem")]],
      ["tentativelyAcceptItem", ["Exchange::TentativelyAcceptItemType[]", XSD::QName.new(NsTypes, "TentativelyAcceptItem")]],
      ["declineItem", ["Exchange::DeclineItemType[]", XSD::QName.new(NsTypes, "DeclineItem")]],
      ["replyToItem", ["Exchange::ReplyToItemType[]", XSD::QName.new(NsTypes, "ReplyToItem")]],
      ["forwardItem", ["Exchange::ForwardItemType[]", XSD::QName.new(NsTypes, "ForwardItem")]],
      ["replyAllToItem", ["Exchange::ReplyAllToItemType[]", XSD::QName.new(NsTypes, "ReplyAllToItem")]],
      ["cancelCalendarItem", ["Exchange::CancelCalendarItemType[]", XSD::QName.new(NsTypes, "CancelCalendarItem")]],
      ["removeItem", ["Exchange::RemoveItemType[]", XSD::QName.new(NsTypes, "RemoveItem")]],
      ["suppressReadReceipt", ["Exchange::SuppressReadReceiptType[]", XSD::QName.new(NsTypes, "SuppressReadReceipt")]],
      ["postReplyItem", ["Exchange::PostReplyItemType[]", XSD::QName.new(NsTypes, "PostReplyItem")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FolderChangeType,
    :schema_type => XSD::QName.new(NsTypes, "FolderChangeType"),
    :schema_element => [
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
      ],
      ["updates", ["Exchange::NonEmptyArrayOfFolderChangeDescriptionsType", XSD::QName.new(NsTypes, "Updates")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderChangesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderChangesType"),
    :schema_element => [
      ["folderChange", ["Exchange::FolderChangeType[]", XSD::QName.new(NsTypes, "FolderChange")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::WellKnownResponseObjectType,
    :schema_type => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SmartResponseBaseType,
    :schema_type => XSD::QName.new(NsTypes, "SmartResponseBaseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SmartResponseType,
    :schema_type => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseBaseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ReplyToItemType,
    :schema_type => XSD::QName.new(NsTypes, "ReplyToItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ReplyAllToItemType,
    :schema_type => XSD::QName.new(NsTypes, "ReplyAllToItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ForwardItemType,
    :schema_type => XSD::QName.new(NsTypes, "ForwardItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::CancelCalendarItemType,
    :schema_type => XSD::QName.new(NsTypes, "CancelCalendarItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ReferenceItemResponseType,
    :schema_type => XSD::QName.new(NsTypes, "ReferenceItemResponseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::SuppressReadReceiptType,
    :schema_type => XSD::QName.new(NsTypes, "SuppressReadReceiptType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ReferenceItemResponseType"),
    :schema_element => [
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FindItemParentType,
    :schema_type => XSD::QName.new(NsTypes, "FindItemParentType"),
    :schema_element => [ :choice,
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsTypes, "Items")]],
      ["groups", ["Exchange::ArrayOfGroupedItemsType", XSD::QName.new(NsTypes, "Groups")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ItemType,
    :schema_type => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfStringsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfStringsType"),
    :schema_element => [
      ["string", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "String")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfRealItemsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfRealItemsType"),
    :schema_element => [
      [
        ["item", ["Exchange::ItemType[]", XSD::QName.new(NsTypes, "Item")]],
        ["message", ["Exchange::MessageType[]", XSD::QName.new(NsTypes, "Message")]],
        ["calendarItem", ["Exchange::CalendarItemType[]", XSD::QName.new(NsTypes, "CalendarItem")]],
        ["contact", ["Exchange::ContactItemType[]", XSD::QName.new(NsTypes, "Contact")]],
        ["distributionList", ["Exchange::DistributionListType[]", XSD::QName.new(NsTypes, "DistributionList")]],
        ["meetingMessage", ["Exchange::MeetingMessageType[]", XSD::QName.new(NsTypes, "MeetingMessage")]],
        ["meetingRequest", ["Exchange::MeetingRequestMessageType[]", XSD::QName.new(NsTypes, "MeetingRequest")]],
        ["meetingResponse", ["Exchange::MeetingResponseMessageType[]", XSD::QName.new(NsTypes, "MeetingResponse")]],
        ["meetingCancellation", ["Exchange::MeetingCancellationMessageType[]", XSD::QName.new(NsTypes, "MeetingCancellation")]],
        ["task", ["Exchange::TaskType[]", XSD::QName.new(NsTypes, "Task")]],
        ["postItem", ["Exchange::PostItemType[]", XSD::QName.new(NsTypes, "PostItem")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfAllItemsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAllItemsType"),
    :schema_element => [
      [
        ["item", ["Exchange::ItemType[]", XSD::QName.new(NsTypes, "Item")]],
        ["message", ["Exchange::MessageType[]", XSD::QName.new(NsTypes, "Message")]],
        ["calendarItem", ["Exchange::CalendarItemType[]", XSD::QName.new(NsTypes, "CalendarItem")]],
        ["contact", ["Exchange::ContactItemType[]", XSD::QName.new(NsTypes, "Contact")]],
        ["distributionList", ["Exchange::DistributionListType[]", XSD::QName.new(NsTypes, "DistributionList")]],
        ["meetingMessage", ["Exchange::MeetingMessageType[]", XSD::QName.new(NsTypes, "MeetingMessage")]],
        ["meetingRequest", ["Exchange::MeetingRequestMessageType[]", XSD::QName.new(NsTypes, "MeetingRequest")]],
        ["meetingResponse", ["Exchange::MeetingResponseMessageType[]", XSD::QName.new(NsTypes, "MeetingResponse")]],
        ["meetingCancellation", ["Exchange::MeetingCancellationMessageType[]", XSD::QName.new(NsTypes, "MeetingCancellation")]],
        ["task", ["Exchange::TaskType[]", XSD::QName.new(NsTypes, "Task")]],
        ["postItem", ["Exchange::PostItemType[]", XSD::QName.new(NsTypes, "PostItem")]],
        ["replyToItem", ["Exchange::ReplyToItemType[]", XSD::QName.new(NsTypes, "ReplyToItem")]],
        ["forwardItem", ["Exchange::ForwardItemType[]", XSD::QName.new(NsTypes, "ForwardItem")]],
        ["replyAllToItem", ["Exchange::ReplyAllToItemType[]", XSD::QName.new(NsTypes, "ReplyAllToItem")]],
        ["acceptItem", ["Exchange::AcceptItemType[]", XSD::QName.new(NsTypes, "AcceptItem")]],
        ["tentativelyAcceptItem", ["Exchange::TentativelyAcceptItemType[]", XSD::QName.new(NsTypes, "TentativelyAcceptItem")]],
        ["declineItem", ["Exchange::DeclineItemType[]", XSD::QName.new(NsTypes, "DeclineItem")]],
        ["cancelCalendarItem", ["Exchange::CancelCalendarItemType[]", XSD::QName.new(NsTypes, "CancelCalendarItem")]],
        ["removeItem", ["Exchange::RemoveItemType[]", XSD::QName.new(NsTypes, "RemoveItem")]],
        ["suppressReadReceipt", ["Exchange::SuppressReadReceiptType[]", XSD::QName.new(NsTypes, "SuppressReadReceipt")]],
        ["postReplyItem", ["Exchange::PostReplyItemType[]", XSD::QName.new(NsTypes, "PostReplyItem")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AcceptItemType,
    :schema_type => XSD::QName.new(NsTypes, "AcceptItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::TentativelyAcceptItemType,
    :schema_type => XSD::QName.new(NsTypes, "TentativelyAcceptItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DeclineItemType,
    :schema_type => XSD::QName.new(NsTypes, "DeclineItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::RemoveItemType,
    :schema_type => XSD::QName.new(NsTypes, "RemoveItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PostReplyItemBaseType,
    :schema_type => XSD::QName.new(NsTypes, "PostReplyItemBaseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PostReplyItemType,
    :schema_type => XSD::QName.new(NsTypes, "PostReplyItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "PostReplyItemBaseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::MimeContentType,
    :schema_type => XSD::QName.new(NsTypes, "MimeContentType"),
    :schema_attribute => {
      XSD::QName.new(nil, "CharacterSet") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::MessageType,
    :schema_type => XSD::QName.new(NsTypes, "MessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::TaskType,
    :schema_type => XSD::QName.new(NsTypes, "TaskType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["actualWork", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ActualWork")], [0, 1]],
      ["assignedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AssignedTime")], [0, 1]],
      ["billingInformation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "BillingInformation")], [0, 1]],
      ["changeCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChangeCount")], [0, 1]],
      ["companies", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Companies")], [0, 1]],
      ["completeDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "CompleteDate")], [0, 1]],
      ["contacts", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Contacts")], [0, 1]],
      ["delegationState", ["Exchange::TaskDelegateStateType", XSD::QName.new(NsTypes, "DelegationState")], [0, 1]],
      ["delegator", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Delegator")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DueDate")], [0, 1]],
      ["isAssignmentEditable", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "IsAssignmentEditable")], [0, 1]],
      ["isComplete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsComplete")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["isTeamTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsTeamTask")], [0, 1]],
      ["mileage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Mileage")], [0, 1]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Owner")], [0, 1]],
      ["percentComplete", ["SOAP::SOAPDouble", XSD::QName.new(NsTypes, "PercentComplete")], [0, 1]],
      ["recurrence", ["Exchange::TaskRecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartDate")], [0, 1]],
      ["status", ["Exchange::TaskStatusType", XSD::QName.new(NsTypes, "Status")], [0, 1]],
      ["statusDescription", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "StatusDescription")], [0, 1]],
      ["totalWork", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalWork")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PostItemType,
    :schema_type => XSD::QName.new(NsTypes, "PostItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["postedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "PostedTime")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IndexedPageViewType,
    :schema_type => XSD::QName.new(NsTypes, "IndexedPageViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Offset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "BasePoint") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::FractionalPageViewType,
    :schema_type => XSD::QName.new(NsTypes, "FractionalPageViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Numerator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Denominator") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarViewType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "StartDate") => "SOAP::SOAPDateTime",
      XSD::QName.new(nil, "EndDate") => "SOAP::SOAPDateTime"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ContactsViewType,
    :schema_type => XSD::QName.new(NsTypes, "ContactsViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "InitialName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FinalName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ResolutionType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfResolutionType"),
    :schema_element => [
      ["resolution", ["Exchange::ResolutionType[]", XSD::QName.new(NsTypes, "Resolution")], [0, 100]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfDLExpansionType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDLExpansionType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType[]", XSD::QName.new(NsTypes, "Mailbox")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AttendeeType,
    :schema_type => XSD::QName.new(NsTypes, "AttendeeType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["lastResponseTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastResponseTime")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfAttendeesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAttendeesType"),
    :schema_element => [
      ["attendee", ["Exchange::AttendeeType[]", XSD::QName.new(NsTypes, "Attendee")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::OccurrenceItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "RecurringMasterId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString",
      XSD::QName.new(nil, "InstanceIndex") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::RecurringMasterItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "RecurringMasterItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "OccurrenceId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DailyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "DailyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::WeeklyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "WeeklyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MonthlyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "MonthlyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::YearlyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "YearlyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RelativeYearlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "RelativeYearlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrencePatternBaseType"),
    :schema_element => [
      ["daysOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DaysOfWeek")]],
      ["dayOfWeekIndex", ["Exchange::DayOfWeekIndexType", XSD::QName.new(NsTypes, "DayOfWeekIndex")]],
      ["month", ["Exchange::MonthNamesType", XSD::QName.new(NsTypes, "Month")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AbsoluteYearlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrencePatternBaseType"),
    :schema_element => [
      ["dayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "DayOfMonth")]],
      ["month", ["Exchange::MonthNamesType", XSD::QName.new(NsTypes, "Month")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RelativeMonthlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "RelativeMonthlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["daysOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DaysOfWeek")]],
      ["dayOfWeekIndex", ["Exchange::DayOfWeekIndexType", XSD::QName.new(NsTypes, "DayOfWeekIndex")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AbsoluteMonthlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["dayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "DayOfMonth")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::WeeklyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "WeeklyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["daysOfWeek", [nil, XSD::QName.new(NsTypes, "DaysOfWeek")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DailyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "DailyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::TimeChangeType,
    :schema_type => XSD::QName.new(NsTypes, "TimeChangeType"),
    :schema_element => [
      ["offset", ["SOAP::SOAPDuration", XSD::QName.new(NsTypes, "Offset")]],
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "AbsoluteDate")]]
      ],
      ["time", ["SOAP::SOAPTime", XSD::QName.new(NsTypes, "Time")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "TimeZoneName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::TimeZoneType,
    :schema_type => XSD::QName.new(NsTypes, "TimeZoneType"),
    :schema_element => [
      ["baseOffset", ["SOAP::SOAPDuration", XSD::QName.new(NsTypes, "BaseOffset")]],
      [
        ["standard", ["Exchange::TimeChangeType", XSD::QName.new(NsTypes, "Standard")]],
        ["daylight", ["Exchange::TimeChangeType", XSD::QName.new(NsTypes, "Daylight")]]
      ]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "TimeZoneName") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NoEndRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "NoEndRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::EndDateRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "EndDateRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "EndDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NumberedRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "NumberedRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]],
      ["numberOfOccurrences", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfOccurrences")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RecurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceType"),
    :schema_element => [
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteYearlyRecurrence", ["Exchange::AbsoluteYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrence")]],
        ["relativeMonthlyRecurrence", ["Exchange::RelativeMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeMonthlyRecurrence")]],
        ["absoluteMonthlyRecurrence", ["Exchange::AbsoluteMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrence")]],
        ["weeklyRecurrence", ["Exchange::WeeklyRecurrencePatternType", XSD::QName.new(NsTypes, "WeeklyRecurrence")]],
        ["dailyRecurrence", ["Exchange::DailyRecurrencePatternType", XSD::QName.new(NsTypes, "DailyRecurrence")]]
      ],
      [ :choice,
        ["noEndRecurrence", ["Exchange::NoEndRecurrenceRangeType", XSD::QName.new(NsTypes, "NoEndRecurrence")]],
        ["endDateRecurrence", ["Exchange::EndDateRecurrenceRangeType", XSD::QName.new(NsTypes, "EndDateRecurrence")]],
        ["numberedRecurrence", ["Exchange::NumberedRecurrenceRangeType", XSD::QName.new(NsTypes, "NumberedRecurrence")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::TaskRecurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "TaskRecurrenceType"),
    :schema_element => [
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteYearlyRecurrence", ["Exchange::AbsoluteYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrence")]],
        ["relativeMonthlyRecurrence", ["Exchange::RelativeMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeMonthlyRecurrence")]],
        ["absoluteMonthlyRecurrence", ["Exchange::AbsoluteMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrence")]],
        ["weeklyRecurrence", ["Exchange::WeeklyRecurrencePatternType", XSD::QName.new(NsTypes, "WeeklyRecurrence")]],
        ["dailyRecurrence", ["Exchange::DailyRecurrencePatternType", XSD::QName.new(NsTypes, "DailyRecurrence")]],
        ["dailyRegeneration", ["Exchange::DailyRegeneratingPatternType", XSD::QName.new(NsTypes, "DailyRegeneration")]],
        ["weeklyRegeneration", ["Exchange::WeeklyRegeneratingPatternType", XSD::QName.new(NsTypes, "WeeklyRegeneration")]],
        ["monthlyRegeneration", ["Exchange::MonthlyRegeneratingPatternType", XSD::QName.new(NsTypes, "MonthlyRegeneration")]],
        ["yearlyRegeneration", ["Exchange::YearlyRegeneratingPatternType", XSD::QName.new(NsTypes, "YearlyRegeneration")]]
      ],
      [ :choice,
        ["noEndRecurrence", ["Exchange::NoEndRecurrenceRangeType", XSD::QName.new(NsTypes, "NoEndRecurrence")]],
        ["endDateRecurrence", ["Exchange::EndDateRecurrenceRangeType", XSD::QName.new(NsTypes, "EndDateRecurrence")]],
        ["numberedRecurrence", ["Exchange::NumberedRecurrenceRangeType", XSD::QName.new(NsTypes, "NumberedRecurrence")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::OccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceInfoType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfOccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfOccurrenceInfoType"),
    :schema_element => [
      ["occurrence", ["Exchange::OccurrenceInfoType[]", XSD::QName.new(NsTypes, "Occurrence")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DeletedOccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "DeletedOccurrenceInfoType"),
    :schema_element => [
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfDeletedOccurrencesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfDeletedOccurrencesType"),
    :schema_element => [
      ["deletedOccurrence", ["Exchange::DeletedOccurrenceInfoType[]", XSD::QName.new(NsTypes, "DeletedOccurrence")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarItemType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")], [0, 1]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")], [0, 1]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsAllDayEvent")], [0, 1]],
      ["legacyFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "LegacyFreeBusyStatus")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["v_when", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "When")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsCancelled")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["meetingRequestWasSent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MeetingRequestWasSent")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["calendarItemType", ["Exchange::CalendarItemTypeType", XSD::QName.new(NsTypes, "CalendarItemType")], [0, 1]],
      ["myResponseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "MyResponseType")], [0, 1]],
      ["organizer", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Organizer")], [0, 1]],
      ["requiredAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "RequiredAttendees")], [0, 1]],
      ["optionalAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "OptionalAttendees")], [0, 1]],
      ["resources", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "Resources")], [0, 1]],
      ["conflictingMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConflictingMeetingCount")], [0, 1]],
      ["adjacentMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AdjacentMeetingCount")], [0, 1]],
      ["conflictingMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "ConflictingMeetings")], [0, 1]],
      ["adjacentMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "AdjacentMeetings")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "TimeZone")], [0, 1]],
      ["appointmentReplyTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AppointmentReplyTime")], [0, 1]],
      ["appointmentSequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentSequenceNumber")], [0, 1]],
      ["appointmentState", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentState")], [0, 1]],
      ["recurrence", ["Exchange::RecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["firstOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "FirstOccurrence")], [0, 1]],
      ["lastOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "LastOccurrence")], [0, 1]],
      ["modifiedOccurrences", ["Exchange::NonEmptyArrayOfOccurrenceInfoType", XSD::QName.new(NsTypes, "ModifiedOccurrences")], [0, 1]],
      ["deletedOccurrences", ["Exchange::NonEmptyArrayOfDeletedOccurrencesType", XSD::QName.new(NsTypes, "DeletedOccurrences")], [0, 1]],
      ["meetingTimeZone", ["Exchange::TimeZoneType", XSD::QName.new(NsTypes, "MeetingTimeZone")], [0, 1]],
      ["conferenceType", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConferenceType")], [0, 1]],
      ["allowNewTimeProposal", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "AllowNewTimeProposal")], [0, 1]],
      ["isOnlineMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOnlineMeeting")], [0, 1]],
      ["meetingWorkspaceUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MeetingWorkspaceUrl")], [0, 1]],
      ["netShowUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "NetShowUrl")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingRequestMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingRequestMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]],
      ["meetingRequestType", ["Exchange::MeetingRequestTypeType", XSD::QName.new(NsTypes, "MeetingRequestType")], [0, 1]],
      ["intendedFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "IntendedFreeBusyStatus")], [0, 1]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")], [0, 1]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")], [0, 1]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsAllDayEvent")], [0, 1]],
      ["legacyFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "LegacyFreeBusyStatus")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["v_when", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "When")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsCancelled")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["meetingRequestWasSent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MeetingRequestWasSent")], [0, 1]],
      ["calendarItemType", ["Exchange::CalendarItemTypeType", XSD::QName.new(NsTypes, "CalendarItemType")], [0, 1]],
      ["myResponseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "MyResponseType")], [0, 1]],
      ["organizer", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Organizer")], [0, 1]],
      ["requiredAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "RequiredAttendees")], [0, 1]],
      ["optionalAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "OptionalAttendees")], [0, 1]],
      ["resources", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "Resources")], [0, 1]],
      ["conflictingMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConflictingMeetingCount")], [0, 1]],
      ["adjacentMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AdjacentMeetingCount")], [0, 1]],
      ["conflictingMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "ConflictingMeetings")], [0, 1]],
      ["adjacentMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "AdjacentMeetings")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "TimeZone")], [0, 1]],
      ["appointmentReplyTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AppointmentReplyTime")], [0, 1]],
      ["appointmentSequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentSequenceNumber")], [0, 1]],
      ["appointmentState", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentState")], [0, 1]],
      ["recurrence", ["Exchange::RecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["firstOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "FirstOccurrence")], [0, 1]],
      ["lastOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "LastOccurrence")], [0, 1]],
      ["modifiedOccurrences", ["Exchange::NonEmptyArrayOfOccurrenceInfoType", XSD::QName.new(NsTypes, "ModifiedOccurrences")], [0, 1]],
      ["deletedOccurrences", ["Exchange::NonEmptyArrayOfDeletedOccurrencesType", XSD::QName.new(NsTypes, "DeletedOccurrences")], [0, 1]],
      ["meetingTimeZone", ["Exchange::TimeZoneType", XSD::QName.new(NsTypes, "MeetingTimeZone")], [0, 1]],
      ["conferenceType", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConferenceType")], [0, 1]],
      ["allowNewTimeProposal", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "AllowNewTimeProposal")], [0, 1]],
      ["isOnlineMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOnlineMeeting")], [0, 1]],
      ["meetingWorkspaceUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MeetingWorkspaceUrl")], [0, 1]],
      ["netShowUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "NetShowUrl")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingResponseMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingCancellationMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingCancellationMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CompleteNameType,
    :schema_type => XSD::QName.new(NsTypes, "CompleteNameType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Title")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FirstName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MiddleName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastName")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Suffix")], [0, 1]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Initials")], [0, 1]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FullName")], [0, 1]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Nickname")], [0, 1]],
      ["yomiFirstName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "YomiFirstName")], [0, 1]],
      ["yomiLastName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "YomiLastName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ImAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::EmailAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PhoneNumberDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::PhysicalAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressDictionaryEntryType"),
    :schema_element => [
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "State")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "CountryOrRegion")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PostalCode")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ImAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::ImAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::EmailAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::EmailAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PhoneNumberDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::PhoneNumberDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PhysicalAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::PhysicalAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ContactItemType,
    :schema_type => XSD::QName.new(NsTypes, "ContactItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["fileAs", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FileAs")], [0, 1]],
      ["fileAsMapping", ["Exchange::FileAsMappingType", XSD::QName.new(NsTypes, "FileAsMapping")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GivenName")], [0, 1]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Initials")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MiddleName")], [0, 1]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Nickname")], [0, 1]],
      ["completeName", ["Exchange::CompleteNameType", XSD::QName.new(NsTypes, "CompleteName")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "CompanyName")], [0, 1]],
      ["emailAddresses", ["Exchange::EmailAddressDictionaryType", XSD::QName.new(NsTypes, "EmailAddresses")], [0, 1]],
      ["physicalAddresses", ["Exchange::PhysicalAddressDictionaryType", XSD::QName.new(NsTypes, "PhysicalAddresses")], [0, 1]],
      ["phoneNumbers", ["Exchange::PhoneNumberDictionaryType", XSD::QName.new(NsTypes, "PhoneNumbers")], [0, 1]],
      ["assistantName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "AssistantName")], [0, 1]],
      ["birthday", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Birthday")], [0, 1]],
      ["businessHomePage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsTypes, "BusinessHomePage")], [0, 1]],
      ["children", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Children")], [0, 1]],
      ["companies", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Companies")], [0, 1]],
      ["contactSource", ["Exchange::ContactSourceType", XSD::QName.new(NsTypes, "ContactSource")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Department")], [0, 1]],
      ["generation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Generation")], [0, 1]],
      ["imAddresses", ["Exchange::ImAddressDictionaryType", XSD::QName.new(NsTypes, "ImAddresses")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "JobTitle")], [0, 1]],
      ["manager", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Manager")], [0, 1]],
      ["mileage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Mileage")], [0, 1]],
      ["officeLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "OfficeLocation")], [0, 1]],
      ["postalAddressIndex", ["Exchange::PhysicalAddressIndexType", XSD::QName.new(NsTypes, "PostalAddressIndex")], [0, 1]],
      ["profession", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Profession")], [0, 1]],
      ["spouseName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SpouseName")], [0, 1]],
      ["surname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Surname")], [0, 1]],
      ["weddingAnniversary", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "WeddingAnniversary")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DistributionListType,
    :schema_type => XSD::QName.new(NsTypes, "DistributionListType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["fileAs", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FileAs")], [0, 1]],
      ["contactSource", ["Exchange::ContactSourceType", XSD::QName.new(NsTypes, "ContactSource")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SearchParametersType,
    :schema_type => XSD::QName.new(NsTypes, "SearchParametersType"),
    :schema_element => [
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsTypes, "Restriction")]],
      ["baseFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "BaseFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ConstantValueType,
    :schema_type => XSD::QName.new(NsTypes, "ConstantValueType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Value") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AggregateOnType,
    :schema_type => XSD::QName.new(NsTypes, "AggregateOnType"),
    :schema_element => [ :choice,
      ["fieldURI", ["Exchange::PathToUnindexedFieldType", XSD::QName.new(NsTypes, "FieldURI")]],
      ["indexedFieldURI", ["Exchange::PathToIndexedFieldType", XSD::QName.new(NsTypes, "IndexedFieldURI")]],
      ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Aggregate") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::GroupByType,
    :schema_type => XSD::QName.new(NsTypes, "GroupByType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseGroupByType"),
    :schema_element => [
      [ :choice,
        ["fieldURI", ["Exchange::PathToUnindexedFieldType", XSD::QName.new(NsTypes, "FieldURI")]],
        ["indexedFieldURI", ["Exchange::PathToIndexedFieldType", XSD::QName.new(NsTypes, "IndexedFieldURI")]],
        ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]]
      ],
      ["aggregateOn", ["Exchange::AggregateOnType", XSD::QName.new(NsTypes, "AggregateOn")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::DistinguishedGroupByType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedGroupByType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseGroupByType"),
    :schema_element => [
      ["standardGroupBy", ["Exchange::StandardGroupByType", XSD::QName.new(NsTypes, "StandardGroupBy")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::GroupedItemsType,
    :schema_type => XSD::QName.new(NsTypes, "GroupedItemsType"),
    :schema_element => [
      ["groupIndex", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GroupIndex")]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsTypes, "Items")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfGroupedItemsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfGroupedItemsType"),
    :schema_element => [
      ["groupedItems", ["Exchange::GroupedItemsType[]", XSD::QName.new(NsTypes, "GroupedItems")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExistsType,
    :schema_type => XSD::QName.new(NsTypes, "ExistsType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FieldURIOrConstantType,
    :schema_type => XSD::QName.new(NsTypes, "FieldURIOrConstantType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["constant", ["Exchange::ConstantValueType", XSD::QName.new(NsTypes, "Constant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ExcludesValueType,
    :schema_type => XSD::QName.new(NsTypes, "ExcludesValueType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Value") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::ExcludesType,
    :schema_type => XSD::QName.new(NsTypes, "ExcludesType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["bitmask", ["Exchange::ExcludesValueType", XSD::QName.new(NsTypes, "Bitmask")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsNotEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsNotEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsGreaterThanType,
    :schema_type => XSD::QName.new(NsTypes, "IsGreaterThanType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsGreaterThanOrEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsGreaterThanOrEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsLessThanType,
    :schema_type => XSD::QName.new(NsTypes, "IsLessThanType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::IsLessThanOrEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsLessThanOrEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ContainsExpressionType,
    :schema_type => XSD::QName.new(NsTypes, "ContainsExpressionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["constant", ["Exchange::ConstantValueType", XSD::QName.new(NsTypes, "Constant")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ContainmentMode") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ContainmentComparison") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NotType,
    :schema_type => XSD::QName.new(NsTypes, "NotType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType", XSD::QName.new(NsTypes, "SearchExpression")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::AndType,
    :schema_type => XSD::QName.new(NsTypes, "AndType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MultipleOperandBooleanExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::OrType,
    :schema_type => XSD::QName.new(NsTypes, "OrType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MultipleOperandBooleanExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::RestrictionType,
    :schema_type => XSD::QName.new(NsTypes, "RestrictionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType", XSD::QName.new(NsTypes, "SearchExpression")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FieldOrderType,
    :schema_type => XSD::QName.new(NsTypes, "FieldOrderType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfFieldOrdersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFieldOrdersType"),
    :schema_element => [
      ["fieldOrder", ["Exchange::FieldOrderType[]", XSD::QName.new(NsTypes, "FieldOrder")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderNamesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderNamesType"),
    :schema_element => [
      ["folderName", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "FolderName")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BaseNotificationEventType,
    :schema_type => XSD::QName.new(NsTypes, "BaseNotificationEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::BaseObjectChangedEventType,
    :schema_type => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseNotificationEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ModifiedEventType,
    :schema_type => XSD::QName.new(NsTypes, "ModifiedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MovedCopiedEventType,
    :schema_type => XSD::QName.new(NsTypes, "MovedCopiedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]],
      [ :choice,
        ["oldFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "OldFolderId")]],
        ["oldItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "OldItemId")]]
      ],
      ["oldParentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "OldParentFolderId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NotificationType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsTypes, "SubscriptionId")]],
      ["previousWatermark", [nil, XSD::QName.new(NsTypes, "PreviousWatermark")]],
      ["moreEvents", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MoreEvents")]],
      [
        ["copiedEvent", ["Exchange::MovedCopiedEventType[]", XSD::QName.new(NsTypes, "CopiedEvent")]],
        ["createdEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "CreatedEvent")]],
        ["deletedEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "DeletedEvent")]],
        ["modifiedEvent", ["Exchange::ModifiedEventType[]", XSD::QName.new(NsTypes, "ModifiedEvent")]],
        ["movedEvent", ["Exchange::MovedCopiedEventType[]", XSD::QName.new(NsTypes, "MovedEvent")]],
        ["newMailEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "NewMailEvent")]],
        ["statusEvent", ["Exchange::BaseNotificationEventType[]", XSD::QName.new(NsTypes, "StatusEvent")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfNotificationEventTypesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfNotificationEventTypesType"),
    :schema_element => [
      ["eventType", ["Exchange::NotificationEventTypeType[]", XSD::QName.new(NsTypes, "EventType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PushSubscriptionRequestType,
    :schema_type => XSD::QName.new(NsTypes, "PushSubscriptionRequestType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseSubscriptionRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "FolderIds")]],
      ["eventTypes", ["Exchange::NonEmptyArrayOfNotificationEventTypesType", XSD::QName.new(NsTypes, "EventTypes")]],
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")], [0, 1]],
      ["statusFrequency", [nil, XSD::QName.new(NsTypes, "StatusFrequency")]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "URL")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PullSubscriptionRequestType,
    :schema_type => XSD::QName.new(NsTypes, "PullSubscriptionRequestType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseSubscriptionRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "FolderIds")]],
      ["eventTypes", ["Exchange::NonEmptyArrayOfNotificationEventTypesType", XSD::QName.new(NsTypes, "EventTypes")]],
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")], [0, 1]],
      ["timeout", [nil, XSD::QName.new(NsTypes, "Timeout")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsDeleteType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsDeleteType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsReadFlagType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsReadFlagType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderItemsChangesType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsChangesType"),
    :schema_element => [
      [
        ["create", ["Exchange::SyncFolderItemsCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Create")]],
        ["update", ["Exchange::SyncFolderItemsCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Update")]],
        ["delete", ["Exchange::SyncFolderItemsDeleteType[]", XSD::QName.new(NsTypes, "Delete")]],
        ["readFlagChange", ["Exchange::SyncFolderItemsReadFlagType[]", XSD::QName.new(NsTypes, "ReadFlagChange")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyCreateOrUpdateType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyCreateOrUpdateType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyDeleteType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyDeleteType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SyncFolderHierarchyChangesType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyChangesType"),
    :schema_element => [
      [
        ["create", ["Exchange::SyncFolderHierarchyCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Create")]],
        ["update", ["Exchange::SyncFolderHierarchyCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Update")]],
        ["delete", ["Exchange::SyncFolderHierarchyDeleteType[]", XSD::QName.new(NsTypes, "Delete")]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarEventDetails,
    :schema_type => XSD::QName.new(NsTypes, "CalendarEventDetails"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")]],
      ["isException", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsException")]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReminderSet")]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsPrivate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarEvent,
    :schema_type => XSD::QName.new(NsTypes, "CalendarEvent"),
    :schema_element => [
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartTime")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "EndTime")]],
      ["busyType", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "BusyType")]],
      ["calendarEventDetails", ["Exchange::CalendarEventDetails", XSD::QName.new(NsTypes, "CalendarEventDetails")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfCalendarEvent,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCalendarEvent"),
    :schema_element => [
      ["calendarEvent", ["Exchange::CalendarEvent[]", XSD::QName.new(NsTypes, "CalendarEvent")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::Duration,
    :schema_type => XSD::QName.new(NsTypes, "Duration"),
    :schema_element => [
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartTime")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "EndTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::EmailAddress,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddress"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Address")]],
      ["routingType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "RoutingType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FreeBusyViewOptionsType,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyViewOptionsType"),
    :schema_element => [
      ["timeWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "TimeWindow")]],
      ["mergedFreeBusyIntervalInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MergedFreeBusyIntervalInMinutes")], [0, 1]],
      ["requestedView", [nil, XSD::QName.new(NsTypes, "RequestedView")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::WorkingPeriod,
    :schema_type => XSD::QName.new(NsTypes, "WorkingPeriod"),
    :schema_element => [
      ["dayOfWeek", [nil, XSD::QName.new(NsTypes, "DayOfWeek")]],
      ["startTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "StartTimeInMinutes")]],
      ["endTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "EndTimeInMinutes")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfWorkingPeriod,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfWorkingPeriod"),
    :schema_element => [
      ["workingPeriod", ["Exchange::WorkingPeriod[]", XSD::QName.new(NsTypes, "WorkingPeriod")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SerializableTimeZoneTime,
    :schema_type => XSD::QName.new(NsTypes, "SerializableTimeZoneTime"),
    :schema_element => [
      ["bias", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Bias")]],
      ["time", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Time")]],
      ["dayOrder", ["SOAP::SOAPShort", XSD::QName.new(NsTypes, "DayOrder")]],
      ["month", ["SOAP::SOAPShort", XSD::QName.new(NsTypes, "Month")]],
      ["dayOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DayOfWeek")]],
      ["year", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Year")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SerializableTimeZone,
    :schema_type => XSD::QName.new(NsTypes, "SerializableTimeZone"),
    :schema_element => [
      ["bias", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Bias")]],
      ["standardTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "StandardTime")]],
      ["daylightTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "DaylightTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::WorkingHours,
    :schema_type => XSD::QName.new(NsTypes, "WorkingHours"),
    :schema_element => [
      ["timeZone", ["Exchange::SerializableTimeZone", XSD::QName.new(NsTypes, "TimeZone")]],
      ["workingPeriodArray", ["Exchange::ArrayOfWorkingPeriod", XSD::QName.new(NsTypes, "WorkingPeriodArray")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::FreeBusyView,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyView"),
    :schema_element => [
      ["freeBusyViewType", [nil, XSD::QName.new(NsTypes, "FreeBusyViewType")]],
      ["mergedFreeBusy", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MergedFreeBusy")], [0, 1]],
      ["calendarEventArray", ["Exchange::ArrayOfCalendarEvent", XSD::QName.new(NsTypes, "CalendarEventArray")], [0, 1]],
      ["workingHours", ["Exchange::WorkingHours", XSD::QName.new(NsTypes, "WorkingHours")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::MailboxData,
    :schema_type => XSD::QName.new(NsTypes, "MailboxData"),
    :schema_element => [
      ["email", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Email")]],
      ["attendeeType", ["Exchange::MeetingAttendeeType", XSD::QName.new(NsTypes, "AttendeeType")]],
      ["excludeConflicts", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ExcludeConflicts")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfMailboxData,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfMailboxData"),
    :schema_element => [
      ["mailboxData", ["Exchange::MailboxData[]", XSD::QName.new(NsTypes, "MailboxData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SuggestionsViewOptionsType,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionsViewOptionsType"),
    :schema_element => [
      ["goodThreshold", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "GoodThreshold")], [0, 1]],
      ["maximumResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumResultsByDay")], [0, 1]],
      ["maximumNonWorkHourResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumNonWorkHourResultsByDay")], [0, 1]],
      ["meetingDurationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MeetingDurationInMinutes")], [0, 1]],
      ["minimumSuggestionQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "MinimumSuggestionQuality")], [0, 1]],
      ["detailedSuggestionsWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "DetailedSuggestionsWindow")]],
      ["currentMeetingTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "CurrentMeetingTime")], [0, 1]],
      ["globalObjectId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GlobalObjectId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfAttendeeConflictData"),
    :schema_element => [ :choice,
      ["unknownAttendeeConflictData", ["Exchange::UnknownAttendeeConflictData[]", XSD::QName.new(NsTypes, "UnknownAttendeeConflictData")]],
      ["individualAttendeeConflictData", ["Exchange::IndividualAttendeeConflictData[]", XSD::QName.new(NsTypes, "IndividualAttendeeConflictData")]],
      ["tooBigGroupAttendeeConflictData", ["Exchange::TooBigGroupAttendeeConflictData[]", XSD::QName.new(NsTypes, "TooBigGroupAttendeeConflictData")]],
      ["groupAttendeeConflictData", ["Exchange::GroupAttendeeConflictData[]", XSD::QName.new(NsTypes, "GroupAttendeeConflictData")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UnknownAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "UnknownAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Exchange::TooBigGroupAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "TooBigGroupAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Exchange::IndividualAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "IndividualAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => [
      ["busyType", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "BusyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::GroupAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "GroupAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => [
      ["numberOfMembers", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembers")]],
      ["numberOfMembersAvailable", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersAvailable")]],
      ["numberOfMembersWithConflict", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersWithConflict")]],
      ["numberOfMembersWithNoData", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersWithNoData")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::Suggestion,
    :schema_type => XSD::QName.new(NsTypes, "Suggestion"),
    :schema_element => [
      ["meetingTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "MeetingTime")]],
      ["isWorkTime", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsWorkTime")]],
      ["suggestionQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "SuggestionQuality")]],
      ["attendeeConflictDataArray", ["Exchange::ArrayOfAttendeeConflictData", XSD::QName.new(NsTypes, "AttendeeConflictDataArray")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfSuggestion,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSuggestion"),
    :schema_element => [
      ["suggestion", ["Exchange::Suggestion[]", XSD::QName.new(NsTypes, "Suggestion")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::SuggestionDayResult,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionDayResult"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Date")]],
      ["dayQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "DayQuality")]],
      ["suggestionArray", ["Exchange::ArrayOfSuggestion", XSD::QName.new(NsTypes, "SuggestionArray")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfSuggestionDayResult,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSuggestionDayResult"),
    :schema_element => [
      ["suggestionDayResult", ["Exchange::SuggestionDayResult[]", XSD::QName.new(NsTypes, "SuggestionDayResult")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ReplyBody,
    :schema_type => XSD::QName.new(NsTypes, "ReplyBody"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Message")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(NsNamespace, "lang") => nil
    }
  )

  EncodedRegistry.register(
    :class => Exchange::UserOofSettings,
    :schema_type => XSD::QName.new(NsTypes, "UserOofSettings"),
    :schema_element => [
      ["oofState", ["Exchange::OofState", XSD::QName.new(NsTypes, "OofState")]],
      ["externalAudience", ["Exchange::ExternalAudience", XSD::QName.new(NsTypes, "ExternalAudience")]],
      ["duration", ["Exchange::Duration", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["internalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "InternalReply")], [0, 1]],
      ["externalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "ExternalReply")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::Value,
    :schema_type => XSD::QName.new(NsTypes, "Value"),
    :schema_attribute => {
      XSD::QName.new(nil, "Name") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AlternateIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternateIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternateIdBaseType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Mailbox") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AlternatePublicFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternatePublicFolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternateIdBaseType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FolderId") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::AlternatePublicFolderItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternatePublicFolderItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternatePublicFolderIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FolderId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ItemId") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Exchange::NonEmptyArrayOfAlternateIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAlternateIdsType"),
    :schema_element => [ :choice,
      ["alternateId", ["Exchange::AlternateIdType[]", XSD::QName.new(NsTypes, "AlternateId")]],
      ["alternatePublicFolderId", ["Exchange::AlternatePublicFolderIdType[]", XSD::QName.new(NsTypes, "AlternatePublicFolderId")]],
      ["alternatePublicFolderItemId", ["Exchange::AlternatePublicFolderItemIdType[]", XSD::QName.new(NsTypes, "AlternatePublicFolderItemId")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::UserIdType,
    :schema_type => XSD::QName.new(NsTypes, "UserIdType"),
    :schema_element => [
      ["sID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SID")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["distinguishedUser", ["Exchange::DistinguishedUserType", XSD::QName.new(NsTypes, "DistinguishedUser")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfPermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfPermissionsType"),
    :schema_element => [
      ["permission", ["Exchange::PermissionType[]", XSD::QName.new(NsTypes, "Permission")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfCalendarPermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCalendarPermissionsType"),
    :schema_element => [
      ["calendarPermission", ["Exchange::CalendarPermissionType[]", XSD::QName.new(NsTypes, "CalendarPermission")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfUnknownEntriesType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfUnknownEntriesType"),
    :schema_element => [
      ["unknownEntry", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "UnknownEntry")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PermissionType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePermissionType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["canCreateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateItems")], [0, 1]],
      ["canCreateSubFolders", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateSubFolders")], [0, 1]],
      ["isFolderOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderOwner")], [0, 1]],
      ["isFolderVisible", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderVisible")], [0, 1]],
      ["isFolderContact", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderContact")], [0, 1]],
      ["editItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "EditItems")], [0, 1]],
      ["deleteItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "DeleteItems")], [0, 1]],
      ["readItems", ["Exchange::PermissionReadAccessType", XSD::QName.new(NsTypes, "ReadItems")], [0, 1]],
      ["permissionLevel", ["Exchange::PermissionLevelType", XSD::QName.new(NsTypes, "PermissionLevel")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarPermissionType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePermissionType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["canCreateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateItems")], [0, 1]],
      ["canCreateSubFolders", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateSubFolders")], [0, 1]],
      ["isFolderOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderOwner")], [0, 1]],
      ["isFolderVisible", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderVisible")], [0, 1]],
      ["isFolderContact", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderContact")], [0, 1]],
      ["editItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "EditItems")], [0, 1]],
      ["deleteItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "DeleteItems")], [0, 1]],
      ["readItems", ["Exchange::CalendarPermissionReadAccessType", XSD::QName.new(NsTypes, "ReadItems")], [0, 1]],
      ["calendarPermissionLevel", ["Exchange::CalendarPermissionLevelType", XSD::QName.new(NsTypes, "CalendarPermissionLevel")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::PermissionSetType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionSetType"),
    :schema_element => [
      ["permissions", ["Exchange::ArrayOfPermissionsType", XSD::QName.new(NsTypes, "Permissions")]],
      ["unknownEntries", ["Exchange::ArrayOfUnknownEntriesType", XSD::QName.new(NsTypes, "UnknownEntries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarPermissionSetType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionSetType"),
    :schema_element => [
      ["calendarPermissions", ["Exchange::ArrayOfCalendarPermissionsType", XSD::QName.new(NsTypes, "CalendarPermissions")]],
      ["unknownEntries", ["Exchange::ArrayOfUnknownEntriesType", XSD::QName.new(NsTypes, "UnknownEntries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::EffectiveRightsType,
    :schema_type => XSD::QName.new(NsTypes, "EffectiveRightsType"),
    :schema_element => [
      ["createAssociated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateAssociated")]],
      ["createContents", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateContents")]],
      ["createHierarchy", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateHierarchy")]],
      ["delete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Delete")]],
      ["modify", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Modify")]],
      ["read", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Read")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfDelegateUserType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDelegateUserType"),
    :schema_element => [
      ["delegateUser", ["Exchange::DelegateUserType[]", XSD::QName.new(NsTypes, "DelegateUser")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ArrayOfUserIdType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfUserIdType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType[]", XSD::QName.new(NsTypes, "UserId")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DelegateUserType,
    :schema_type => XSD::QName.new(NsTypes, "DelegateUserType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["delegatePermissions", ["Exchange::DelegatePermissionsType", XSD::QName.new(NsTypes, "DelegatePermissions")], [0, 1]],
      ["receiveCopiesOfMeetingMessages", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReceiveCopiesOfMeetingMessages")], [0, 1]],
      ["viewPrivateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ViewPrivateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::DelegatePermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "DelegatePermissionsType"),
    :schema_element => [
      ["calendarFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "CalendarFolderPermissionLevel")], [0, 1]],
      ["tasksFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "TasksFolderPermissionLevel")], [0, 1]],
      ["inboxFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "InboxFolderPermissionLevel")], [0, 1]],
      ["contactsFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "ContactsFolderPermissionLevel")], [0, 1]],
      ["notesFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "NotesFolderPermissionLevel")], [0, 1]],
      ["journalFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "JournalFolderPermissionLevel")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ConflictResultsType,
    :schema_type => XSD::QName.new(NsTypes, "ConflictResultsType"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Count")]]
    ]
  )

  EncodedRegistry.register(
    :class => Exchange::ResponseCodeType,
    :schema_type => XSD::QName.new(NsMessages, "ResponseCodeType")
  )

  EncodedRegistry.register(
    :class => Exchange::ExchangeVersionType,
    :schema_type => XSD::QName.new(NsTypes, "ExchangeVersionType")
  )

  EncodedRegistry.register(
    :class => Exchange::MailboxTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MailboxTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::UnindexedFieldURIType,
    :schema_type => XSD::QName.new(NsTypes, "UnindexedFieldURIType")
  )

  EncodedRegistry.register(
    :class => Exchange::DictionaryURIType,
    :schema_type => XSD::QName.new(NsTypes, "DictionaryURIType")
  )

  EncodedRegistry.register(
    :class => Exchange::ExceptionPropertyURIType,
    :schema_type => XSD::QName.new(NsTypes, "ExceptionPropertyURIType")
  )

  EncodedRegistry.register(
    :class => Exchange::DistinguishedPropertySetType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedPropertySetType")
  )

  EncodedRegistry.register(
    :class => Exchange::MapiPropertyTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MapiPropertyTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::FolderQueryTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "FolderQueryTraversalType")
  )

  EncodedRegistry.register(
    :class => Exchange::SearchFolderTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "SearchFolderTraversalType")
  )

  EncodedRegistry.register(
    :class => Exchange::ItemQueryTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "ItemQueryTraversalType")
  )

  EncodedRegistry.register(
    :class => Exchange::DefaultShapeNamesType,
    :schema_type => XSD::QName.new(NsTypes, "DefaultShapeNamesType")
  )

  EncodedRegistry.register(
    :class => Exchange::BodyTypeResponseType,
    :schema_type => XSD::QName.new(NsTypes, "BodyTypeResponseType")
  )

  EncodedRegistry.register(
    :class => Exchange::DisposalType,
    :schema_type => XSD::QName.new(NsTypes, "DisposalType")
  )

  EncodedRegistry.register(
    :class => Exchange::ConflictResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ConflictResolutionType")
  )

  EncodedRegistry.register(
    :class => Exchange::ResponseClassType,
    :schema_type => XSD::QName.new(NsTypes, "ResponseClassType")
  )

  EncodedRegistry.register(
    :class => Exchange::SensitivityChoicesType,
    :schema_type => XSD::QName.new(NsTypes, "SensitivityChoicesType")
  )

  EncodedRegistry.register(
    :class => Exchange::ImportanceChoicesType,
    :schema_type => XSD::QName.new(NsTypes, "ImportanceChoicesType")
  )

  EncodedRegistry.register(
    :class => Exchange::BodyTypeType,
    :schema_type => XSD::QName.new(NsTypes, "BodyTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::DistinguishedFolderIdNameType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedFolderIdNameType")
  )

  EncodedRegistry.register(
    :class => Exchange::MessageDispositionType,
    :schema_type => XSD::QName.new(NsTypes, "MessageDispositionType")
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarItemCreateOrDeleteOperationType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemCreateOrDeleteOperationType")
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarItemUpdateOperationType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemUpdateOperationType")
  )

  EncodedRegistry.register(
    :class => Exchange::AffectedTaskOccurrencesType,
    :schema_type => XSD::QName.new(NsTypes, "AffectedTaskOccurrencesType")
  )

  EncodedRegistry.register(
    :class => Exchange::TaskStatusType,
    :schema_type => XSD::QName.new(NsTypes, "TaskStatusType")
  )

  EncodedRegistry.register(
    :class => Exchange::TaskDelegateStateType,
    :schema_type => XSD::QName.new(NsTypes, "TaskDelegateStateType")
  )

  EncodedRegistry.register(
    :class => Exchange::IndexBasePointType,
    :schema_type => XSD::QName.new(NsTypes, "IndexBasePointType")
  )

  EncodedRegistry.register(
    :class => Exchange::ResolveNamesSearchScopeType,
    :schema_type => XSD::QName.new(NsTypes, "ResolveNamesSearchScopeType")
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingRequestTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingRequestTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::LegacyFreeBusyType,
    :schema_type => XSD::QName.new(NsTypes, "LegacyFreeBusyType")
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarItemTypeType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::ResponseTypeType,
    :schema_type => XSD::QName.new(NsTypes, "ResponseTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::DayOfWeekType,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeekType")
  )

  EncodedRegistry.register(
    :class => Exchange::DayOfWeekIndexType,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeekIndexType")
  )

  EncodedRegistry.register(
    :class => Exchange::MonthNamesType,
    :schema_type => XSD::QName.new(NsTypes, "MonthNamesType")
  )

  EncodedRegistry.register(
    :class => Exchange::ImAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressKeyType")
  )

  EncodedRegistry.register(
    :class => Exchange::EmailAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressKeyType")
  )

  EncodedRegistry.register(
    :class => Exchange::PhoneNumberKeyType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberKeyType")
  )

  EncodedRegistry.register(
    :class => Exchange::PhysicalAddressIndexType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressIndexType")
  )

  EncodedRegistry.register(
    :class => Exchange::PhysicalAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressKeyType")
  )

  EncodedRegistry.register(
    :class => Exchange::FileAsMappingType,
    :schema_type => XSD::QName.new(NsTypes, "FileAsMappingType")
  )

  EncodedRegistry.register(
    :class => Exchange::ContactSourceType,
    :schema_type => XSD::QName.new(NsTypes, "ContactSourceType")
  )

  EncodedRegistry.register(
    :class => Exchange::AggregateType,
    :schema_type => XSD::QName.new(NsTypes, "AggregateType")
  )

  EncodedRegistry.register(
    :class => Exchange::StandardGroupByType,
    :schema_type => XSD::QName.new(NsTypes, "StandardGroupByType")
  )

  EncodedRegistry.register(
    :class => Exchange::ContainmentModeType,
    :schema_type => XSD::QName.new(NsTypes, "ContainmentModeType")
  )

  EncodedRegistry.register(
    :class => Exchange::ContainmentComparisonType,
    :schema_type => XSD::QName.new(NsTypes, "ContainmentComparisonType")
  )

  EncodedRegistry.register(
    :class => Exchange::SortDirectionType,
    :schema_type => XSD::QName.new(NsTypes, "SortDirectionType")
  )

  EncodedRegistry.register(
    :class => Exchange::NotificationEventTypeType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationEventTypeType")
  )

  EncodedRegistry.register(
    :class => Exchange::SubscriptionStatusType,
    :schema_type => XSD::QName.new(NsTypes, "SubscriptionStatusType")
  )

  EncodedRegistry.register(
    :class => Exchange::AvailabilityProxyRequestType,
    :schema_type => XSD::QName.new(NsTypes, "AvailabilityProxyRequestType")
  )

  EncodedRegistry.register(
    :class => Exchange::MeetingAttendeeType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingAttendeeType")
  )

  EncodedRegistry.register(
    :class => Exchange::SuggestionQuality,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionQuality")
  )

  EncodedRegistry.register(
    :class => Exchange::OofState,
    :schema_type => XSD::QName.new(NsTypes, "OofState")
  )

  EncodedRegistry.register(
    :class => Exchange::ExternalAudience,
    :schema_type => XSD::QName.new(NsTypes, "ExternalAudience")
  )

  EncodedRegistry.register(
    :class => Exchange::IdFormatType,
    :schema_type => XSD::QName.new(NsTypes, "IdFormatType")
  )

  EncodedRegistry.register(
    :class => Exchange::DistinguishedUserType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedUserType")
  )

  EncodedRegistry.register(
    :class => Exchange::PermissionReadAccessType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionReadAccessType")
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarPermissionReadAccessType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionReadAccessType")
  )

  EncodedRegistry.register(
    :class => Exchange::PermissionActionType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionActionType")
  )

  EncodedRegistry.register(
    :class => Exchange::PermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionLevelType")
  )

  EncodedRegistry.register(
    :class => Exchange::CalendarPermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionLevelType")
  )

  EncodedRegistry.register(
    :class => Exchange::DeliverMeetingRequestsType,
    :schema_type => XSD::QName.new(NsTypes, "DeliverMeetingRequestsType")
  )

  EncodedRegistry.register(
    :class => Exchange::DelegateFolderPermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "DelegateFolderPermissionLevelType")
  )

  LiteralRegistry.register(
    :class => Exchange::ResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfResponseMessagesType,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfResponseMessagesType"),
    :schema_element => [ :choice,
      ["createItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateItemResponseMessage")]],
      ["deleteItemResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteItemResponseMessage")]],
      ["getItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetItemResponseMessage")]],
      ["updateItemResponseMessage", ["Exchange::UpdateItemResponseMessageType[]", XSD::QName.new(NsMessages, "UpdateItemResponseMessage")]],
      ["sendItemResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "SendItemResponseMessage")]],
      ["deleteFolderResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteFolderResponseMessage")]],
      ["createFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateFolderResponseMessage")]],
      ["getFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetFolderResponseMessage")]],
      ["findFolderResponseMessage", ["Exchange::FindFolderResponseMessageType[]", XSD::QName.new(NsMessages, "FindFolderResponseMessage")]],
      ["updateFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "UpdateFolderResponseMessage")]],
      ["moveFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "MoveFolderResponseMessage")]],
      ["copyFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CopyFolderResponseMessage")]],
      ["createAttachmentResponseMessage", ["Exchange::AttachmentInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateAttachmentResponseMessage")]],
      ["deleteAttachmentResponseMessage", ["Exchange::DeleteAttachmentResponseMessageType[]", XSD::QName.new(NsMessages, "DeleteAttachmentResponseMessage")]],
      ["getAttachmentResponseMessage", ["Exchange::AttachmentInfoResponseMessageType[]", XSD::QName.new(NsMessages, "GetAttachmentResponseMessage")]],
      ["findItemResponseMessage", ["Exchange::FindItemResponseMessageType[]", XSD::QName.new(NsMessages, "FindItemResponseMessage")]],
      ["moveItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "MoveItemResponseMessage")]],
      ["copyItemResponseMessage", ["Exchange::ItemInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CopyItemResponseMessage")]],
      ["resolveNamesResponseMessage", ["Exchange::ResolveNamesResponseMessageType[]", XSD::QName.new(NsMessages, "ResolveNamesResponseMessage")]],
      ["expandDLResponseMessage", ["Exchange::ExpandDLResponseMessageType[]", XSD::QName.new(NsMessages, "ExpandDLResponseMessage")]],
      ["getEventsResponseMessage", ["Exchange::GetEventsResponseMessageType[]", XSD::QName.new(NsMessages, "GetEventsResponseMessage")]],
      ["subscribeResponseMessage", ["Exchange::SubscribeResponseMessageType[]", XSD::QName.new(NsMessages, "SubscribeResponseMessage")]],
      ["unsubscribeResponseMessage", ["Exchange::ResponseMessageType[]", XSD::QName.new(NsMessages, "UnsubscribeResponseMessage")]],
      ["sendNotificationResponseMessage", ["Exchange::SendNotificationResponseMessageType[]", XSD::QName.new(NsMessages, "SendNotificationResponseMessage")]],
      ["syncFolderHierarchyResponseMessage", ["Exchange::SyncFolderHierarchyResponseMessageType[]", XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseMessage")]],
      ["syncFolderItemsResponseMessage", ["Exchange::SyncFolderItemsResponseMessageType[]", XSD::QName.new(NsMessages, "SyncFolderItemsResponseMessage")]],
      ["createManagedFolderResponseMessage", ["Exchange::FolderInfoResponseMessageType[]", XSD::QName.new(NsMessages, "CreateManagedFolderResponseMessage")]],
      ["convertIdResponseMessage", ["Exchange::ConvertIdResponseMessageType[]", XSD::QName.new(NsMessages, "ConvertIdResponseMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BaseResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetFolderType,
    :schema_type => XSD::QName.new(NsMessages, "GetFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateFolderType,
    :schema_type => XSD::QName.new(NsMessages, "CreateFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ParentFolderId")]],
      ["folders", ["Exchange::NonEmptyArrayOfFoldersType", XSD::QName.new(NsMessages, "Folders")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      [ :choice,
        ["indexedPageFolderView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageFolderView")]],
        ["fractionalPageFolderView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageFolderView")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FolderInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FolderInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FolderInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["folders", ["Exchange::ArrayOfFoldersType", XSD::QName.new(NsMessages, "Folders")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FolderInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FindFolderResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootFolder", ["Exchange::FindFolderParentType", XSD::QName.new(NsMessages, "RootFolder")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FindFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteFolderType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BaseMoveCopyFolderType,
    :schema_type => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveFolderType,
    :schema_type => XSD::QName.new(NsMessages, "MoveFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyFolderType,
    :schema_type => XSD::QName.new(NsMessages, "CopyFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyFolderType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateFolderType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateFolderType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderChanges", ["Exchange::NonEmptyArrayOfFolderChangesType", XSD::QName.new(NsMessages, "FolderChanges")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "MoveFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CopyFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetItemType,
    :schema_type => XSD::QName.new(NsMessages, "GetItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateItemType,
    :schema_type => XSD::QName.new(NsMessages, "CreateItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["items", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsMessages, "Items")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitations") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["itemChanges", ["Exchange::NonEmptyArrayOfItemChangesType", XSD::QName.new(NsMessages, "ItemChanges")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ConflictResolution") => "SOAP::SOAPString",
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitationsOrCancellations") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ItemInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ItemInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ItemInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsMessages, "Items")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ItemInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ItemInfoResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::UpdateItemResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsMessages, "Items")]],
      ["conflictResults", ["Exchange::ConflictResultsType", XSD::QName.new(NsMessages, "ConflictResults")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteItemType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingCancellations") => "SOAP::SOAPString",
      XSD::QName.new(nil, "AffectedTaskOccurrences") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AttachmentInfoResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "AttachmentInfoResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::AttachmentInfoResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["attachments", ["Exchange::ArrayOfAttachmentsType", XSD::QName.new(NsMessages, "Attachments")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AttachmentInfoResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::DeleteAttachmentResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootItemId", ["Exchange::RootItemIdType", XSD::QName.new(NsMessages, "RootItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BaseMoveCopyItemType,
    :schema_type => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveItemType,
    :schema_type => XSD::QName.new(NsMessages, "MoveItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyItemType,
    :schema_type => XSD::QName.new(NsMessages, "CopyItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseMoveCopyItemType"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendItemType,
    :schema_type => XSD::QName.new(NsMessages, "SendItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]],
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "SaveItemToFolder") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SendItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SendItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      [ :choice,
        ["indexedPageItemView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageItemView")]],
        ["fractionalPageItemView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageItemView")]],
        ["calendarView", ["Exchange::CalendarViewType", XSD::QName.new(NsMessages, "CalendarView")]],
        ["contactsView", ["Exchange::ContactsViewType", XSD::QName.new(NsMessages, "ContactsView")]]
      ],
      [ :choice,
        ["groupBy", ["Exchange::GroupByType", XSD::QName.new(NsMessages, "GroupBy")]],
        ["distinguishedGroupBy", ["Exchange::DistinguishedGroupByType", XSD::QName.new(NsMessages, "DistinguishedGroupBy")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["sortOrder", ["Exchange::NonEmptyArrayOfFieldOrdersType", XSD::QName.new(NsMessages, "SortOrder")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::CreateAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "CreateAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentItemId", ["Exchange::ItemIdType", XSD::QName.new(NsMessages, "ParentItemId")]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsMessages, "Attachments")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetAttachmentType,
    :schema_type => XSD::QName.new(NsMessages, "GetAttachmentType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["attachmentShape", ["Exchange::AttachmentResponseShapeType", XSD::QName.new(NsMessages, "AttachmentShape")], [0, 1]],
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetAttachmentResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetAttachmentResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "MoveItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CopyItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "DeleteItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::FindItemResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["rootFolder", ["Exchange::FindItemParentType", XSD::QName.new(NsMessages, "RootFolder")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FindItemResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")], [0, 1]],
      ["unresolvedEntry", [nil, XSD::QName.new(NsMessages, "UnresolvedEntry")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ReturnFullContactData") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "SearchScope") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ResolveNamesResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["resolutionSet", ["Exchange::ArrayOfResolutionType", XSD::QName.new(NsMessages, "ResolutionSet")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ResolveNamesResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ExpandDLResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["dLExpansion", ["Exchange::ArrayOfDLExpansionType", XSD::QName.new(NsMessages, "DLExpansion")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString",
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ExpandDLResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateManagedFolderRequestType,
    :schema_type => XSD::QName.new(NsMessages, "CreateManagedFolderRequestType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderNames", ["Exchange::NonEmptyArrayOfFolderNamesType", XSD::QName.new(NsMessages, "FolderNames")]],
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateManagedFolderResponseType,
    :schema_type => XSD::QName.new(NsMessages, "CreateManagedFolderResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [ :choice,
      ["pullSubscriptionRequest", ["Exchange::PullSubscriptionRequestType", XSD::QName.new(NsMessages, "PullSubscriptionRequest")]],
      ["pushSubscriptionRequest", ["Exchange::PushSubscriptionRequestType", XSD::QName.new(NsMessages, "PushSubscriptionRequest")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SubscribeResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")], [0, 1]],
      ["watermark", [nil, XSD::QName.new(NsMessages, "Watermark")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SubscribeResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UnsubscribeType,
    :schema_type => XSD::QName.new(NsMessages, "UnsubscribeType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UnsubscribeResponseType,
    :schema_type => XSD::QName.new(NsMessages, "UnsubscribeResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]],
      ["watermark", [nil, XSD::QName.new(NsMessages, "Watermark")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::GetEventsResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["notification", ["Exchange::NotificationType", XSD::QName.new(NsMessages, "Notification")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetEventsResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SendNotificationResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["notification", ["Exchange::NotificationType", XSD::QName.new(NsMessages, "Notification")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResultType,
    :schema_type => XSD::QName.new(NsMessages, "SendNotificationResultType"),
    :schema_element => [
      ["subscriptionStatus", ["Exchange::SubscriptionStatusType", XSD::QName.new(NsMessages, "SubscriptionStatus")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SyncFolderHierarchyResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["includesLastFolderInRange", ["SOAP::SOAPBoolean", XSD::QName.new(NsMessages, "IncludesLastFolderInRange")], [0, 1]],
      ["changes", ["Exchange::SyncFolderHierarchyChangesType", XSD::QName.new(NsMessages, "Changes")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderHierarchyResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["ignore", ["Exchange::ArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "Ignore")], [0, 1]],
      ["maxChangesReturned", [nil, XSD::QName.new(NsMessages, "MaxChangesReturned")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::SyncFolderItemsResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["includesLastItemInRange", ["SOAP::SOAPBoolean", XSD::QName.new(NsMessages, "IncludesLastItemInRange")], [0, 1]],
      ["changes", ["Exchange::SyncFolderItemsChangesType", XSD::QName.new(NsMessages, "Changes")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SyncFolderItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserAvailabilityRequestType,
    :schema_type => XSD::QName.new(NsMessages, "GetUserAvailabilityRequestType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["timeZone", ["Exchange::SerializableTimeZone", XSD::QName.new(NsTypes, "TimeZone")]],
      ["mailboxDataArray", ["Exchange::ArrayOfMailboxData", XSD::QName.new(NsMessages, "MailboxDataArray")]],
      ["freeBusyViewOptions", ["Exchange::FreeBusyViewOptionsType", XSD::QName.new(NsTypes, "FreeBusyViewOptions")], [0, 1]],
      ["suggestionsViewOptions", ["Exchange::SuggestionsViewOptionsType", XSD::QName.new(NsTypes, "SuggestionsViewOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FreeBusyResponseType,
    :schema_type => XSD::QName.new(NsMessages, "FreeBusyResponseType"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]],
      ["freeBusyView", ["Exchange::FreeBusyView", XSD::QName.new(NsMessages, "FreeBusyView")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfFreeBusyResponse,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfFreeBusyResponse"),
    :schema_element => [
      ["freeBusyResponse", ["Exchange::FreeBusyResponseType[]", XSD::QName.new(NsMessages, "FreeBusyResponse")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SuggestionsResponseType,
    :schema_type => XSD::QName.new(NsMessages, "SuggestionsResponseType"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]],
      ["suggestionDayResultArray", ["Exchange::ArrayOfSuggestionDayResult", XSD::QName.new(NsMessages, "SuggestionDayResultArray")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserAvailabilityResponseType,
    :schema_type => XSD::QName.new(NsMessages, "GetUserAvailabilityResponseType"),
    :schema_element => [
      ["freeBusyResponseArray", ["Exchange::ArrayOfFreeBusyResponse", XSD::QName.new(NsMessages, "FreeBusyResponseArray")], [0, 1]],
      ["suggestionsResponse", ["Exchange::SuggestionsResponseType", XSD::QName.new(NsMessages, "SuggestionsResponse")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserOofSettingsRequest,
    :schema_type => XSD::QName.new(NsMessages, "GetUserOofSettingsRequest"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserOofSettingsResponse,
    :schema_type => XSD::QName.new(NsMessages, "GetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")]],
      ["oofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "OofSettings")], [0, 1]],
      ["allowExternalOof", ["Exchange::ExternalAudience", XSD::QName.new(NsMessages, "AllowExternalOof")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetUserOofSettingsRequest,
    :schema_type => XSD::QName.new(NsMessages, "SetUserOofSettingsRequest"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]],
      ["userOofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "UserOofSettings")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetUserOofSettingsResponse,
    :schema_type => XSD::QName.new(NsMessages, "SetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseRequestType"),
    :schema_element => [
      ["sourceIds", ["Exchange::NonEmptyArrayOfAlternateIdsType", XSD::QName.new(NsMessages, "SourceIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DestinationFormat") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdResponseType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdResponseType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseResponseMessageType"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ConvertIdResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::ConvertIdResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["alternateId", ["Exchange::AlternateIdBaseType", XSD::QName.new(NsMessages, "AlternateId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "GetDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IncludePermissions") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "GetDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::GetDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfDelegateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "ArrayOfDelegateUserResponseMessageType"),
    :schema_element => [
      ["delegateUserResponseMessageType", ["Exchange::DelegateUserResponseMessageType[]", XSD::QName.new(NsMessages, "DelegateUserResponseMessageType")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DelegateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "DelegateUserResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "ResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::DelegateUserResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["delegateUser", ["Exchange::DelegateUserType", XSD::QName.new(NsMessages, "DelegateUser")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DelegateUserResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "AddDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "AddDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::AddDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "RemoveDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "RemoveDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::RemoveDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateDelegateType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType,
    :schema_type => XSD::QName.new(NsMessages, "UpdateDelegateResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsMessages, "BaseDelegateResponseMessageType"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::UpdateDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SidAndAttributesType,
    :schema_type => XSD::QName.new(NsTypes, "SidAndAttributesType"),
    :schema_element => [
      ["securityIdentifier", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SecurityIdentifier")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Attributes") => "SOAP::SOAPUnsignedInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfGroupIdentifiersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfGroupIdentifiersType"),
    :schema_element => [
      ["groupIdentifier", ["Exchange::SidAndAttributesType[]", XSD::QName.new(NsTypes, "GroupIdentifier")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfRestrictedGroupIdentifiersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfRestrictedGroupIdentifiersType"),
    :schema_element => [
      ["restrictedGroupIdentifier", ["Exchange::SidAndAttributesType[]", XSD::QName.new(NsTypes, "RestrictedGroupIdentifier")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SerializedSecurityContextType,
    :schema_type => XSD::QName.new(NsTypes, "SerializedSecurityContextType"),
    :schema_element => [
      ["userSid", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UserSid")]],
      ["groupSids", ["Exchange::NonEmptyArrayOfGroupIdentifiersType", XSD::QName.new(NsTypes, "GroupSids")], [0, 1]],
      ["restrictedGroupSids", ["Exchange::NonEmptyArrayOfRestrictedGroupIdentifiersType", XSD::QName.new(NsTypes, "RestrictedGroupSids")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ConnectingSIDType,
    :schema_type => XSD::QName.new(NsTypes, "ConnectingSIDType"),
    :schema_element => [
      ["principalName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrincipalName")], [0, 1]],
      ["sID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SID")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExchangeImpersonationType,
    :schema_type => XSD::QName.new(NsTypes, "ExchangeImpersonationType"),
    :schema_element => [
      ["connectingSID", ["Exchange::ConnectingSIDType", XSD::QName.new(NsTypes, "ConnectingSID")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ProxySecurityContextType,
    :schema_type => XSD::QName.new(NsTypes, "ProxySecurityContextType")
  )

  LiteralRegistry.register(
    :class => Exchange::BaseEmailAddressType,
    :schema_type => XSD::QName.new(NsTypes, "BaseEmailAddressType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddressType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseEmailAddressType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["emailAddress", [nil, XSD::QName.new(NsTypes, "EmailAddress")], [0, 1]],
      ["routingType", [nil, XSD::QName.new(NsTypes, "RoutingType")], [0, 1]],
      ["mailboxType", ["Exchange::MailboxTypeType", XSD::QName.new(NsTypes, "MailboxType")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfRecipientsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfRecipientsType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType[]", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SingleRecipientType,
    :schema_type => XSD::QName.new(NsTypes, "SingleRecipientType"),
    :schema_element => [ :choice,
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PathToUnindexedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToUnindexedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToIndexedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToIndexedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FieldIndex") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToExceptionFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToExceptionFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToExtendedFieldType,
    :schema_type => XSD::QName.new(NsTypes, "PathToExtendedFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePathToElementType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "DistinguishedPropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyTag") => nil,
      XSD::QName.new(nil, "PropertyName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyId") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "PropertyType") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfPathsToElementType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfPathsToElementType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType[]", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfPropertyValuesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfPropertyValuesType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "Value")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExtendedPropertyType,
    :schema_type => XSD::QName.new(NsTypes, "ExtendedPropertyType"),
    :schema_element => [
      ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]],
      [ :choice,
        ["value", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Value")]],
        ["values", ["Exchange::NonEmptyArrayOfPropertyValuesType", XSD::QName.new(NsTypes, "Values")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FolderResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "FolderResponseShapeType"),
    :schema_element => [
      ["baseShape", ["Exchange::DefaultShapeNamesType", XSD::QName.new(NsTypes, "BaseShape")]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ItemResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "ItemResponseShapeType"),
    :schema_element => [
      ["baseShape", ["Exchange::DefaultShapeNamesType", XSD::QName.new(NsTypes, "BaseShape")]],
      ["includeMimeContent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IncludeMimeContent")], [0, 1]],
      ["bodyType", ["Exchange::BodyTypeResponseType", XSD::QName.new(NsTypes, "BodyType")], [0, 1]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AttachmentResponseShapeType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentResponseShapeType"),
    :schema_element => [
      ["includeMimeContent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IncludeMimeContent")], [0, 1]],
      ["bodyType", ["Exchange::BodyTypeResponseType", XSD::QName.new(NsTypes, "BodyType")], [0, 1]],
      ["additionalProperties", ["Exchange::NonEmptyArrayOfPathsToElementType", XSD::QName.new(NsTypes, "AdditionalProperties")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ItemChangeDescriptionType,
    :schema_type => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FolderChangeDescriptionType,
    :schema_type => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "SetItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "SetFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "DeleteItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "DeleteFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AppendToItemFieldType,
    :schema_type => XSD::QName.new(NsTypes, "AppendToItemFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemChangeDescriptionType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AppendToFolderFieldType,
    :schema_type => XSD::QName.new(NsTypes, "AppendToFolderFieldType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderChangeDescriptionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      [ :choice,
        ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
        ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
        ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
        ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
        ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfItemChangeDescriptionsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfItemChangeDescriptionsType"),
    :schema_element => [ :choice,
      ["appendToItemField", ["Exchange::AppendToItemFieldType[]", XSD::QName.new(NsTypes, "AppendToItemField")]],
      ["setItemField", ["Exchange::SetItemFieldType[]", XSD::QName.new(NsTypes, "SetItemField")]],
      ["deleteItemField", ["Exchange::DeleteItemFieldType[]", XSD::QName.new(NsTypes, "DeleteItemField")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderChangeDescriptionsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderChangeDescriptionsType"),
    :schema_element => [ :choice,
      ["appendToFolderField", ["Exchange::AppendToFolderFieldType[]", XSD::QName.new(NsTypes, "AppendToFolderField")]],
      ["setFolderField", ["Exchange::SetFolderFieldType[]", XSD::QName.new(NsTypes, "SetFolderField")]],
      ["deleteFolderField", ["Exchange::DeleteFolderFieldType[]", XSD::QName.new(NsTypes, "DeleteFolderField")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ItemChangeType,
    :schema_type => XSD::QName.new(NsTypes, "ItemChangeType"),
    :schema_element => [
      [ :choice,
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
        ["occurrenceItemId", ["Exchange::OccurrenceItemIdType", XSD::QName.new(NsTypes, "OccurrenceItemId")]],
        ["recurringMasterItemId", ["Exchange::RecurringMasterItemIdType", XSD::QName.new(NsTypes, "RecurringMasterItemId")]]
      ],
      ["updates", ["Exchange::NonEmptyArrayOfItemChangeDescriptionsType", XSD::QName.new(NsTypes, "Updates")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfItemChangesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfItemChangesType"),
    :schema_element => [
      ["itemChange", ["Exchange::ItemChangeType[]", XSD::QName.new(NsTypes, "ItemChange")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::InternetHeaderType,
    :schema_type => XSD::QName.new(NsTypes, "InternetHeaderType"),
    :schema_attribute => {
      XSD::QName.new(nil, "HeaderName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfInternetHeadersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfInternetHeadersType"),
    :schema_element => [
      ["internetMessageHeader", ["Exchange::InternetHeaderType[]", XSD::QName.new(NsTypes, "InternetMessageHeader")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RequestAttachmentIdType,
    :schema_type => XSD::QName.new(NsTypes, "RequestAttachmentIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AttachmentIdType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RequestAttachmentIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RootItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "RootItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "RootItemId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RootItemChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfRequestAttachmentIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfRequestAttachmentIdsType"),
    :schema_element => [
      ["attachmentId", ["Exchange::RequestAttachmentIdType[]", XSD::QName.new(NsTypes, "AttachmentId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ItemAttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "ItemAttachmentType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [ :choice,
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]],
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsCreateOrUpdateType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsCreateOrUpdateType"),
    :schema_element => [ :choice,
      ["item", ["Exchange::ItemType", XSD::QName.new(NsTypes, "Item")]],
      ["message", ["Exchange::MessageType", XSD::QName.new(NsTypes, "Message")]],
      ["calendarItem", ["Exchange::CalendarItemType", XSD::QName.new(NsTypes, "CalendarItem")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")]],
      ["distributionList", ["Exchange::DistributionListType", XSD::QName.new(NsTypes, "DistributionList")]],
      ["meetingMessage", ["Exchange::MeetingMessageType", XSD::QName.new(NsTypes, "MeetingMessage")]],
      ["meetingRequest", ["Exchange::MeetingRequestMessageType", XSD::QName.new(NsTypes, "MeetingRequest")]],
      ["meetingResponse", ["Exchange::MeetingResponseMessageType", XSD::QName.new(NsTypes, "MeetingResponse")]],
      ["meetingCancellation", ["Exchange::MeetingCancellationMessageType", XSD::QName.new(NsTypes, "MeetingCancellation")]],
      ["task", ["Exchange::TaskType", XSD::QName.new(NsTypes, "Task")]],
      ["postItem", ["Exchange::PostItemType", XSD::QName.new(NsTypes, "PostItem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FileAttachmentType,
    :schema_type => XSD::QName.new(NsTypes, "FileAttachmentType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttachmentType"),
    :schema_element => [
      ["attachmentId", ["Exchange::AttachmentIdType", XSD::QName.new(NsTypes, "AttachmentId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentType")], [0, 1]],
      ["contentId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentId")], [0, 1]],
      ["contentLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ContentLocation")], [0, 1]],
      ["content", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "Content")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfAttachmentsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfAttachmentsType"),
    :schema_element => [ :choice,
      ["itemAttachment", ["Exchange::ItemAttachmentType[]", XSD::QName.new(NsTypes, "ItemAttachment")]],
      ["fileAttachment", ["Exchange::FileAttachmentType[]", XSD::QName.new(NsTypes, "FileAttachment")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfAttachmentsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAttachmentsType"),
    :schema_element => [ :choice,
      ["itemAttachment", ["Exchange::ItemAttachmentType[]", XSD::QName.new(NsTypes, "ItemAttachment")]],
      ["fileAttachment", ["Exchange::FileAttachmentType[]", XSD::QName.new(NsTypes, "FileAttachment")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BodyType,
    :schema_type => XSD::QName.new(NsTypes, "BodyType"),
    :schema_attribute => {
      XSD::QName.new(nil, "BodyType") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DistinguishedFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedFolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderIdType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "FolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfBaseFolderIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfBaseFolderIdsType"),
    :schema_element => [ :choice,
      ["folderId", ["Exchange::FolderIdType[]", XSD::QName.new(NsTypes, "FolderId")]],
      ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType[]", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::TargetFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "TargetFolderIdType"),
    :schema_element => [ :choice,
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
      ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderParentType,
    :schema_type => XSD::QName.new(NsTypes, "FindFolderParentType"),
    :schema_element => [
      ["folders", ["Exchange::ArrayOfFoldersType", XSD::QName.new(NsTypes, "Folders")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ManagedFolderInformationType,
    :schema_type => XSD::QName.new(NsTypes, "ManagedFolderInformationType"),
    :schema_element => [
      ["canDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanDelete")], [0, 1]],
      ["canRenameOrMove", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanRenameOrMove")], [0, 1]],
      ["mustDisplayComment", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MustDisplayComment")], [0, 1]],
      ["hasQuota", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasQuota")], [0, 1]],
      ["isManagedFoldersRoot", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsManagedFoldersRoot")], [0, 1]],
      ["managedFolderId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ManagedFolderId")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Comment")], [0, 1]],
      ["storageQuota", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "StorageQuota")], [0, 1]],
      ["folderSize", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "FolderSize")], [0, 1]],
      ["homePage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "HomePage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FolderType,
    :schema_type => XSD::QName.new(NsTypes, "FolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarFolderType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::CalendarPermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ContactsFolderType,
    :schema_type => XSD::QName.new(NsTypes, "ContactsFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseFolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SearchFolderType,
    :schema_type => XSD::QName.new(NsTypes, "SearchFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]],
      ["searchParameters", ["Exchange::SearchParametersType", XSD::QName.new(NsTypes, "SearchParameters")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::TasksFolderType,
    :schema_type => XSD::QName.new(NsTypes, "TasksFolderType"),
    :schema_basetype => XSD::QName.new(NsTypes, "FolderType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["folderClass", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FolderClass")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["totalCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalCount")], [0, 1]],
      ["childFolderCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChildFolderCount")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["managedFolderInformation", ["Exchange::ManagedFolderInformationType", XSD::QName.new(NsTypes, "ManagedFolderInformation")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["permissionSet", ["Exchange::PermissionSetType", XSD::QName.new(NsTypes, "PermissionSet")], [0, 1]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfFoldersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFoldersType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType[]", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType[]", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType[]", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType[]", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType[]", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfFoldersType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfFoldersType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType[]", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType[]", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType[]", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType[]", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType[]", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "ItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfBaseItemIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfBaseItemIdsType"),
    :schema_element => [ :choice,
      ["itemId", ["Exchange::ItemIdType[]", XSD::QName.new(NsTypes, "ItemId")]],
      ["occurrenceItemId", ["Exchange::OccurrenceItemIdType[]", XSD::QName.new(NsTypes, "OccurrenceItemId")]],
      ["recurringMasterItemId", ["Exchange::RecurringMasterItemIdType[]", XSD::QName.new(NsTypes, "RecurringMasterItemId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfBaseItemIdsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfBaseItemIdsType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType[]", XSD::QName.new(NsTypes, "ItemId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfResponseObjectsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfResponseObjectsType"),
    :schema_element => [ :choice,
      ["acceptItem", ["Exchange::AcceptItemType[]", XSD::QName.new(NsTypes, "AcceptItem")]],
      ["tentativelyAcceptItem", ["Exchange::TentativelyAcceptItemType[]", XSD::QName.new(NsTypes, "TentativelyAcceptItem")]],
      ["declineItem", ["Exchange::DeclineItemType[]", XSD::QName.new(NsTypes, "DeclineItem")]],
      ["replyToItem", ["Exchange::ReplyToItemType[]", XSD::QName.new(NsTypes, "ReplyToItem")]],
      ["forwardItem", ["Exchange::ForwardItemType[]", XSD::QName.new(NsTypes, "ForwardItem")]],
      ["replyAllToItem", ["Exchange::ReplyAllToItemType[]", XSD::QName.new(NsTypes, "ReplyAllToItem")]],
      ["cancelCalendarItem", ["Exchange::CancelCalendarItemType[]", XSD::QName.new(NsTypes, "CancelCalendarItem")]],
      ["removeItem", ["Exchange::RemoveItemType[]", XSD::QName.new(NsTypes, "RemoveItem")]],
      ["suppressReadReceipt", ["Exchange::SuppressReadReceiptType[]", XSD::QName.new(NsTypes, "SuppressReadReceipt")]],
      ["postReplyItem", ["Exchange::PostReplyItemType[]", XSD::QName.new(NsTypes, "PostReplyItem")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FolderChangeType,
    :schema_type => XSD::QName.new(NsTypes, "FolderChangeType"),
    :schema_element => [
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["distinguishedFolderId", ["Exchange::DistinguishedFolderIdType", XSD::QName.new(NsTypes, "DistinguishedFolderId")]]
      ],
      ["updates", ["Exchange::NonEmptyArrayOfFolderChangeDescriptionsType", XSD::QName.new(NsTypes, "Updates")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderChangesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderChangesType"),
    :schema_element => [
      ["folderChange", ["Exchange::FolderChangeType[]", XSD::QName.new(NsTypes, "FolderChange")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::WellKnownResponseObjectType,
    :schema_type => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SmartResponseBaseType,
    :schema_type => XSD::QName.new(NsTypes, "SmartResponseBaseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SmartResponseType,
    :schema_type => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseBaseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ReplyToItemType,
    :schema_type => XSD::QName.new(NsTypes, "ReplyToItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ReplyAllToItemType,
    :schema_type => XSD::QName.new(NsTypes, "ReplyAllToItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ForwardItemType,
    :schema_type => XSD::QName.new(NsTypes, "ForwardItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::CancelCalendarItemType,
    :schema_type => XSD::QName.new(NsTypes, "CancelCalendarItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SmartResponseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ReferenceItemResponseType,
    :schema_type => XSD::QName.new(NsTypes, "ReferenceItemResponseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SuppressReadReceiptType,
    :schema_type => XSD::QName.new(NsTypes, "SuppressReadReceiptType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ReferenceItemResponseType"),
    :schema_element => [
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemParentType,
    :schema_type => XSD::QName.new(NsTypes, "FindItemParentType"),
    :schema_element => [ :choice,
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsTypes, "Items")]],
      ["groups", ["Exchange::ArrayOfGroupedItemsType", XSD::QName.new(NsTypes, "Groups")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ItemType,
    :schema_type => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfStringsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfStringsType"),
    :schema_element => [
      ["string", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "String")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfRealItemsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfRealItemsType"),
    :schema_element => [
      [
        ["item", ["Exchange::ItemType[]", XSD::QName.new(NsTypes, "Item")]],
        ["message", ["Exchange::MessageType[]", XSD::QName.new(NsTypes, "Message")]],
        ["calendarItem", ["Exchange::CalendarItemType[]", XSD::QName.new(NsTypes, "CalendarItem")]],
        ["contact", ["Exchange::ContactItemType[]", XSD::QName.new(NsTypes, "Contact")]],
        ["distributionList", ["Exchange::DistributionListType[]", XSD::QName.new(NsTypes, "DistributionList")]],
        ["meetingMessage", ["Exchange::MeetingMessageType[]", XSD::QName.new(NsTypes, "MeetingMessage")]],
        ["meetingRequest", ["Exchange::MeetingRequestMessageType[]", XSD::QName.new(NsTypes, "MeetingRequest")]],
        ["meetingResponse", ["Exchange::MeetingResponseMessageType[]", XSD::QName.new(NsTypes, "MeetingResponse")]],
        ["meetingCancellation", ["Exchange::MeetingCancellationMessageType[]", XSD::QName.new(NsTypes, "MeetingCancellation")]],
        ["task", ["Exchange::TaskType[]", XSD::QName.new(NsTypes, "Task")]],
        ["postItem", ["Exchange::PostItemType[]", XSD::QName.new(NsTypes, "PostItem")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfAllItemsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAllItemsType"),
    :schema_element => [
      [
        ["item", ["Exchange::ItemType[]", XSD::QName.new(NsTypes, "Item")]],
        ["message", ["Exchange::MessageType[]", XSD::QName.new(NsTypes, "Message")]],
        ["calendarItem", ["Exchange::CalendarItemType[]", XSD::QName.new(NsTypes, "CalendarItem")]],
        ["contact", ["Exchange::ContactItemType[]", XSD::QName.new(NsTypes, "Contact")]],
        ["distributionList", ["Exchange::DistributionListType[]", XSD::QName.new(NsTypes, "DistributionList")]],
        ["meetingMessage", ["Exchange::MeetingMessageType[]", XSD::QName.new(NsTypes, "MeetingMessage")]],
        ["meetingRequest", ["Exchange::MeetingRequestMessageType[]", XSD::QName.new(NsTypes, "MeetingRequest")]],
        ["meetingResponse", ["Exchange::MeetingResponseMessageType[]", XSD::QName.new(NsTypes, "MeetingResponse")]],
        ["meetingCancellation", ["Exchange::MeetingCancellationMessageType[]", XSD::QName.new(NsTypes, "MeetingCancellation")]],
        ["task", ["Exchange::TaskType[]", XSD::QName.new(NsTypes, "Task")]],
        ["postItem", ["Exchange::PostItemType[]", XSD::QName.new(NsTypes, "PostItem")]],
        ["replyToItem", ["Exchange::ReplyToItemType[]", XSD::QName.new(NsTypes, "ReplyToItem")]],
        ["forwardItem", ["Exchange::ForwardItemType[]", XSD::QName.new(NsTypes, "ForwardItem")]],
        ["replyAllToItem", ["Exchange::ReplyAllToItemType[]", XSD::QName.new(NsTypes, "ReplyAllToItem")]],
        ["acceptItem", ["Exchange::AcceptItemType[]", XSD::QName.new(NsTypes, "AcceptItem")]],
        ["tentativelyAcceptItem", ["Exchange::TentativelyAcceptItemType[]", XSD::QName.new(NsTypes, "TentativelyAcceptItem")]],
        ["declineItem", ["Exchange::DeclineItemType[]", XSD::QName.new(NsTypes, "DeclineItem")]],
        ["cancelCalendarItem", ["Exchange::CancelCalendarItemType[]", XSD::QName.new(NsTypes, "CancelCalendarItem")]],
        ["removeItem", ["Exchange::RemoveItemType[]", XSD::QName.new(NsTypes, "RemoveItem")]],
        ["suppressReadReceipt", ["Exchange::SuppressReadReceiptType[]", XSD::QName.new(NsTypes, "SuppressReadReceipt")]],
        ["postReplyItem", ["Exchange::PostReplyItemType[]", XSD::QName.new(NsTypes, "PostReplyItem")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AcceptItemType,
    :schema_type => XSD::QName.new(NsTypes, "AcceptItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::TentativelyAcceptItemType,
    :schema_type => XSD::QName.new(NsTypes, "TentativelyAcceptItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DeclineItemType,
    :schema_type => XSD::QName.new(NsTypes, "DeclineItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "WellKnownResponseObjectType"),
    :schema_element => [
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveItemType,
    :schema_type => XSD::QName.new(NsTypes, "RemoveItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PostReplyItemBaseType,
    :schema_type => XSD::QName.new(NsTypes, "PostReplyItemBaseType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ResponseObjectType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PostReplyItemType,
    :schema_type => XSD::QName.new(NsTypes, "PostReplyItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "PostReplyItemBaseType"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["referenceItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ReferenceItemId")], [0, 1]],
      ["newBodyContent", ["Exchange::BodyType", XSD::QName.new(NsTypes, "NewBodyContent")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ObjectName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::MimeContentType,
    :schema_type => XSD::QName.new(NsTypes, "MimeContentType"),
    :schema_attribute => {
      XSD::QName.new(nil, "CharacterSet") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::MessageType,
    :schema_type => XSD::QName.new(NsTypes, "MessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::TaskType,
    :schema_type => XSD::QName.new(NsTypes, "TaskType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["actualWork", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ActualWork")], [0, 1]],
      ["assignedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AssignedTime")], [0, 1]],
      ["billingInformation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "BillingInformation")], [0, 1]],
      ["changeCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ChangeCount")], [0, 1]],
      ["companies", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Companies")], [0, 1]],
      ["completeDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "CompleteDate")], [0, 1]],
      ["contacts", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Contacts")], [0, 1]],
      ["delegationState", ["Exchange::TaskDelegateStateType", XSD::QName.new(NsTypes, "DelegationState")], [0, 1]],
      ["delegator", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Delegator")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DueDate")], [0, 1]],
      ["isAssignmentEditable", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "IsAssignmentEditable")], [0, 1]],
      ["isComplete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsComplete")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["isTeamTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsTeamTask")], [0, 1]],
      ["mileage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Mileage")], [0, 1]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Owner")], [0, 1]],
      ["percentComplete", ["SOAP::SOAPDouble", XSD::QName.new(NsTypes, "PercentComplete")], [0, 1]],
      ["recurrence", ["Exchange::TaskRecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartDate")], [0, 1]],
      ["status", ["Exchange::TaskStatusType", XSD::QName.new(NsTypes, "Status")], [0, 1]],
      ["statusDescription", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "StatusDescription")], [0, 1]],
      ["totalWork", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "TotalWork")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PostItemType,
    :schema_type => XSD::QName.new(NsTypes, "PostItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["postedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "PostedTime")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IndexedPageViewType,
    :schema_type => XSD::QName.new(NsTypes, "IndexedPageViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Offset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "BasePoint") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FractionalPageViewType,
    :schema_type => XSD::QName.new(NsTypes, "FractionalPageViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Numerator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Denominator") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarViewType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "StartDate") => "SOAP::SOAPDateTime",
      XSD::QName.new(nil, "EndDate") => "SOAP::SOAPDateTime"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ContactsViewType,
    :schema_type => XSD::QName.new(NsTypes, "ContactsViewType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePagingType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MaxEntriesReturned") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "InitialName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FinalName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ResolutionType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]],
      ["contact", ["Exchange::ContactItemType", XSD::QName.new(NsTypes, "Contact")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfResolutionType"),
    :schema_element => [
      ["resolution", ["Exchange::ResolutionType[]", XSD::QName.new(NsTypes, "Resolution")], [0, 100]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfDLExpansionType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDLExpansionType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType[]", XSD::QName.new(NsTypes, "Mailbox")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IndexedPagingOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "NumeratorOffset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "AbsoluteDenominator") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "IncludesLastItemInRange") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "TotalItemsInView") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AttendeeType,
    :schema_type => XSD::QName.new(NsTypes, "AttendeeType"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsTypes, "Mailbox")]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["lastResponseTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastResponseTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfAttendeesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAttendeesType"),
    :schema_element => [
      ["attendee", ["Exchange::AttendeeType[]", XSD::QName.new(NsTypes, "Attendee")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::OccurrenceItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "RecurringMasterId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString",
      XSD::QName.new(nil, "InstanceIndex") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RecurringMasterItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "RecurringMasterItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseItemIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "OccurrenceId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ChangeKey") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DailyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "DailyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::WeeklyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "WeeklyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MonthlyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "MonthlyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::YearlyRegeneratingPatternType,
    :schema_type => XSD::QName.new(NsTypes, "YearlyRegeneratingPatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RegeneratingPatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RelativeYearlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "RelativeYearlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrencePatternBaseType"),
    :schema_element => [
      ["daysOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DaysOfWeek")]],
      ["dayOfWeekIndex", ["Exchange::DayOfWeekIndexType", XSD::QName.new(NsTypes, "DayOfWeekIndex")]],
      ["month", ["Exchange::MonthNamesType", XSD::QName.new(NsTypes, "Month")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AbsoluteYearlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrencePatternBaseType"),
    :schema_element => [
      ["dayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "DayOfMonth")]],
      ["month", ["Exchange::MonthNamesType", XSD::QName.new(NsTypes, "Month")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RelativeMonthlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "RelativeMonthlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["daysOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DaysOfWeek")]],
      ["dayOfWeekIndex", ["Exchange::DayOfWeekIndexType", XSD::QName.new(NsTypes, "DayOfWeekIndex")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AbsoluteMonthlyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["dayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "DayOfMonth")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::WeeklyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "WeeklyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]],
      ["daysOfWeek", [nil, XSD::QName.new(NsTypes, "DaysOfWeek")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DailyRecurrencePatternType,
    :schema_type => XSD::QName.new(NsTypes, "DailyRecurrencePatternType"),
    :schema_basetype => XSD::QName.new(NsTypes, "IntervalRecurrencePatternBaseType"),
    :schema_element => [
      ["interval", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::TimeChangeType,
    :schema_type => XSD::QName.new(NsTypes, "TimeChangeType"),
    :schema_element => [
      ["offset", ["SOAP::SOAPDuration", XSD::QName.new(NsTypes, "Offset")]],
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "AbsoluteDate")]]
      ],
      ["time", ["SOAP::SOAPTime", XSD::QName.new(NsTypes, "Time")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "TimeZoneName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::TimeZoneType,
    :schema_type => XSD::QName.new(NsTypes, "TimeZoneType"),
    :schema_element => [
      ["baseOffset", ["SOAP::SOAPDuration", XSD::QName.new(NsTypes, "BaseOffset")]],
      [
        ["standard", ["Exchange::TimeChangeType", XSD::QName.new(NsTypes, "Standard")]],
        ["daylight", ["Exchange::TimeChangeType", XSD::QName.new(NsTypes, "Daylight")]]
      ]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "TimeZoneName") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NoEndRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "NoEndRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::EndDateRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "EndDateRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "EndDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NumberedRecurrenceRangeType,
    :schema_type => XSD::QName.new(NsTypes, "NumberedRecurrenceRangeType"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecurrenceRangeBaseType"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "StartDate")]],
      ["numberOfOccurrences", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfOccurrences")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RecurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceType"),
    :schema_element => [
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteYearlyRecurrence", ["Exchange::AbsoluteYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrence")]],
        ["relativeMonthlyRecurrence", ["Exchange::RelativeMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeMonthlyRecurrence")]],
        ["absoluteMonthlyRecurrence", ["Exchange::AbsoluteMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrence")]],
        ["weeklyRecurrence", ["Exchange::WeeklyRecurrencePatternType", XSD::QName.new(NsTypes, "WeeklyRecurrence")]],
        ["dailyRecurrence", ["Exchange::DailyRecurrencePatternType", XSD::QName.new(NsTypes, "DailyRecurrence")]]
      ],
      [ :choice,
        ["noEndRecurrence", ["Exchange::NoEndRecurrenceRangeType", XSD::QName.new(NsTypes, "NoEndRecurrence")]],
        ["endDateRecurrence", ["Exchange::EndDateRecurrenceRangeType", XSD::QName.new(NsTypes, "EndDateRecurrence")]],
        ["numberedRecurrence", ["Exchange::NumberedRecurrenceRangeType", XSD::QName.new(NsTypes, "NumberedRecurrence")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::TaskRecurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "TaskRecurrenceType"),
    :schema_element => [
      [ :choice,
        ["relativeYearlyRecurrence", ["Exchange::RelativeYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeYearlyRecurrence")]],
        ["absoluteYearlyRecurrence", ["Exchange::AbsoluteYearlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteYearlyRecurrence")]],
        ["relativeMonthlyRecurrence", ["Exchange::RelativeMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "RelativeMonthlyRecurrence")]],
        ["absoluteMonthlyRecurrence", ["Exchange::AbsoluteMonthlyRecurrencePatternType", XSD::QName.new(NsTypes, "AbsoluteMonthlyRecurrence")]],
        ["weeklyRecurrence", ["Exchange::WeeklyRecurrencePatternType", XSD::QName.new(NsTypes, "WeeklyRecurrence")]],
        ["dailyRecurrence", ["Exchange::DailyRecurrencePatternType", XSD::QName.new(NsTypes, "DailyRecurrence")]],
        ["dailyRegeneration", ["Exchange::DailyRegeneratingPatternType", XSD::QName.new(NsTypes, "DailyRegeneration")]],
        ["weeklyRegeneration", ["Exchange::WeeklyRegeneratingPatternType", XSD::QName.new(NsTypes, "WeeklyRegeneration")]],
        ["monthlyRegeneration", ["Exchange::MonthlyRegeneratingPatternType", XSD::QName.new(NsTypes, "MonthlyRegeneration")]],
        ["yearlyRegeneration", ["Exchange::YearlyRegeneratingPatternType", XSD::QName.new(NsTypes, "YearlyRegeneration")]]
      ],
      [ :choice,
        ["noEndRecurrence", ["Exchange::NoEndRecurrenceRangeType", XSD::QName.new(NsTypes, "NoEndRecurrence")]],
        ["endDateRecurrence", ["Exchange::EndDateRecurrenceRangeType", XSD::QName.new(NsTypes, "EndDateRecurrence")]],
        ["numberedRecurrence", ["Exchange::NumberedRecurrenceRangeType", XSD::QName.new(NsTypes, "NumberedRecurrence")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::OccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceInfoType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfOccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfOccurrenceInfoType"),
    :schema_element => [
      ["occurrence", ["Exchange::OccurrenceInfoType[]", XSD::QName.new(NsTypes, "Occurrence")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeletedOccurrenceInfoType,
    :schema_type => XSD::QName.new(NsTypes, "DeletedOccurrenceInfoType"),
    :schema_element => [
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfDeletedOccurrencesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfDeletedOccurrencesType"),
    :schema_element => [
      ["deletedOccurrence", ["Exchange::DeletedOccurrenceInfoType[]", XSD::QName.new(NsTypes, "DeletedOccurrence")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarItemType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")], [0, 1]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")], [0, 1]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsAllDayEvent")], [0, 1]],
      ["legacyFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "LegacyFreeBusyStatus")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["v_when", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "When")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsCancelled")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["meetingRequestWasSent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MeetingRequestWasSent")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["calendarItemType", ["Exchange::CalendarItemTypeType", XSD::QName.new(NsTypes, "CalendarItemType")], [0, 1]],
      ["myResponseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "MyResponseType")], [0, 1]],
      ["organizer", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Organizer")], [0, 1]],
      ["requiredAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "RequiredAttendees")], [0, 1]],
      ["optionalAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "OptionalAttendees")], [0, 1]],
      ["resources", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "Resources")], [0, 1]],
      ["conflictingMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConflictingMeetingCount")], [0, 1]],
      ["adjacentMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AdjacentMeetingCount")], [0, 1]],
      ["conflictingMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "ConflictingMeetings")], [0, 1]],
      ["adjacentMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "AdjacentMeetings")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "TimeZone")], [0, 1]],
      ["appointmentReplyTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AppointmentReplyTime")], [0, 1]],
      ["appointmentSequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentSequenceNumber")], [0, 1]],
      ["appointmentState", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentState")], [0, 1]],
      ["recurrence", ["Exchange::RecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["firstOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "FirstOccurrence")], [0, 1]],
      ["lastOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "LastOccurrence")], [0, 1]],
      ["modifiedOccurrences", ["Exchange::NonEmptyArrayOfOccurrenceInfoType", XSD::QName.new(NsTypes, "ModifiedOccurrences")], [0, 1]],
      ["deletedOccurrences", ["Exchange::NonEmptyArrayOfDeletedOccurrencesType", XSD::QName.new(NsTypes, "DeletedOccurrences")], [0, 1]],
      ["meetingTimeZone", ["Exchange::TimeZoneType", XSD::QName.new(NsTypes, "MeetingTimeZone")], [0, 1]],
      ["conferenceType", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConferenceType")], [0, 1]],
      ["allowNewTimeProposal", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "AllowNewTimeProposal")], [0, 1]],
      ["isOnlineMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOnlineMeeting")], [0, 1]],
      ["meetingWorkspaceUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MeetingWorkspaceUrl")], [0, 1]],
      ["netShowUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "NetShowUrl")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingRequestMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingRequestMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]],
      ["meetingRequestType", ["Exchange::MeetingRequestTypeType", XSD::QName.new(NsTypes, "MeetingRequestType")], [0, 1]],
      ["intendedFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "IntendedFreeBusyStatus")], [0, 1]],
      ["start", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Start")], [0, 1]],
      ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "End")], [0, 1]],
      ["originalStart", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "OriginalStart")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsAllDayEvent")], [0, 1]],
      ["legacyFreeBusyStatus", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "LegacyFreeBusyStatus")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["v_when", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "When")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsCancelled")], [0, 1]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")], [0, 1]],
      ["meetingRequestWasSent", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MeetingRequestWasSent")], [0, 1]],
      ["calendarItemType", ["Exchange::CalendarItemTypeType", XSD::QName.new(NsTypes, "CalendarItemType")], [0, 1]],
      ["myResponseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "MyResponseType")], [0, 1]],
      ["organizer", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Organizer")], [0, 1]],
      ["requiredAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "RequiredAttendees")], [0, 1]],
      ["optionalAttendees", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "OptionalAttendees")], [0, 1]],
      ["resources", ["Exchange::NonEmptyArrayOfAttendeesType", XSD::QName.new(NsTypes, "Resources")], [0, 1]],
      ["conflictingMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConflictingMeetingCount")], [0, 1]],
      ["adjacentMeetingCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AdjacentMeetingCount")], [0, 1]],
      ["conflictingMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "ConflictingMeetings")], [0, 1]],
      ["adjacentMeetings", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsTypes, "AdjacentMeetings")], [0, 1]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "TimeZone")], [0, 1]],
      ["appointmentReplyTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "AppointmentReplyTime")], [0, 1]],
      ["appointmentSequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentSequenceNumber")], [0, 1]],
      ["appointmentState", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "AppointmentState")], [0, 1]],
      ["recurrence", ["Exchange::RecurrenceType", XSD::QName.new(NsTypes, "Recurrence")], [0, 1]],
      ["firstOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "FirstOccurrence")], [0, 1]],
      ["lastOccurrence", ["Exchange::OccurrenceInfoType", XSD::QName.new(NsTypes, "LastOccurrence")], [0, 1]],
      ["modifiedOccurrences", ["Exchange::NonEmptyArrayOfOccurrenceInfoType", XSD::QName.new(NsTypes, "ModifiedOccurrences")], [0, 1]],
      ["deletedOccurrences", ["Exchange::NonEmptyArrayOfDeletedOccurrencesType", XSD::QName.new(NsTypes, "DeletedOccurrences")], [0, 1]],
      ["meetingTimeZone", ["Exchange::TimeZoneType", XSD::QName.new(NsTypes, "MeetingTimeZone")], [0, 1]],
      ["conferenceType", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "ConferenceType")], [0, 1]],
      ["allowNewTimeProposal", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "AllowNewTimeProposal")], [0, 1]],
      ["isOnlineMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOnlineMeeting")], [0, 1]],
      ["meetingWorkspaceUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MeetingWorkspaceUrl")], [0, 1]],
      ["netShowUrl", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "NetShowUrl")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingResponseMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingResponseMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingCancellationMessageType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingCancellationMessageType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MeetingMessageType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["sender", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "Sender")], [0, 1]],
      ["toRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ToRecipients")], [0, 1]],
      ["ccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "CcRecipients")], [0, 1]],
      ["bccRecipients", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "BccRecipients")], [0, 1]],
      ["isReadReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReadReceiptRequested")], [0, 1]],
      ["isDeliveryReceiptRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDeliveryReceiptRequested")], [0, 1]],
      ["conversationIndex", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "ConversationIndex")], [0, 1]],
      ["conversationTopic", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ConversationTopic")], [0, 1]],
      ["from", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "From")], [0, 1]],
      ["internetMessageId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InternetMessageId")], [0, 1]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")], [0, 1]],
      ["isResponseRequested", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResponseRequested")], [0, 1]],
      ["references", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "References")], [0, 1]],
      ["replyTo", ["Exchange::ArrayOfRecipientsType", XSD::QName.new(NsTypes, "ReplyTo")], [0, 1]],
      ["receivedBy", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedBy")], [0, 1]],
      ["receivedRepresenting", ["Exchange::SingleRecipientType", XSD::QName.new(NsTypes, "ReceivedRepresenting")], [0, 1]],
      ["associatedCalendarItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "AssociatedCalendarItemId")], [0, 1]],
      ["isDelegated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDelegated")], [0, 1]],
      ["isOutOfDate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsOutOfDate")], [0, 1]],
      ["hasBeenProcessed", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasBeenProcessed")], [0, 1]],
      ["responseType", ["Exchange::ResponseTypeType", XSD::QName.new(NsTypes, "ResponseType")], [0, 1]],
      ["uID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UID")], [0, 1]],
      ["recurrenceId", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "RecurrenceId")], [0, 1]],
      ["dateTimeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CompleteNameType,
    :schema_type => XSD::QName.new(NsTypes, "CompleteNameType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Title")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FirstName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MiddleName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastName")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Suffix")], [0, 1]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Initials")], [0, 1]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FullName")], [0, 1]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Nickname")], [0, 1]],
      ["yomiFirstName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "YomiFirstName")], [0, 1]],
      ["yomiLastName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "YomiLastName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ImAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PhoneNumberDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberDictionaryEntryType"),
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PhysicalAddressDictionaryEntryType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressDictionaryEntryType"),
    :schema_element => [
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "State")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "CountryOrRegion")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PostalCode")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Key") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ImAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::ImAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::EmailAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PhoneNumberDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::PhoneNumberDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PhysicalAddressDictionaryType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressDictionaryType"),
    :schema_element => [
      ["entry", ["Exchange::PhysicalAddressDictionaryEntryType[]", XSD::QName.new(NsTypes, "Entry")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ContactItemType,
    :schema_type => XSD::QName.new(NsTypes, "ContactItemType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["fileAs", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FileAs")], [0, 1]],
      ["fileAsMapping", ["Exchange::FileAsMappingType", XSD::QName.new(NsTypes, "FileAsMapping")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GivenName")], [0, 1]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Initials")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MiddleName")], [0, 1]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Nickname")], [0, 1]],
      ["completeName", ["Exchange::CompleteNameType", XSD::QName.new(NsTypes, "CompleteName")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "CompanyName")], [0, 1]],
      ["emailAddresses", ["Exchange::EmailAddressDictionaryType", XSD::QName.new(NsTypes, "EmailAddresses")], [0, 1]],
      ["physicalAddresses", ["Exchange::PhysicalAddressDictionaryType", XSD::QName.new(NsTypes, "PhysicalAddresses")], [0, 1]],
      ["phoneNumbers", ["Exchange::PhoneNumberDictionaryType", XSD::QName.new(NsTypes, "PhoneNumbers")], [0, 1]],
      ["assistantName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "AssistantName")], [0, 1]],
      ["birthday", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Birthday")], [0, 1]],
      ["businessHomePage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsTypes, "BusinessHomePage")], [0, 1]],
      ["children", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Children")], [0, 1]],
      ["companies", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Companies")], [0, 1]],
      ["contactSource", ["Exchange::ContactSourceType", XSD::QName.new(NsTypes, "ContactSource")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Department")], [0, 1]],
      ["generation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Generation")], [0, 1]],
      ["imAddresses", ["Exchange::ImAddressDictionaryType", XSD::QName.new(NsTypes, "ImAddresses")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "JobTitle")], [0, 1]],
      ["manager", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Manager")], [0, 1]],
      ["mileage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Mileage")], [0, 1]],
      ["officeLocation", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "OfficeLocation")], [0, 1]],
      ["postalAddressIndex", ["Exchange::PhysicalAddressIndexType", XSD::QName.new(NsTypes, "PostalAddressIndex")], [0, 1]],
      ["profession", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Profession")], [0, 1]],
      ["spouseName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SpouseName")], [0, 1]],
      ["surname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Surname")], [0, 1]],
      ["weddingAnniversary", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "WeddingAnniversary")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DistributionListType,
    :schema_type => XSD::QName.new(NsTypes, "DistributionListType"),
    :schema_basetype => XSD::QName.new(NsTypes, "ItemType"),
    :schema_element => [
      ["mimeContent", ["Exchange::MimeContentType", XSD::QName.new(NsTypes, "MimeContent")], [0, 1]],
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")], [0, 1]],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")], [0, 1]],
      ["itemClass", [nil, XSD::QName.new(NsTypes, "ItemClass")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["sensitivity", ["Exchange::SensitivityChoicesType", XSD::QName.new(NsTypes, "Sensitivity")], [0, 1]],
      ["body", ["Exchange::BodyType", XSD::QName.new(NsTypes, "Body")], [0, 1]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsTypes, "Attachments")], [0, 1]],
      ["dateTimeReceived", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeReceived")], [0, 1]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Size")], [0, 1]],
      ["categories", ["Exchange::ArrayOfStringsType", XSD::QName.new(NsTypes, "Categories")], [0, 1]],
      ["importance", ["Exchange::ImportanceChoicesType", XSD::QName.new(NsTypes, "Importance")], [0, 1]],
      ["inReplyTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "InReplyTo")], [0, 1]],
      ["isSubmitted", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsSubmitted")], [0, 1]],
      ["isDraft", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsDraft")], [0, 1]],
      ["isFromMe", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFromMe")], [0, 1]],
      ["isResend", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsResend")], [0, 1]],
      ["isUnmodified", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsUnmodified")], [0, 1]],
      ["internetMessageHeaders", ["Exchange::NonEmptyArrayOfInternetHeadersType", XSD::QName.new(NsTypes, "InternetMessageHeaders")], [0, 1]],
      ["dateTimeSent", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeSent")], [0, 1]],
      ["dateTimeCreated", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "DateTimeCreated")], [0, 1]],
      ["responseObjects", ["Exchange::NonEmptyArrayOfResponseObjectsType", XSD::QName.new(NsTypes, "ResponseObjects")], [0, 1]],
      ["reminderDueBy", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "ReminderDueBy")], [0, 1]],
      ["reminderIsSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReminderIsSet")], [0, 1]],
      ["reminderMinutesBeforeStart", [nil, XSD::QName.new(NsTypes, "ReminderMinutesBeforeStart")], [0, 1]],
      ["displayCc", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayCc")], [0, 1]],
      ["displayTo", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayTo")], [0, 1]],
      ["hasAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "HasAttachments")], [0, 1]],
      ["extendedProperty", ["Exchange::ExtendedPropertyType[]", XSD::QName.new(NsTypes, "ExtendedProperty")], [0, nil]],
      ["culture", ["SOAP::SOAPLanguage", XSD::QName.new(NsTypes, "Culture")], [0, 1]],
      ["effectiveRights", ["Exchange::EffectiveRightsType", XSD::QName.new(NsTypes, "EffectiveRights")], [0, 1]],
      ["lastModifiedName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "LastModifiedName")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "LastModifiedTime")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["fileAs", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "FileAs")], [0, 1]],
      ["contactSource", ["Exchange::ContactSourceType", XSD::QName.new(NsTypes, "ContactSource")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SearchParametersType,
    :schema_type => XSD::QName.new(NsTypes, "SearchParametersType"),
    :schema_element => [
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsTypes, "Restriction")]],
      ["baseFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "BaseFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ConstantValueType,
    :schema_type => XSD::QName.new(NsTypes, "ConstantValueType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Value") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AggregateOnType,
    :schema_type => XSD::QName.new(NsTypes, "AggregateOnType"),
    :schema_element => [ :choice,
      ["fieldURI", ["Exchange::PathToUnindexedFieldType", XSD::QName.new(NsTypes, "FieldURI")]],
      ["indexedFieldURI", ["Exchange::PathToIndexedFieldType", XSD::QName.new(NsTypes, "IndexedFieldURI")]],
      ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Aggregate") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GroupByType,
    :schema_type => XSD::QName.new(NsTypes, "GroupByType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseGroupByType"),
    :schema_element => [
      [ :choice,
        ["fieldURI", ["Exchange::PathToUnindexedFieldType", XSD::QName.new(NsTypes, "FieldURI")]],
        ["indexedFieldURI", ["Exchange::PathToIndexedFieldType", XSD::QName.new(NsTypes, "IndexedFieldURI")]],
        ["extendedFieldURI", ["Exchange::PathToExtendedFieldType", XSD::QName.new(NsTypes, "ExtendedFieldURI")]]
      ],
      ["aggregateOn", ["Exchange::AggregateOnType", XSD::QName.new(NsTypes, "AggregateOn")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DistinguishedGroupByType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedGroupByType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseGroupByType"),
    :schema_element => [
      ["standardGroupBy", ["Exchange::StandardGroupByType", XSD::QName.new(NsTypes, "StandardGroupBy")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GroupedItemsType,
    :schema_type => XSD::QName.new(NsTypes, "GroupedItemsType"),
    :schema_element => [
      ["groupIndex", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GroupIndex")]],
      ["items", ["Exchange::ArrayOfRealItemsType", XSD::QName.new(NsTypes, "Items")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfGroupedItemsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfGroupedItemsType"),
    :schema_element => [
      ["groupedItems", ["Exchange::GroupedItemsType[]", XSD::QName.new(NsTypes, "GroupedItems")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExistsType,
    :schema_type => XSD::QName.new(NsTypes, "ExistsType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FieldURIOrConstantType,
    :schema_type => XSD::QName.new(NsTypes, "FieldURIOrConstantType"),
    :schema_element => [ :choice,
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["constant", ["Exchange::ConstantValueType", XSD::QName.new(NsTypes, "Constant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExcludesValueType,
    :schema_type => XSD::QName.new(NsTypes, "ExcludesValueType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Value") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ExcludesType,
    :schema_type => XSD::QName.new(NsTypes, "ExcludesType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["bitmask", ["Exchange::ExcludesValueType", XSD::QName.new(NsTypes, "Bitmask")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsNotEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsNotEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsGreaterThanType,
    :schema_type => XSD::QName.new(NsTypes, "IsGreaterThanType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsGreaterThanOrEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsGreaterThanOrEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsLessThanType,
    :schema_type => XSD::QName.new(NsTypes, "IsLessThanType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsLessThanOrEqualToType,
    :schema_type => XSD::QName.new(NsTypes, "IsLessThanOrEqualToType"),
    :schema_basetype => XSD::QName.new(NsTypes, "TwoOperandExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ContainsExpressionType,
    :schema_type => XSD::QName.new(NsTypes, "ContainsExpressionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["constant", ["Exchange::ConstantValueType", XSD::QName.new(NsTypes, "Constant")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ContainmentMode") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ContainmentComparison") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NotType,
    :schema_type => XSD::QName.new(NsTypes, "NotType"),
    :schema_basetype => XSD::QName.new(NsTypes, "SearchExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType", XSD::QName.new(NsTypes, "SearchExpression")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AndType,
    :schema_type => XSD::QName.new(NsTypes, "AndType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MultipleOperandBooleanExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::OrType,
    :schema_type => XSD::QName.new(NsTypes, "OrType"),
    :schema_basetype => XSD::QName.new(NsTypes, "MultipleOperandBooleanExpressionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RestrictionType,
    :schema_type => XSD::QName.new(NsTypes, "RestrictionType"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType", XSD::QName.new(NsTypes, "SearchExpression")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FieldOrderType,
    :schema_type => XSD::QName.new(NsTypes, "FieldOrderType"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Order") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfFieldOrdersType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFieldOrdersType"),
    :schema_element => [
      ["fieldOrder", ["Exchange::FieldOrderType[]", XSD::QName.new(NsTypes, "FieldOrder")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfFolderNamesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfFolderNamesType"),
    :schema_element => [
      ["folderName", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "FolderName")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BaseNotificationEventType,
    :schema_type => XSD::QName.new(NsTypes, "BaseNotificationEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::BaseObjectChangedEventType,
    :schema_type => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseNotificationEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ModifiedEventType,
    :schema_type => XSD::QName.new(NsTypes, "ModifiedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]],
      ["unreadCount", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "UnreadCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MovedCopiedEventType,
    :schema_type => XSD::QName.new(NsTypes, "MovedCopiedEventType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseObjectChangedEventType"),
    :schema_element => [
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "TimeStamp")]],
      [ :choice,
        ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]],
        ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
      ],
      ["parentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "ParentFolderId")]],
      [ :choice,
        ["oldFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "OldFolderId")]],
        ["oldItemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "OldItemId")]]
      ],
      ["oldParentFolderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "OldParentFolderId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NotificationType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationType"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsTypes, "SubscriptionId")]],
      ["previousWatermark", [nil, XSD::QName.new(NsTypes, "PreviousWatermark")]],
      ["moreEvents", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "MoreEvents")]],
      [
        ["copiedEvent", ["Exchange::MovedCopiedEventType[]", XSD::QName.new(NsTypes, "CopiedEvent")]],
        ["createdEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "CreatedEvent")]],
        ["deletedEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "DeletedEvent")]],
        ["modifiedEvent", ["Exchange::ModifiedEventType[]", XSD::QName.new(NsTypes, "ModifiedEvent")]],
        ["movedEvent", ["Exchange::MovedCopiedEventType[]", XSD::QName.new(NsTypes, "MovedEvent")]],
        ["newMailEvent", ["Exchange::BaseObjectChangedEventType[]", XSD::QName.new(NsTypes, "NewMailEvent")]],
        ["statusEvent", ["Exchange::BaseNotificationEventType[]", XSD::QName.new(NsTypes, "StatusEvent")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfNotificationEventTypesType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfNotificationEventTypesType"),
    :schema_element => [
      ["eventType", ["Exchange::NotificationEventTypeType[]", XSD::QName.new(NsTypes, "EventType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PushSubscriptionRequestType,
    :schema_type => XSD::QName.new(NsTypes, "PushSubscriptionRequestType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseSubscriptionRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "FolderIds")]],
      ["eventTypes", ["Exchange::NonEmptyArrayOfNotificationEventTypesType", XSD::QName.new(NsTypes, "EventTypes")]],
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")], [0, 1]],
      ["statusFrequency", [nil, XSD::QName.new(NsTypes, "StatusFrequency")]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "URL")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PullSubscriptionRequestType,
    :schema_type => XSD::QName.new(NsTypes, "PullSubscriptionRequestType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseSubscriptionRequestType"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsTypes, "FolderIds")]],
      ["eventTypes", ["Exchange::NonEmptyArrayOfNotificationEventTypesType", XSD::QName.new(NsTypes, "EventTypes")]],
      ["watermark", [nil, XSD::QName.new(NsTypes, "Watermark")], [0, 1]],
      ["timeout", [nil, XSD::QName.new(NsTypes, "Timeout")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsDeleteType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsDeleteType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsReadFlagType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsReadFlagType"),
    :schema_element => [
      ["itemId", ["Exchange::ItemIdType", XSD::QName.new(NsTypes, "ItemId")]],
      ["isRead", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRead")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsChangesType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderItemsChangesType"),
    :schema_element => [
      [
        ["create", ["Exchange::SyncFolderItemsCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Create")]],
        ["update", ["Exchange::SyncFolderItemsCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Update")]],
        ["delete", ["Exchange::SyncFolderItemsDeleteType[]", XSD::QName.new(NsTypes, "Delete")]],
        ["readFlagChange", ["Exchange::SyncFolderItemsReadFlagType[]", XSD::QName.new(NsTypes, "ReadFlagChange")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyCreateOrUpdateType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyCreateOrUpdateType"),
    :schema_element => [ :choice,
      ["folder", ["Exchange::FolderType", XSD::QName.new(NsTypes, "Folder")]],
      ["calendarFolder", ["Exchange::CalendarFolderType", XSD::QName.new(NsTypes, "CalendarFolder")]],
      ["contactsFolder", ["Exchange::ContactsFolderType", XSD::QName.new(NsTypes, "ContactsFolder")]],
      ["searchFolder", ["Exchange::SearchFolderType", XSD::QName.new(NsTypes, "SearchFolder")]],
      ["tasksFolder", ["Exchange::TasksFolderType", XSD::QName.new(NsTypes, "TasksFolder")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyDeleteType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyDeleteType"),
    :schema_element => [
      ["folderId", ["Exchange::FolderIdType", XSD::QName.new(NsTypes, "FolderId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyChangesType,
    :schema_type => XSD::QName.new(NsTypes, "SyncFolderHierarchyChangesType"),
    :schema_element => [
      [
        ["create", ["Exchange::SyncFolderHierarchyCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Create")]],
        ["update", ["Exchange::SyncFolderHierarchyCreateOrUpdateType[]", XSD::QName.new(NsTypes, "Update")]],
        ["delete", ["Exchange::SyncFolderHierarchyDeleteType[]", XSD::QName.new(NsTypes, "Delete")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarEventDetails,
    :schema_type => XSD::QName.new(NsTypes, "CalendarEventDetails"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "ID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Subject")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Location")], [0, 1]],
      ["isMeeting", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsMeeting")]],
      ["isRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsRecurring")]],
      ["isException", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsException")]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsReminderSet")]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsPrivate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarEvent,
    :schema_type => XSD::QName.new(NsTypes, "CalendarEvent"),
    :schema_element => [
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartTime")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "EndTime")]],
      ["busyType", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "BusyType")]],
      ["calendarEventDetails", ["Exchange::CalendarEventDetails", XSD::QName.new(NsTypes, "CalendarEventDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfCalendarEvent,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCalendarEvent"),
    :schema_element => [
      ["calendarEvent", ["Exchange::CalendarEvent[]", XSD::QName.new(NsTypes, "CalendarEvent")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::Duration,
    :schema_type => XSD::QName.new(NsTypes, "Duration"),
    :schema_element => [
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "StartTime")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "EndTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddress,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddress"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Address")]],
      ["routingType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "RoutingType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FreeBusyViewOptionsType,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyViewOptionsType"),
    :schema_element => [
      ["timeWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "TimeWindow")]],
      ["mergedFreeBusyIntervalInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MergedFreeBusyIntervalInMinutes")], [0, 1]],
      ["requestedView", [nil, XSD::QName.new(NsTypes, "RequestedView")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::WorkingPeriod,
    :schema_type => XSD::QName.new(NsTypes, "WorkingPeriod"),
    :schema_element => [
      ["dayOfWeek", [nil, XSD::QName.new(NsTypes, "DayOfWeek")]],
      ["startTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "StartTimeInMinutes")]],
      ["endTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "EndTimeInMinutes")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfWorkingPeriod,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfWorkingPeriod"),
    :schema_element => [
      ["workingPeriod", ["Exchange::WorkingPeriod[]", XSD::QName.new(NsTypes, "WorkingPeriod")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SerializableTimeZoneTime,
    :schema_type => XSD::QName.new(NsTypes, "SerializableTimeZoneTime"),
    :schema_element => [
      ["bias", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Bias")]],
      ["time", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Time")]],
      ["dayOrder", ["SOAP::SOAPShort", XSD::QName.new(NsTypes, "DayOrder")]],
      ["month", ["SOAP::SOAPShort", XSD::QName.new(NsTypes, "Month")]],
      ["dayOfWeek", ["Exchange::DayOfWeekType", XSD::QName.new(NsTypes, "DayOfWeek")]],
      ["year", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Year")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SerializableTimeZone,
    :schema_type => XSD::QName.new(NsTypes, "SerializableTimeZone"),
    :schema_element => [
      ["bias", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Bias")]],
      ["standardTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "StandardTime")]],
      ["daylightTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "DaylightTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::WorkingHours,
    :schema_type => XSD::QName.new(NsTypes, "WorkingHours"),
    :schema_element => [
      ["timeZone", ["Exchange::SerializableTimeZone", XSD::QName.new(NsTypes, "TimeZone")]],
      ["workingPeriodArray", ["Exchange::ArrayOfWorkingPeriod", XSD::QName.new(NsTypes, "WorkingPeriodArray")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FreeBusyView,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyView"),
    :schema_element => [
      ["freeBusyViewType", [nil, XSD::QName.new(NsTypes, "FreeBusyViewType")]],
      ["mergedFreeBusy", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "MergedFreeBusy")], [0, 1]],
      ["calendarEventArray", ["Exchange::ArrayOfCalendarEvent", XSD::QName.new(NsTypes, "CalendarEventArray")], [0, 1]],
      ["workingHours", ["Exchange::WorkingHours", XSD::QName.new(NsTypes, "WorkingHours")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MailboxData,
    :schema_type => XSD::QName.new(NsTypes, "MailboxData"),
    :schema_element => [
      ["email", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Email")]],
      ["attendeeType", ["Exchange::MeetingAttendeeType", XSD::QName.new(NsTypes, "AttendeeType")]],
      ["excludeConflicts", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ExcludeConflicts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfMailboxData,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfMailboxData"),
    :schema_element => [
      ["mailboxData", ["Exchange::MailboxData[]", XSD::QName.new(NsTypes, "MailboxData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SuggestionsViewOptionsType,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionsViewOptionsType"),
    :schema_element => [
      ["goodThreshold", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "GoodThreshold")], [0, 1]],
      ["maximumResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumResultsByDay")], [0, 1]],
      ["maximumNonWorkHourResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumNonWorkHourResultsByDay")], [0, 1]],
      ["meetingDurationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MeetingDurationInMinutes")], [0, 1]],
      ["minimumSuggestionQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "MinimumSuggestionQuality")], [0, 1]],
      ["detailedSuggestionsWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "DetailedSuggestionsWindow")]],
      ["currentMeetingTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "CurrentMeetingTime")], [0, 1]],
      ["globalObjectId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GlobalObjectId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfAttendeeConflictData"),
    :schema_element => [ :choice,
      ["unknownAttendeeConflictData", ["Exchange::UnknownAttendeeConflictData[]", XSD::QName.new(NsTypes, "UnknownAttendeeConflictData")]],
      ["individualAttendeeConflictData", ["Exchange::IndividualAttendeeConflictData[]", XSD::QName.new(NsTypes, "IndividualAttendeeConflictData")]],
      ["tooBigGroupAttendeeConflictData", ["Exchange::TooBigGroupAttendeeConflictData[]", XSD::QName.new(NsTypes, "TooBigGroupAttendeeConflictData")]],
      ["groupAttendeeConflictData", ["Exchange::GroupAttendeeConflictData[]", XSD::QName.new(NsTypes, "GroupAttendeeConflictData")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UnknownAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "UnknownAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::TooBigGroupAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "TooBigGroupAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::IndividualAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "IndividualAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => [
      ["busyType", ["Exchange::LegacyFreeBusyType", XSD::QName.new(NsTypes, "BusyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GroupAttendeeConflictData,
    :schema_type => XSD::QName.new(NsTypes, "GroupAttendeeConflictData"),
    :schema_basetype => XSD::QName.new(NsTypes, "AttendeeConflictData"),
    :schema_element => [
      ["numberOfMembers", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembers")]],
      ["numberOfMembersAvailable", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersAvailable")]],
      ["numberOfMembersWithConflict", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersWithConflict")]],
      ["numberOfMembersWithNoData", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "NumberOfMembersWithNoData")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::Suggestion,
    :schema_type => XSD::QName.new(NsTypes, "Suggestion"),
    :schema_element => [
      ["meetingTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "MeetingTime")]],
      ["isWorkTime", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsWorkTime")]],
      ["suggestionQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "SuggestionQuality")]],
      ["attendeeConflictDataArray", ["Exchange::ArrayOfAttendeeConflictData", XSD::QName.new(NsTypes, "AttendeeConflictDataArray")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfSuggestion,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSuggestion"),
    :schema_element => [
      ["suggestion", ["Exchange::Suggestion[]", XSD::QName.new(NsTypes, "Suggestion")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SuggestionDayResult,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionDayResult"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "Date")]],
      ["dayQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "DayQuality")]],
      ["suggestionArray", ["Exchange::ArrayOfSuggestion", XSD::QName.new(NsTypes, "SuggestionArray")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfSuggestionDayResult,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSuggestionDayResult"),
    :schema_element => [
      ["suggestionDayResult", ["Exchange::SuggestionDayResult[]", XSD::QName.new(NsTypes, "SuggestionDayResult")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ReplyBody,
    :schema_type => XSD::QName.new(NsTypes, "ReplyBody"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Message")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(NsNamespace, "lang") => nil
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UserOofSettings,
    :schema_type => XSD::QName.new(NsTypes, "UserOofSettings"),
    :schema_element => [
      ["oofState", ["Exchange::OofState", XSD::QName.new(NsTypes, "OofState")]],
      ["externalAudience", ["Exchange::ExternalAudience", XSD::QName.new(NsTypes, "ExternalAudience")]],
      ["duration", ["Exchange::Duration", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["internalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "InternalReply")], [0, 1]],
      ["externalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "ExternalReply")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::Value,
    :schema_type => XSD::QName.new(NsTypes, "Value"),
    :schema_attribute => {
      XSD::QName.new(nil, "Name") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AlternateIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternateIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternateIdBaseType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Mailbox") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AlternatePublicFolderIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternatePublicFolderIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternateIdBaseType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FolderId") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AlternatePublicFolderItemIdType,
    :schema_type => XSD::QName.new(NsTypes, "AlternatePublicFolderItemIdType"),
    :schema_basetype => XSD::QName.new(NsTypes, "AlternatePublicFolderIdType"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Format") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FolderId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ItemId") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NonEmptyArrayOfAlternateIdsType,
    :schema_type => XSD::QName.new(NsTypes, "NonEmptyArrayOfAlternateIdsType"),
    :schema_element => [ :choice,
      ["alternateId", ["Exchange::AlternateIdType[]", XSD::QName.new(NsTypes, "AlternateId")]],
      ["alternatePublicFolderId", ["Exchange::AlternatePublicFolderIdType[]", XSD::QName.new(NsTypes, "AlternatePublicFolderId")]],
      ["alternatePublicFolderItemId", ["Exchange::AlternatePublicFolderItemIdType[]", XSD::QName.new(NsTypes, "AlternatePublicFolderItemId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UserIdType,
    :schema_type => XSD::QName.new(NsTypes, "UserIdType"),
    :schema_element => [
      ["sID", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "SID")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "DisplayName")], [0, 1]],
      ["distinguishedUser", ["Exchange::DistinguishedUserType", XSD::QName.new(NsTypes, "DistinguishedUser")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfPermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfPermissionsType"),
    :schema_element => [
      ["permission", ["Exchange::PermissionType[]", XSD::QName.new(NsTypes, "Permission")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfCalendarPermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCalendarPermissionsType"),
    :schema_element => [
      ["calendarPermission", ["Exchange::CalendarPermissionType[]", XSD::QName.new(NsTypes, "CalendarPermission")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfUnknownEntriesType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfUnknownEntriesType"),
    :schema_element => [
      ["unknownEntry", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "UnknownEntry")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PermissionType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePermissionType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["canCreateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateItems")], [0, 1]],
      ["canCreateSubFolders", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateSubFolders")], [0, 1]],
      ["isFolderOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderOwner")], [0, 1]],
      ["isFolderVisible", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderVisible")], [0, 1]],
      ["isFolderContact", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderContact")], [0, 1]],
      ["editItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "EditItems")], [0, 1]],
      ["deleteItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "DeleteItems")], [0, 1]],
      ["readItems", ["Exchange::PermissionReadAccessType", XSD::QName.new(NsTypes, "ReadItems")], [0, 1]],
      ["permissionLevel", ["Exchange::PermissionLevelType", XSD::QName.new(NsTypes, "PermissionLevel")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarPermissionType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionType"),
    :schema_basetype => XSD::QName.new(NsTypes, "BasePermissionType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["canCreateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateItems")], [0, 1]],
      ["canCreateSubFolders", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CanCreateSubFolders")], [0, 1]],
      ["isFolderOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderOwner")], [0, 1]],
      ["isFolderVisible", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderVisible")], [0, 1]],
      ["isFolderContact", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "IsFolderContact")], [0, 1]],
      ["editItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "EditItems")], [0, 1]],
      ["deleteItems", ["Exchange::PermissionActionType", XSD::QName.new(NsTypes, "DeleteItems")], [0, 1]],
      ["readItems", ["Exchange::CalendarPermissionReadAccessType", XSD::QName.new(NsTypes, "ReadItems")], [0, 1]],
      ["calendarPermissionLevel", ["Exchange::CalendarPermissionLevelType", XSD::QName.new(NsTypes, "CalendarPermissionLevel")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::PermissionSetType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionSetType"),
    :schema_element => [
      ["permissions", ["Exchange::ArrayOfPermissionsType", XSD::QName.new(NsTypes, "Permissions")]],
      ["unknownEntries", ["Exchange::ArrayOfUnknownEntriesType", XSD::QName.new(NsTypes, "UnknownEntries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarPermissionSetType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionSetType"),
    :schema_element => [
      ["calendarPermissions", ["Exchange::ArrayOfCalendarPermissionsType", XSD::QName.new(NsTypes, "CalendarPermissions")]],
      ["unknownEntries", ["Exchange::ArrayOfUnknownEntriesType", XSD::QName.new(NsTypes, "UnknownEntries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::EffectiveRightsType,
    :schema_type => XSD::QName.new(NsTypes, "EffectiveRightsType"),
    :schema_element => [
      ["createAssociated", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateAssociated")]],
      ["createContents", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateContents")]],
      ["createHierarchy", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "CreateHierarchy")]],
      ["delete", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Delete")]],
      ["modify", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Modify")]],
      ["read", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "Read")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfDelegateUserType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDelegateUserType"),
    :schema_element => [
      ["delegateUser", ["Exchange::DelegateUserType[]", XSD::QName.new(NsTypes, "DelegateUser")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ArrayOfUserIdType,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfUserIdType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType[]", XSD::QName.new(NsTypes, "UserId")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DelegateUserType,
    :schema_type => XSD::QName.new(NsTypes, "DelegateUserType"),
    :schema_element => [
      ["userId", ["Exchange::UserIdType", XSD::QName.new(NsTypes, "UserId")]],
      ["delegatePermissions", ["Exchange::DelegatePermissionsType", XSD::QName.new(NsTypes, "DelegatePermissions")], [0, 1]],
      ["receiveCopiesOfMeetingMessages", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ReceiveCopiesOfMeetingMessages")], [0, 1]],
      ["viewPrivateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "ViewPrivateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DelegatePermissionsType,
    :schema_type => XSD::QName.new(NsTypes, "DelegatePermissionsType"),
    :schema_element => [
      ["calendarFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "CalendarFolderPermissionLevel")], [0, 1]],
      ["tasksFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "TasksFolderPermissionLevel")], [0, 1]],
      ["inboxFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "InboxFolderPermissionLevel")], [0, 1]],
      ["contactsFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "ContactsFolderPermissionLevel")], [0, 1]],
      ["notesFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "NotesFolderPermissionLevel")], [0, 1]],
      ["journalFolderPermissionLevel", ["Exchange::DelegateFolderPermissionLevelType", XSD::QName.new(NsTypes, "JournalFolderPermissionLevel")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ConflictResultsType,
    :schema_type => XSD::QName.new(NsTypes, "ConflictResultsType"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Count")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ResponseCodeType,
    :schema_type => XSD::QName.new(NsMessages, "ResponseCodeType")
  )

  LiteralRegistry.register(
    :class => Exchange::ExchangeVersionType,
    :schema_type => XSD::QName.new(NsTypes, "ExchangeVersionType")
  )

  LiteralRegistry.register(
    :class => Exchange::MailboxTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MailboxTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::UnindexedFieldURIType,
    :schema_type => XSD::QName.new(NsTypes, "UnindexedFieldURIType")
  )

  LiteralRegistry.register(
    :class => Exchange::DictionaryURIType,
    :schema_type => XSD::QName.new(NsTypes, "DictionaryURIType")
  )

  LiteralRegistry.register(
    :class => Exchange::ExceptionPropertyURIType,
    :schema_type => XSD::QName.new(NsTypes, "ExceptionPropertyURIType")
  )

  LiteralRegistry.register(
    :class => Exchange::DistinguishedPropertySetType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedPropertySetType")
  )

  LiteralRegistry.register(
    :class => Exchange::MapiPropertyTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MapiPropertyTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::FolderQueryTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "FolderQueryTraversalType")
  )

  LiteralRegistry.register(
    :class => Exchange::SearchFolderTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "SearchFolderTraversalType")
  )

  LiteralRegistry.register(
    :class => Exchange::ItemQueryTraversalType,
    :schema_type => XSD::QName.new(NsTypes, "ItemQueryTraversalType")
  )

  LiteralRegistry.register(
    :class => Exchange::DefaultShapeNamesType,
    :schema_type => XSD::QName.new(NsTypes, "DefaultShapeNamesType")
  )

  LiteralRegistry.register(
    :class => Exchange::BodyTypeResponseType,
    :schema_type => XSD::QName.new(NsTypes, "BodyTypeResponseType")
  )

  LiteralRegistry.register(
    :class => Exchange::DisposalType,
    :schema_type => XSD::QName.new(NsTypes, "DisposalType")
  )

  LiteralRegistry.register(
    :class => Exchange::ConflictResolutionType,
    :schema_type => XSD::QName.new(NsTypes, "ConflictResolutionType")
  )

  LiteralRegistry.register(
    :class => Exchange::ResponseClassType,
    :schema_type => XSD::QName.new(NsTypes, "ResponseClassType")
  )

  LiteralRegistry.register(
    :class => Exchange::SensitivityChoicesType,
    :schema_type => XSD::QName.new(NsTypes, "SensitivityChoicesType")
  )

  LiteralRegistry.register(
    :class => Exchange::ImportanceChoicesType,
    :schema_type => XSD::QName.new(NsTypes, "ImportanceChoicesType")
  )

  LiteralRegistry.register(
    :class => Exchange::BodyTypeType,
    :schema_type => XSD::QName.new(NsTypes, "BodyTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::DistinguishedFolderIdNameType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedFolderIdNameType")
  )

  LiteralRegistry.register(
    :class => Exchange::MessageDispositionType,
    :schema_type => XSD::QName.new(NsTypes, "MessageDispositionType")
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarItemCreateOrDeleteOperationType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemCreateOrDeleteOperationType")
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarItemUpdateOperationType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemUpdateOperationType")
  )

  LiteralRegistry.register(
    :class => Exchange::AffectedTaskOccurrencesType,
    :schema_type => XSD::QName.new(NsTypes, "AffectedTaskOccurrencesType")
  )

  LiteralRegistry.register(
    :class => Exchange::TaskStatusType,
    :schema_type => XSD::QName.new(NsTypes, "TaskStatusType")
  )

  LiteralRegistry.register(
    :class => Exchange::TaskDelegateStateType,
    :schema_type => XSD::QName.new(NsTypes, "TaskDelegateStateType")
  )

  LiteralRegistry.register(
    :class => Exchange::IndexBasePointType,
    :schema_type => XSD::QName.new(NsTypes, "IndexBasePointType")
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesSearchScopeType,
    :schema_type => XSD::QName.new(NsTypes, "ResolveNamesSearchScopeType")
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingRequestTypeType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingRequestTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::LegacyFreeBusyType,
    :schema_type => XSD::QName.new(NsTypes, "LegacyFreeBusyType")
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarItemTypeType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItemTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::ResponseTypeType,
    :schema_type => XSD::QName.new(NsTypes, "ResponseTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::DayOfWeekType,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeekType")
  )

  LiteralRegistry.register(
    :class => Exchange::DayOfWeekIndexType,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeekIndexType")
  )

  LiteralRegistry.register(
    :class => Exchange::MonthNamesType,
    :schema_type => XSD::QName.new(NsTypes, "MonthNamesType")
  )

  LiteralRegistry.register(
    :class => Exchange::ImAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressKeyType")
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressKeyType")
  )

  LiteralRegistry.register(
    :class => Exchange::PhoneNumberKeyType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberKeyType")
  )

  LiteralRegistry.register(
    :class => Exchange::PhysicalAddressIndexType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressIndexType")
  )

  LiteralRegistry.register(
    :class => Exchange::PhysicalAddressKeyType,
    :schema_type => XSD::QName.new(NsTypes, "PhysicalAddressKeyType")
  )

  LiteralRegistry.register(
    :class => Exchange::FileAsMappingType,
    :schema_type => XSD::QName.new(NsTypes, "FileAsMappingType")
  )

  LiteralRegistry.register(
    :class => Exchange::ContactSourceType,
    :schema_type => XSD::QName.new(NsTypes, "ContactSourceType")
  )

  LiteralRegistry.register(
    :class => Exchange::AggregateType,
    :schema_type => XSD::QName.new(NsTypes, "AggregateType")
  )

  LiteralRegistry.register(
    :class => Exchange::StandardGroupByType,
    :schema_type => XSD::QName.new(NsTypes, "StandardGroupByType")
  )

  LiteralRegistry.register(
    :class => Exchange::ContainmentModeType,
    :schema_type => XSD::QName.new(NsTypes, "ContainmentModeType")
  )

  LiteralRegistry.register(
    :class => Exchange::ContainmentComparisonType,
    :schema_type => XSD::QName.new(NsTypes, "ContainmentComparisonType")
  )

  LiteralRegistry.register(
    :class => Exchange::SortDirectionType,
    :schema_type => XSD::QName.new(NsTypes, "SortDirectionType")
  )

  LiteralRegistry.register(
    :class => Exchange::NotificationEventTypeType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationEventTypeType")
  )

  LiteralRegistry.register(
    :class => Exchange::SubscriptionStatusType,
    :schema_type => XSD::QName.new(NsTypes, "SubscriptionStatusType")
  )

  LiteralRegistry.register(
    :class => Exchange::AvailabilityProxyRequestType,
    :schema_type => XSD::QName.new(NsTypes, "AvailabilityProxyRequestType")
  )

  LiteralRegistry.register(
    :class => Exchange::MeetingAttendeeType,
    :schema_type => XSD::QName.new(NsTypes, "MeetingAttendeeType")
  )

  LiteralRegistry.register(
    :class => Exchange::SuggestionQuality,
    :schema_type => XSD::QName.new(NsTypes, "SuggestionQuality")
  )

  LiteralRegistry.register(
    :class => Exchange::OofState,
    :schema_type => XSD::QName.new(NsTypes, "OofState")
  )

  LiteralRegistry.register(
    :class => Exchange::ExternalAudience,
    :schema_type => XSD::QName.new(NsTypes, "ExternalAudience")
  )

  LiteralRegistry.register(
    :class => Exchange::IdFormatType,
    :schema_type => XSD::QName.new(NsTypes, "IdFormatType")
  )

  LiteralRegistry.register(
    :class => Exchange::DistinguishedUserType,
    :schema_type => XSD::QName.new(NsTypes, "DistinguishedUserType")
  )

  LiteralRegistry.register(
    :class => Exchange::PermissionReadAccessType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionReadAccessType")
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarPermissionReadAccessType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionReadAccessType")
  )

  LiteralRegistry.register(
    :class => Exchange::PermissionActionType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionActionType")
  )

  LiteralRegistry.register(
    :class => Exchange::PermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "PermissionLevelType")
  )

  LiteralRegistry.register(
    :class => Exchange::CalendarPermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "CalendarPermissionLevelType")
  )

  LiteralRegistry.register(
    :class => Exchange::DeliverMeetingRequestsType,
    :schema_type => XSD::QName.new(NsTypes, "DeliverMeetingRequestsType")
  )

  LiteralRegistry.register(
    :class => Exchange::DelegateFolderPermissionLevelType,
    :schema_type => XSD::QName.new(NsTypes, "DelegateFolderPermissionLevelType")
  )

  LiteralRegistry.register(
    :class => Exchange::GetFolderType,
    :schema_name => XSD::QName.new(NsMessages, "GetFolder"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateFolderType,
    :schema_name => XSD::QName.new(NsMessages, "CreateFolder"),
    :schema_element => [
      ["parentFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ParentFolderId")]],
      ["folders", ["Exchange::NonEmptyArrayOfFoldersType", XSD::QName.new(NsMessages, "Folders")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderType,
    :schema_name => XSD::QName.new(NsMessages, "FindFolder"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      [ :choice,
        ["indexedPageFolderView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageFolderView")]],
        ["fractionalPageFolderView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageFolderView")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::FindFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "FindFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteFolderType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteFolder"),
    :schema_element => [
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveFolderType,
    :schema_name => XSD::QName.new(NsMessages, "MoveFolder"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyFolderType,
    :schema_name => XSD::QName.new(NsMessages, "CopyFolder"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["folderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "FolderIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateFolderType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateFolder"),
    :schema_element => [
      ["folderChanges", ["Exchange::NonEmptyArrayOfFolderChangesType", XSD::QName.new(NsMessages, "FolderChanges")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CreateFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "GetFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "MoveFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CopyFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetItemType,
    :schema_name => XSD::QName.new(NsMessages, "GetItem"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateItemType,
    :schema_name => XSD::QName.new(NsMessages, "CreateItem"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["items", ["Exchange::NonEmptyArrayOfAllItemsType", XSD::QName.new(NsMessages, "Items")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitations") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateItem"),
    :schema_element => [
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]],
      ["itemChanges", ["Exchange::NonEmptyArrayOfItemChangesType", XSD::QName.new(NsMessages, "ItemChanges")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ConflictResolution") => "SOAP::SOAPString",
      XSD::QName.new(nil, "MessageDisposition") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingInvitationsOrCancellations") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteItemType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteItem"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DeleteType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "SendMeetingCancellations") => "SOAP::SOAPString",
      XSD::QName.new(nil, "AffectedTaskOccurrences") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::MoveItemType,
    :schema_name => XSD::QName.new(NsMessages, "MoveItem"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyItemType,
    :schema_name => XSD::QName.new(NsMessages, "CopyItem"),
    :schema_element => [
      ["toFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "ToFolderId")]],
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendItemType,
    :schema_name => XSD::QName.new(NsMessages, "SendItem"),
    :schema_element => [
      ["itemIds", ["Exchange::NonEmptyArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "ItemIds")]],
      ["savedItemFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SavedItemFolderId")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "SaveItemToFolder") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::SendItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "SendItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemType,
    :schema_name => XSD::QName.new(NsMessages, "FindItem"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      [ :choice,
        ["indexedPageItemView", ["Exchange::IndexedPageViewType", XSD::QName.new(NsMessages, "IndexedPageItemView")]],
        ["fractionalPageItemView", ["Exchange::FractionalPageViewType", XSD::QName.new(NsMessages, "FractionalPageItemView")]],
        ["calendarView", ["Exchange::CalendarViewType", XSD::QName.new(NsMessages, "CalendarView")]],
        ["contactsView", ["Exchange::ContactsViewType", XSD::QName.new(NsMessages, "ContactsView")]]
      ],
      [ :choice,
        ["groupBy", ["Exchange::GroupByType", XSD::QName.new(NsMessages, "GroupBy")]],
        ["distinguishedGroupBy", ["Exchange::DistinguishedGroupByType", XSD::QName.new(NsMessages, "DistinguishedGroupBy")]]
      ],
      ["restriction", ["Exchange::RestrictionType", XSD::QName.new(NsMessages, "Restriction")], [0, 1]],
      ["sortOrder", ["Exchange::NonEmptyArrayOfFieldOrdersType", XSD::QName.new(NsMessages, "SortOrder")], [0, 1]],
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Traversal") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::CreateAttachmentType,
    :schema_name => XSD::QName.new(NsMessages, "CreateAttachment"),
    :schema_element => [
      ["parentItemId", ["Exchange::ItemIdType", XSD::QName.new(NsMessages, "ParentItemId")]],
      ["attachments", ["Exchange::NonEmptyArrayOfAttachmentsType", XSD::QName.new(NsMessages, "Attachments")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateAttachmentResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CreateAttachmentResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteAttachment"),
    :schema_element => [
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteAttachmentResponseType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteAttachmentResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetAttachmentType,
    :schema_name => XSD::QName.new(NsMessages, "GetAttachment"),
    :schema_element => [
      ["attachmentShape", ["Exchange::AttachmentResponseShapeType", XSD::QName.new(NsMessages, "AttachmentShape")], [0, 1]],
      ["attachmentIds", ["Exchange::NonEmptyArrayOfRequestAttachmentIdsType", XSD::QName.new(NsMessages, "AttachmentIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetAttachmentResponseType,
    :schema_name => XSD::QName.new(NsMessages, "GetAttachmentResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CreateItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "GetItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::MoveItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "MoveItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CopyItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CopyItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::DeleteItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "DeleteItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FindItemResponseType,
    :schema_name => XSD::QName.new(NsMessages, "FindItemResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesType,
    :schema_name => XSD::QName.new(NsMessages, "ResolveNames"),
    :schema_element => [
      ["parentFolderIds", ["Exchange::NonEmptyArrayOfBaseFolderIdsType", XSD::QName.new(NsMessages, "ParentFolderIds")], [0, 1]],
      ["unresolvedEntry", [nil, XSD::QName.new(NsMessages, "UnresolvedEntry")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ReturnFullContactData") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "SearchScope") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ResolveNamesResponseType,
    :schema_name => XSD::QName.new(NsMessages, "ResolveNamesResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLType,
    :schema_name => XSD::QName.new(NsMessages, "ExpandDL"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExpandDLResponseType,
    :schema_name => XSD::QName.new(NsMessages, "ExpandDLResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateManagedFolderRequestType,
    :schema_name => XSD::QName.new(NsMessages, "CreateManagedFolder"),
    :schema_element => [
      ["folderNames", ["Exchange::NonEmptyArrayOfFolderNamesType", XSD::QName.new(NsMessages, "FolderNames")]],
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::CreateManagedFolderResponseType,
    :schema_name => XSD::QName.new(NsMessages, "CreateManagedFolderResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeType,
    :schema_name => XSD::QName.new(NsMessages, "Subscribe"),
    :schema_element => [ :choice,
      ["pullSubscriptionRequest", ["Exchange::PullSubscriptionRequestType", XSD::QName.new(NsMessages, "PullSubscriptionRequest")]],
      ["pushSubscriptionRequest", ["Exchange::PushSubscriptionRequestType", XSD::QName.new(NsMessages, "PushSubscriptionRequest")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SubscribeResponseType,
    :schema_name => XSD::QName.new(NsMessages, "SubscribeResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UnsubscribeType,
    :schema_name => XSD::QName.new(NsMessages, "Unsubscribe"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UnsubscribeResponseType,
    :schema_name => XSD::QName.new(NsMessages, "UnsubscribeResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsType,
    :schema_name => XSD::QName.new(NsMessages, "GetEvents"),
    :schema_element => [
      ["subscriptionId", [nil, XSD::QName.new(NsMessages, "SubscriptionId")]],
      ["watermark", [nil, XSD::QName.new(NsMessages, "Watermark")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetEventsResponseType,
    :schema_name => XSD::QName.new(NsMessages, "GetEventsResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResponseType,
    :schema_name => XSD::QName.new(NsMessages, "SendNotification"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SendNotificationResultType,
    :schema_name => XSD::QName.new(NsMessages, "SendNotificationResult"),
    :schema_element => [
      ["subscriptionStatus", ["Exchange::SubscriptionStatusType", XSD::QName.new(NsMessages, "SubscriptionStatus")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyType,
    :schema_name => XSD::QName.new(NsMessages, "SyncFolderHierarchy"),
    :schema_element => [
      ["folderShape", ["Exchange::FolderResponseShapeType", XSD::QName.new(NsMessages, "FolderShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")], [0, 1]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderHierarchyResponseType,
    :schema_name => XSD::QName.new(NsMessages, "SyncFolderHierarchyResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsType,
    :schema_name => XSD::QName.new(NsMessages, "SyncFolderItems"),
    :schema_element => [
      ["itemShape", ["Exchange::ItemResponseShapeType", XSD::QName.new(NsMessages, "ItemShape")]],
      ["syncFolderId", ["Exchange::TargetFolderIdType", XSD::QName.new(NsMessages, "SyncFolderId")]],
      ["syncState", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "SyncState")], [0, 1]],
      ["ignore", ["Exchange::ArrayOfBaseItemIdsType", XSD::QName.new(NsMessages, "Ignore")], [0, 1]],
      ["maxChangesReturned", [nil, XSD::QName.new(NsMessages, "MaxChangesReturned")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SyncFolderItemsResponseType,
    :schema_name => XSD::QName.new(NsMessages, "SyncFolderItemsResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserAvailabilityRequestType,
    :schema_name => XSD::QName.new(NsMessages, "GetUserAvailabilityRequest"),
    :schema_element => [
      ["timeZone", ["Exchange::SerializableTimeZone", XSD::QName.new(NsTypes, "TimeZone")]],
      ["mailboxDataArray", ["Exchange::ArrayOfMailboxData", XSD::QName.new(NsMessages, "MailboxDataArray")]],
      ["freeBusyViewOptions", ["Exchange::FreeBusyViewOptionsType", XSD::QName.new(NsTypes, "FreeBusyViewOptions")], [0, 1]],
      ["suggestionsViewOptions", ["Exchange::SuggestionsViewOptionsType", XSD::QName.new(NsTypes, "SuggestionsViewOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserAvailabilityResponseType,
    :schema_name => XSD::QName.new(NsMessages, "GetUserAvailabilityResponse"),
    :schema_element => [
      ["freeBusyResponseArray", ["Exchange::ArrayOfFreeBusyResponse", XSD::QName.new(NsMessages, "FreeBusyResponseArray")], [0, 1]],
      ["suggestionsResponse", ["Exchange::SuggestionsResponseType", XSD::QName.new(NsMessages, "SuggestionsResponse")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserOofSettingsRequest,
    :schema_name => XSD::QName.new(NsMessages, "GetUserOofSettingsRequest"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetUserOofSettingsResponse,
    :schema_name => XSD::QName.new(NsMessages, "GetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")]],
      ["oofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "OofSettings")], [0, 1]],
      ["allowExternalOof", ["Exchange::ExternalAudience", XSD::QName.new(NsMessages, "AllowExternalOof")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetUserOofSettingsRequest,
    :schema_name => XSD::QName.new(NsMessages, "SetUserOofSettingsRequest"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddress", XSD::QName.new(NsTypes, "Mailbox")]],
      ["userOofSettings", ["Exchange::UserOofSettings", XSD::QName.new(NsTypes, "UserOofSettings")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SetUserOofSettingsResponse,
    :schema_name => XSD::QName.new(NsMessages, "SetUserOofSettingsResponse"),
    :schema_element => [
      ["responseMessage", ["Exchange::ResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdType,
    :schema_name => XSD::QName.new(NsMessages, "ConvertId"),
    :schema_element => [
      ["sourceIds", ["Exchange::NonEmptyArrayOfAlternateIdsType", XSD::QName.new(NsMessages, "SourceIds")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "DestinationFormat") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::ConvertIdResponseType,
    :schema_name => XSD::QName.new(NsMessages, "ConvertIdResponse"),
    :schema_element => [
      ["responseMessages", ["Exchange::ArrayOfResponseMessagesType", XSD::QName.new(NsMessages, "ResponseMessages")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateType,
    :schema_name => XSD::QName.new(NsMessages, "GetDelegate"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "IncludePermissions") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType,
    :schema_name => XSD::QName.new(NsMessages, "GetDelegateResponse"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::GetDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::GetDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateType,
    :schema_name => XSD::QName.new(NsMessages, "AddDelegate"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType,
    :schema_name => XSD::QName.new(NsMessages, "AddDelegateResponse"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::AddDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::AddDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateType,
    :schema_name => XSD::QName.new(NsMessages, "RemoveDelegate"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["userIds", ["Exchange::ArrayOfUserIdType", XSD::QName.new(NsMessages, "UserIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType,
    :schema_name => XSD::QName.new(NsMessages, "RemoveDelegateResponse"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::RemoveDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RemoveDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateDelegate"),
    :schema_element => [
      ["mailbox", ["Exchange::EmailAddressType", XSD::QName.new(NsMessages, "Mailbox")]],
      ["delegateUsers", ["Exchange::ArrayOfDelegateUserType", XSD::QName.new(NsMessages, "DelegateUsers")], [0, 1]],
      ["deliverMeetingRequests", ["Exchange::DeliverMeetingRequestsType", XSD::QName.new(NsMessages, "DeliverMeetingRequests")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType,
    :schema_name => XSD::QName.new(NsMessages, "UpdateDelegateResponse"),
    :schema_element => [
      ["messageText", ["SOAP::SOAPString", XSD::QName.new(NsMessages, "MessageText")], [0, 1]],
      ["responseCode", ["Exchange::ResponseCodeType", XSD::QName.new(NsMessages, "ResponseCode")], [0, 1]],
      ["descriptiveLinkKey", ["SOAP::SOAPInt", XSD::QName.new(NsMessages, "DescriptiveLinkKey")], [0, 1]],
      ["messageXml", ["Exchange::UpdateDelegateResponseMessageType::MessageXml", XSD::QName.new(NsMessages, "MessageXml")], [0, 1]],
      ["responseMessages", ["Exchange::ArrayOfDelegateUserResponseMessageType", XSD::QName.new(NsMessages, "ResponseMessages")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ResponseClass") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::UpdateDelegateResponseMessageType::MessageXml,
    :schema_name => XSD::QName.new(NsMessages, "MessageXml"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SerializedSecurityContextType,
    :schema_name => XSD::QName.new(NsTypes, "SerializedSecurityContext"),
    :schema_element => [
      ["userSid", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "UserSid")]],
      ["groupSids", ["Exchange::NonEmptyArrayOfGroupIdentifiersType", XSD::QName.new(NsTypes, "GroupSids")], [0, 1]],
      ["restrictedGroupSids", ["Exchange::NonEmptyArrayOfRestrictedGroupIdentifiersType", XSD::QName.new(NsTypes, "RestrictedGroupSids")], [0, 1]],
      ["primarySmtpAddress", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "PrimarySmtpAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExchangeImpersonationType,
    :schema_name => XSD::QName.new(NsTypes, "ExchangeImpersonation"),
    :schema_element => [
      ["connectingSID", ["Exchange::ConnectingSIDType", XSD::QName.new(NsTypes, "ConnectingSID")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ProxySecurityContextType,
    :schema_name => XSD::QName.new(NsTypes, "ProxySecurityContext")
  )

  LiteralRegistry.register(
    :class => Exchange::ProxySecurityContextType,
    :schema_name => XSD::QName.new(NsTypes, "ProxySuggesterSid")
  )

  LiteralRegistry.register(
    :class => Exchange::ServerVersionInfo,
    :schema_name => XSD::QName.new(NsTypes, "ServerVersionInfo"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "MajorVersion") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "MinorVersion") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "MajorBuildNumber") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "MinorBuildNumber") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::RequestServerVersion,
    :schema_name => XSD::QName.new(NsTypes, "RequestServerVersion"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::BasePathToElementType,
    :schema_name => XSD::QName.new(NsTypes, "Path"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::PathToUnindexedFieldType,
    :schema_name => XSD::QName.new(NsTypes, "FieldURI"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToIndexedFieldType,
    :schema_name => XSD::QName.new(NsTypes, "IndexedFieldURI"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString",
      XSD::QName.new(nil, "FieldIndex") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToExtendedFieldType,
    :schema_name => XSD::QName.new(NsTypes, "ExtendedFieldURI"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "DistinguishedPropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertySetId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyTag") => nil,
      XSD::QName.new(nil, "PropertyName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "PropertyId") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "PropertyType") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::PathToExceptionFieldType,
    :schema_name => XSD::QName.new(NsTypes, "ExceptionFieldURI"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "FieldURI") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::BaseItemIdType,
    :schema_name => XSD::QName.new(NsTypes, "BaseItemId"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::SearchExpressionType,
    :schema_name => XSD::QName.new(NsTypes, "SearchExpression"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Exchange::ExistsType,
    :schema_name => XSD::QName.new(NsTypes, "Exists"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ExcludesType,
    :schema_name => XSD::QName.new(NsTypes, "Excludes"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["bitmask", ["Exchange::ExcludesValueType", XSD::QName.new(NsTypes, "Bitmask")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsEqualToType,
    :schema_name => XSD::QName.new(NsTypes, "IsEqualTo"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsNotEqualToType,
    :schema_name => XSD::QName.new(NsTypes, "IsNotEqualTo"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsGreaterThanType,
    :schema_name => XSD::QName.new(NsTypes, "IsGreaterThan"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsGreaterThanOrEqualToType,
    :schema_name => XSD::QName.new(NsTypes, "IsGreaterThanOrEqualTo"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsLessThanType,
    :schema_name => XSD::QName.new(NsTypes, "IsLessThan"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::IsLessThanOrEqualToType,
    :schema_name => XSD::QName.new(NsTypes, "IsLessThanOrEqualTo"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["fieldURIOrConstant", ["Exchange::FieldURIOrConstantType", XSD::QName.new(NsTypes, "FieldURIOrConstant")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::ContainsExpressionType,
    :schema_name => XSD::QName.new(NsTypes, "Contains"),
    :schema_element => [
      ["path", ["Exchange::BasePathToElementType", XSD::QName.new(NsTypes, "Path")]],
      ["constant", ["Exchange::ConstantValueType", XSD::QName.new(NsTypes, "Constant")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ContainmentMode") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ContainmentComparison") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Exchange::NotType,
    :schema_name => XSD::QName.new(NsTypes, "Not"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType", XSD::QName.new(NsTypes, "SearchExpression")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AndType,
    :schema_name => XSD::QName.new(NsTypes, "And"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::OrType,
    :schema_name => XSD::QName.new(NsTypes, "Or"),
    :schema_element => [
      ["searchExpression", ["Exchange::SearchExpressionType[]", XSD::QName.new(NsTypes, "SearchExpression")], [2, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::AvailabilityProxyRequestType,
    :schema_name => XSD::QName.new(NsTypes, "ProxyRequestTypeHeader")
  )

  LiteralRegistry.register(
    :class => Exchange::EmailAddress,
    :schema_name => XSD::QName.new(NsTypes, "Mailbox"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Name")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "Address")]],
      ["routingType", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "RoutingType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::FreeBusyViewOptionsType,
    :schema_name => XSD::QName.new(NsTypes, "FreeBusyViewOptions"),
    :schema_element => [
      ["timeWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "TimeWindow")]],
      ["mergedFreeBusyIntervalInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MergedFreeBusyIntervalInMinutes")], [0, 1]],
      ["requestedView", [nil, XSD::QName.new(NsTypes, "RequestedView")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SerializableTimeZone,
    :schema_name => XSD::QName.new(NsTypes, "TimeZone"),
    :schema_element => [
      ["bias", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "Bias")]],
      ["standardTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "StandardTime")]],
      ["daylightTime", ["Exchange::SerializableTimeZoneTime", XSD::QName.new(NsTypes, "DaylightTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::SuggestionsViewOptionsType,
    :schema_name => XSD::QName.new(NsTypes, "SuggestionsViewOptions"),
    :schema_element => [
      ["goodThreshold", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "GoodThreshold")], [0, 1]],
      ["maximumResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumResultsByDay")], [0, 1]],
      ["maximumNonWorkHourResultsByDay", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MaximumNonWorkHourResultsByDay")], [0, 1]],
      ["meetingDurationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "MeetingDurationInMinutes")], [0, 1]],
      ["minimumSuggestionQuality", ["Exchange::SuggestionQuality", XSD::QName.new(NsTypes, "MinimumSuggestionQuality")], [0, 1]],
      ["detailedSuggestionsWindow", ["Exchange::Duration", XSD::QName.new(NsTypes, "DetailedSuggestionsWindow")]],
      ["currentMeetingTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "CurrentMeetingTime")], [0, 1]],
      ["globalObjectId", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "GlobalObjectId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UserOofSettings,
    :schema_name => XSD::QName.new(NsTypes, "OofSettings"),
    :schema_element => [
      ["oofState", ["Exchange::OofState", XSD::QName.new(NsTypes, "OofState")]],
      ["externalAudience", ["Exchange::ExternalAudience", XSD::QName.new(NsTypes, "ExternalAudience")]],
      ["duration", ["Exchange::Duration", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["internalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "InternalReply")], [0, 1]],
      ["externalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "ExternalReply")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::UserOofSettings,
    :schema_name => XSD::QName.new(NsTypes, "UserOofSettings"),
    :schema_element => [
      ["oofState", ["Exchange::OofState", XSD::QName.new(NsTypes, "OofState")]],
      ["externalAudience", ["Exchange::ExternalAudience", XSD::QName.new(NsTypes, "ExternalAudience")]],
      ["duration", ["Exchange::Duration", XSD::QName.new(NsTypes, "Duration")], [0, 1]],
      ["internalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "InternalReply")], [0, 1]],
      ["externalReply", ["Exchange::ReplyBody", XSD::QName.new(NsTypes, "ExternalReply")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Exchange::Value,
    :schema_name => XSD::QName.new(NsTypes, "Value"),
    :schema_attribute => {
      XSD::QName.new(nil, "Name") => "SOAP::SOAPString"
    }
  )
end

end
