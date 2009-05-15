# Converted from the WSDL with wsdl2ruby.

require 'GroupWise.rb'
require 'soap/mapping'

module GroupWise

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsEvents = "http://schemas.novell.com/2005/01/GroupWise/events"
  NsMethods = "http://schemas.novell.com/2005/01/GroupWise/methods"
  NsTypes = "http://schemas.novell.com/2005/01/GroupWise/types"

  EncodedRegistry.register(
    :class => GroupWise::AccessControlListEntry,
    :schema_type => XSD::QName.new(NsTypes, "AccessControlListEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["rights", "GroupWise::Rights"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessControlList,
    :schema_type => XSD::QName.new(NsTypes, "AccessControlList"),
    :schema_element => [
      ["entry", "GroupWise::AccessControlListEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessMiscRight,
    :schema_type => XSD::QName.new(NsTypes, "AccessMiscRight"),
    :schema_element => [
      ["alarms", "SOAP::SOAPBoolean", [0, 1]],
      ["notify", "SOAP::SOAPBoolean", [0, 1]],
      ["readHidden", "SOAP::SOAPBoolean", [0, 1]],
      ["setup", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessRight,
    :schema_type => XSD::QName.new(NsTypes, "AccessRight"),
    :schema_element => [
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["write", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessRightChanges,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightChanges"),
    :schema_element => [
      ["add", "GroupWise::AccessRightEntry", [0, 1]],
      ["delete", "GroupWise::AccessRightEntry", [0, 1]],
      ["update", "GroupWise::AccessRightEntry", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessRightEntry,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["id", nil, [0, 1]],
      ["appointment", "GroupWise::AccessRight", [0, 1]],
      ["mail", "GroupWise::AccessRight", [0, 1]],
      ["misc", "GroupWise::AccessMiscRight", [0, 1]],
      ["note", "GroupWise::AccessRight", [0, 1]],
      ["task", "GroupWise::AccessRight", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AccessRightList,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightList"),
    :schema_element => [
      ["entry", "GroupWise::AccessRightEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AddressBook,
    :schema_type => XSD::QName.new(NsTypes, "AddressBook"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["isPersonal", "SOAP::SOAPBoolean", [0, 1]],
      ["isFrequentContacts", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AddressBookItem,
    :schema_type => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AddressBookList,
    :schema_type => XSD::QName.new(NsTypes, "AddressBookList"),
    :schema_element => [
      ["book", "GroupWise::AddressBook[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Alarm,
    :schema_type => XSD::QName.new(NsTypes, "Alarm"),
    :schema_attribute => {
      XSD::QName.new(nil, "enabled") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Appointment,
    :schema_type => XSD::QName.new(NsTypes, "Appointment"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDateTime", [0, 1]],
      ["endDate", "SOAP::SOAPDateTime", [0, 1]],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["alarm", "GroupWise::Alarm", [0, 1]],
      ["allDayEvent", "SOAP::SOAPBoolean", [0, 1]],
      ["place", "SOAP::SOAPString", [0, 1]],
      ["timezone", "GroupWise::Timezone", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::AttachmentID,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentID"),
    :schema_attribute => {
      XSD::QName.new(nil, "itemReference") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::AttachmentInfo,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentInfo"),
    :schema_element => [
      ["attachment", "GroupWise::AttachmentItemInfo[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AttachmentItemInfo,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentItemInfo"),
    :schema_element => [
      ["id", "GroupWise::AttachmentID", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["contentId", "SOAP::SOAPString", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["size", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["date", "SOAP::SOAPDateTime", [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["hidden", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Authentication,
    :schema_type => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => GroupWise::BoxEntry,
    :schema_type => XSD::QName.new(NsTypes, "BoxEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::CalendarFolderAttribute,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderAttribute"),
    :schema_element => [
      ["flags", "GroupWise::CalendarFolderFlags[]", [0, 2]],
      ["color", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::CalendarItem,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Category,
    :schema_type => XSD::QName.new(NsTypes, "Category"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["type", "GroupWise::CategoryType", [0, 1]],
      ["color", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::CategoryList,
    :schema_type => XSD::QName.new(NsTypes, "CategoryList"),
    :schema_element => [
      ["category", "GroupWise::Category[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::CategoryRefList,
    :schema_type => XSD::QName.new(NsTypes, "CategoryRefList"),
    :schema_element => [
      ["category", "[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "primary") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::CommentStatus,
    :schema_type => XSD::QName.new(NsTypes, "CommentStatus"),
    :schema_attribute => {
      XSD::QName.new(nil, "comment") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Contact,
    :schema_type => XSD::QName.new(NsTypes, "Contact"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["fullName", "GroupWise::FullName", [0, 1]],
      ["emailList", "GroupWise::EmailAddressList", [0, 1]],
      ["imList", "GroupWise::ImAddressList", [0, 1]],
      ["phoneList", "GroupWise::PhoneList", [0, 1]],
      ["addressList", "GroupWise::PostalAddressList", [0, 1]],
      ["officeInfo", "GroupWise::OfficeInfo", [0, 1]],
      ["personalInfo", "GroupWise::PersonalInfo", [0, 1]],
      ["referenceInfo", "GroupWise::ReferenceInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ContactFolder,
    :schema_type => XSD::QName.new(NsTypes, "ContactFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "SystemFolder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["isSystemFolder", "SOAP::SOAPBoolean", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]],
      ["addressBook", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ContainerItem,
    :schema_type => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ContainerRef,
    :schema_type => XSD::QName.new(NsTypes, "ContainerRef"),
    :schema_attribute => {
      XSD::QName.new(nil, "deleted") => "SOAP::SOAPDateTime"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Custom,
    :schema_type => XSD::QName.new(NsTypes, "Custom"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString", [0, 1]],
      ["locked", "SOAP::SOAPBoolean", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::CustomList,
    :schema_type => XSD::QName.new(NsTypes, "CustomList"),
    :schema_element => [
      ["custom", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DayOfMonthList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfMonthList"),
    :schema_element => [
      ["day", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DayOfWeek,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeek"),
    :schema_attribute => {
      XSD::QName.new(nil, "occurrence") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::DayOfYearList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearList"),
    :schema_element => [
      ["day", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DayOfYearWeek,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearWeek"),
    :schema_attribute => {
      XSD::QName.new(nil, "occurrence") => "SOAP::SOAPShort"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::DayOfYearWeekList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearWeekList"),
    :schema_element => [
      ["day", "GroupWise::DayOfYearWeek[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DelegatedStatus,
    :schema_type => XSD::QName.new(NsTypes, "DelegatedStatus"),
    :schema_attribute => {
      XSD::QName.new(nil, "userid") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::DelegateeStatus,
    :schema_type => XSD::QName.new(NsTypes, "DelegateeStatus"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "userid") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::DeltaInfo,
    :schema_type => XSD::QName.new(NsTypes, "DeltaInfo"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["firstSequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["lastSequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["lastTimePORebuild", "SOAP::SOAPUnsignedInt"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Distribution,
    :schema_type => XSD::QName.new(NsTypes, "Distribution"),
    :schema_element => [
      ["from", "GroupWise::From", [0, 1]],
      ["to", "SOAP::SOAPString", [0, 1]],
      ["cc", "SOAP::SOAPString", [0, 1]],
      ["bc", "SOAP::SOAPString", [0, 1]],
      ["recipients", "GroupWise::RecipientList", [0, 1]],
      ["sendoptions", "GroupWise::SendOptions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Document,
    :schema_type => XSD::QName.new(NsTypes, "Document"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["documentTypeName", "SOAP::SOAPString", [0, 1]],
      ["author", "GroupWise::NameAndEmail", [0, 1]],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["officialVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["currentVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["current", "GroupWise::AccessControlList", [0, 1]],
      ["official", "GroupWise::AccessControlList", [0, 1]],
      ["other", "GroupWise::AccessControlList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DocumentRef,
    :schema_type => XSD::QName.new(NsTypes, "DocumentRef"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["documentTypeName", "SOAP::SOAPString", [0, 1]],
      ["author", "GroupWise::NameAndEmail", [0, 1]],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["officialVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["currentVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionDescription", nil, [0, 1]],
      ["fileSize", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["acl", "GroupWise::AccessControlList", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::DocumentType,
    :schema_type => XSD::QName.new(NsTypes, "DocumentType"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["life", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["maximumVersions", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["ageAction", "GroupWise::AgeAction", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::DocumentTypeList,
    :schema_type => XSD::QName.new(NsTypes, "DocumentTypeList"),
    :schema_element => [
      ["item", "GroupWise::DocumentType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::EmailAddressList,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressList"),
    :schema_element => [
      ["email", "SOAP::SOAPString[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "primary") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Filter,
    :schema_type => XSD::QName.new(NsTypes, "Filter"),
    :schema_element => [
      ["element", "GroupWise::FilterElement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FilterElement,
    :schema_type => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FilterEntry,
    :schema_type => XSD::QName.new(NsTypes, "FilterEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["custom", "GroupWise::Custom", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]],
      ["date", "GroupWise::FilterDate", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FilterGroup,
    :schema_type => XSD::QName.new(NsTypes, "FilterGroup"),
    :schema_basetype => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"],
      ["element", "GroupWise::FilterElement[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Folder,
    :schema_type => XSD::QName.new(NsTypes, "Folder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FolderACL,
    :schema_type => XSD::QName.new(NsTypes, "FolderACL"),
    :schema_element => [
      ["entry", "GroupWise::FolderACLEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FolderACLEntry,
    :schema_type => XSD::QName.new(NsTypes, "FolderACLEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "AccessControlListEntry"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["rights", "GroupWise::Rights"],
      ["status", "GroupWise::FolderACLStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FolderList,
    :schema_type => XSD::QName.new(NsTypes, "FolderList"),
    :schema_element => [
      ["folder", "GroupWise::Folder[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyBlockList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyBlockList"),
    :schema_element => [
      ["block", "GroupWise::FreeBusyBlock[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyBlock,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyBlock"),
    :schema_element => [
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyInfo,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyInfo"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["blocks", "GroupWise::FreeBusyBlockList"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyUserList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyUserList"),
    :schema_element => [
      ["user", "GroupWise::NameAndEmail[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyInfoList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyInfoList"),
    :schema_element => [
      ["user", "GroupWise::FreeBusyInfo[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FreeBusyStats,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyStats"),
    :schema_element => [
      ["responded", "SOAP::SOAPInt"],
      ["outstanding", "SOAP::SOAPInt"],
      ["total", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::From,
    :schema_type => XSD::QName.new(NsTypes, "From"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["replyTo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::FullName,
    :schema_type => XSD::QName.new(NsTypes, "FullName"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["namePrefix", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["middleName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["nameSuffix", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Group,
    :schema_type => XSD::QName.new(NsTypes, "Group"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["members", "GroupWise::GroupMemberList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::GroupMember,
    :schema_type => XSD::QName.new(NsTypes, "GroupMember"),
    :schema_element => [
      ["id", nil],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString"],
      ["distType", "GroupWise::DistributionType", [0, 1]],
      ["itemType", "GroupWise::ContactType", [0, 1]],
      ["members", "GroupWise::GroupMemberList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::GroupMemberList,
    :schema_type => XSD::QName.new(NsTypes, "GroupMemberList"),
    :schema_element => [
      ["member", "GroupWise::GroupMember[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Host,
    :schema_type => XSD::QName.new(NsTypes, "Host"),
    :schema_element => [
      ["ipAddress", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ImAddress,
    :schema_type => XSD::QName.new(NsTypes, "ImAddress"),
    :schema_element => [
      ["service", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ImAddressList,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressList"),
    :schema_element => [
      ["im", "GroupWise::ImAddress[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Item,
    :schema_type => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemChanges,
    :schema_type => XSD::QName.new(NsTypes, "ItemChanges"),
    :schema_element => [
      ["add", "GroupWise::Item", [0, 1]],
      ["delete", "GroupWise::Item", [0, 1]],
      ["update", "GroupWise::Item", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemList,
    :schema_type => XSD::QName.new(NsTypes, "ItemList"),
    :schema_element => [
      ["item", "GroupWise::Item[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "offset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "count") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemOptions,
    :schema_type => XSD::QName.new(NsTypes, "ItemOptions"),
    :schema_element => [
      ["priority", "GroupWise::ItemOptionsPriority", [0, 1]],
      ["expires", "SOAP::SOAPDateTime", [0, 1]],
      ["delayDeliveryUntil", "SOAP::SOAPDateTime", [0, 1]],
      ["concealSubject", "SOAP::SOAPBoolean", [0, 1]],
      ["hidden", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemRef,
    :schema_type => XSD::QName.new(NsTypes, "ItemRef"),
    :schema_attribute => {
      XSD::QName.new(nil, "uid") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemRefList,
    :schema_type => XSD::QName.new(NsTypes, "ItemRefList"),
    :schema_element => [
      ["item", "[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Items,
    :schema_type => XSD::QName.new(NsTypes, "Items"),
    :schema_element => [
      ["item", "GroupWise::Item[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemStatus,
    :schema_type => XSD::QName.new(NsTypes, "ItemStatus"),
    :schema_element => [
      ["accepted", "SOAP::SOAPBoolean", [0, 1]],
      ["completed", "SOAP::SOAPBoolean", [0, 1]],
      ["delegated", "SOAP::SOAPBoolean", [0, 1]],
      ["deleted", "SOAP::SOAPBoolean", [0, 1]],
      ["forwarded", "SOAP::SOAPBoolean", [0, 1]],
      ["private", "SOAP::SOAPBoolean", [0, 1]],
      ["opened", "SOAP::SOAPBoolean", [0, 1]],
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["replied", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::JunkEntry,
    :schema_type => XSD::QName.new(NsTypes, "JunkEntry"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["match", "SOAP::SOAPString"],
      ["matchType", "GroupWise::JunkMatchType"],
      ["listType", "GroupWise::JunkHandlingListType", [0, 1]],
      ["useCount", "SOAP::SOAPInt", [0, 1]],
      ["lastUsed", "SOAP::SOAPDateTime", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::JunkHandlingList,
    :schema_type => XSD::QName.new(NsTypes, "JunkHandlingList"),
    :schema_element => [
      ["entry", "GroupWise::JunkEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Library,
    :schema_type => XSD::QName.new(NsTypes, "Library"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::LibraryList,
    :schema_type => XSD::QName.new(NsTypes, "LibraryList"),
    :schema_element => [
      ["library", "GroupWise::Library[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::LinkInfo,
    :schema_type => XSD::QName.new(NsTypes, "LinkInfo"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["type", "GroupWise::LinkType"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Mail,
    :schema_type => XSD::QName.new(NsTypes, "Mail"),
    :schema_basetype => XSD::QName.new(NsTypes, "BoxEntry"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::MessageBody,
    :schema_type => XSD::QName.new(NsTypes, "MessageBody"),
    :schema_element => [
      ["part", "GroupWise::MessagePart[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::MessagePart,
    :schema_type => XSD::QName.new(NsTypes, "MessagePart"),
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "contentId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "contentType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "length") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "offset") => "SOAP::SOAPInt"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::ModifyItem,
    :schema_type => XSD::QName.new(NsTypes, "ModifyItem"),
    :schema_element => [
      ["id", nil],
      ["notification", "GroupWise::SharedFolderNotification", [0, 1]],
      ["updates", "GroupWise::ItemChanges"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::MonthList,
    :schema_type => XSD::QName.new(NsTypes, "MonthList"),
    :schema_element => [
      ["month", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::NameAndEmail,
    :schema_type => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Note,
    :schema_type => XSD::QName.new(NsTypes, "Note"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDate", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::OfficeInfo,
    :schema_type => XSD::QName.new(NsTypes, "OfficeInfo"),
    :schema_element => [
      ["organization", "GroupWise::ItemRef", [0, 1]],
      ["department", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Organization,
    :schema_type => XSD::QName.new(NsTypes, "Organization"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["contact", "GroupWise::ItemRef", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["address", "GroupWise::PostalAddress", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::PersonalInfo,
    :schema_type => XSD::QName.new(NsTypes, "PersonalInfo"),
    :schema_element => [
      ["birthday", "SOAP::SOAPDate", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::PhoneFlags,
    :schema_type => XSD::QName.new(NsTypes, "PhoneFlags"),
    :schema_element => [
      ["called", "SOAP::SOAPBoolean", [0, 1]],
      ["pleaseCall", "SOAP::SOAPBoolean", [0, 1]],
      ["willCall", "SOAP::SOAPBoolean", [0, 1]],
      ["returnedYourCall", "SOAP::SOAPBoolean", [0, 1]],
      ["wantsToSeeYou", "SOAP::SOAPBoolean", [0, 1]],
      ["cameToSeeYou", "SOAP::SOAPBoolean", [0, 1]],
      ["urgent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::PhoneList,
    :schema_type => XSD::QName.new(NsTypes, "PhoneList"),
    :schema_element => [
      ["phone", "GroupWise::PhoneNumber[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "default") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::PhoneMessage,
    :schema_type => XSD::QName.new(NsTypes, "PhoneMessage"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["caller", "SOAP::SOAPString", [0, 1]],
      ["company", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["flags", "GroupWise::PhoneFlags", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::PhoneNumber,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumber"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::PlainText,
    :schema_type => XSD::QName.new(NsTypes, "PlainText"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::PostalAddress,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddress"),
    :schema_element => [
      ["description", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["location", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::PostalAddressList,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddressList"),
    :schema_element => [
      ["address", "GroupWise::PostalAddress[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ProblemEntry,
    :schema_type => XSD::QName.new(NsTypes, "ProblemEntry"),
    :schema_element => [
      ["element", "SOAP::SOAPString", [0, 1]],
      ["code", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ProblemList,
    :schema_type => XSD::QName.new(NsTypes, "ProblemList"),
    :schema_element => [
      ["entry", "GroupWise::ProblemEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Proxy,
    :schema_type => XSD::QName.new(NsTypes, "Proxy"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["proxy", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ProxyUser,
    :schema_type => XSD::QName.new(NsTypes, "ProxyUser"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["id", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ProxyList,
    :schema_type => XSD::QName.new(NsTypes, "ProxyList"),
    :schema_element => [
      ["proxy", "GroupWise::ProxyUser[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Query,
    :schema_type => XSD::QName.new(NsTypes, "Query"),
    :schema_element => [
      ["target", "GroupWise::QueryTarget"],
      ["filter", "GroupWise::Filter"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::QueryFolder,
    :schema_type => XSD::QName.new(NsTypes, "QueryFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["query", "GroupWise::Query", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::QueryTarget,
    :schema_type => XSD::QName.new(NsTypes, "QueryTarget"),
    :schema_element => [
      ["source", nil, [0, 1]],
      ["container", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Recipient,
    :schema_type => XSD::QName.new(NsTypes, "Recipient"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["distType", "GroupWise::DistributionType", [0, 1]],
      ["recipType", "GroupWise::RecipientType", [0, 1]],
      ["recipientStatus", "GroupWise::RecipientStatus", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RecipientList,
    :schema_type => XSD::QName.new(NsTypes, "RecipientList"),
    :schema_element => [
      ["recipient", "GroupWise::Recipient[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RecipientStatus,
    :schema_type => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RecurrenceDateType,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceDateType"),
    :schema_element => [
      ["date", "SOAP::SOAPDate[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RecurrenceRule,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceRule"),
    :schema_element => [
      ["frequency", "GroupWise::Frequency", [0, 1]],
      ["count", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["v_until", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "until")], [0, 1]],
      ["interval", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["byDay", "GroupWise::DayOfYearWeekList", [0, 1]],
      ["byMonthDay", "GroupWise::DayOfMonthList", [0, 1]],
      ["byYearDay", "GroupWise::DayOfYearList", [0, 1]],
      ["byMonth", "GroupWise::MonthList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ReferenceInfo,
    :schema_type => XSD::QName.new(NsTypes, "ReferenceInfo"),
    :schema_element => [
      ["lastReferenceDate", "SOAP::SOAPDateTime", [0, 1]],
      ["referenceCount", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Resource,
    :schema_type => XSD::QName.new(NsTypes, "Resource"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["resourceType", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["owner", "GroupWise::ItemRef", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ReturnNotification,
    :schema_type => XSD::QName.new(NsTypes, "ReturnNotification"),
    :schema_element => [
      ["opened", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["deleted", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["accepted", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["declined", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["completed", "GroupWise::ReturnNotificationOptions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ReturnNotificationOptions,
    :schema_type => XSD::QName.new(NsTypes, "ReturnNotificationOptions"),
    :schema_element => [
      ["mail", "SOAP::SOAPBoolean", [0, 1]],
      ["notify", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Rights,
    :schema_type => XSD::QName.new(NsTypes, "Rights"),
    :schema_element => [
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["add", "SOAP::SOAPBoolean", [0, 1]],
      ["edit", "SOAP::SOAPBoolean", [0, 1]],
      ["delete", "SOAP::SOAPBoolean", [0, 1]],
      ["share", "SOAP::SOAPBoolean", [0, 1]],
      ["manage", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Rule,
    :schema_type => XSD::QName.new(NsTypes, "Rule"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["execution", "GroupWise::Execution", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt"],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["types", nil, [0, 1]],
      ["source", nil, [0, 1]],
      ["conflict", "GroupWise::AppointmentConflict", [0, 1]],
      ["filter", "GroupWise::Filter", [0, 1]],
      ["actions", "GroupWise::RuleActionList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RuleAction,
    :schema_type => XSD::QName.new(NsTypes, "RuleAction"),
    :schema_element => [
      ["type", "GroupWise::RuleActionType"],
      ["container", nil, [0, 1]],
      ["item", "GroupWise::Mail", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RuleActionList,
    :schema_type => XSD::QName.new(NsTypes, "RuleActionList"),
    :schema_element => [
      ["action", "GroupWise::RuleAction[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::RuleList,
    :schema_type => XSD::QName.new(NsTypes, "RuleList"),
    :schema_element => [
      ["rule", "GroupWise::Rule[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SendOptionsRequestReply,
    :schema_type => XSD::QName.new(NsTypes, "SendOptionsRequestReply"),
    :schema_element => [
      ["whenConvenient", "SOAP::SOAPBoolean", [0, 1]],
      ["byDate", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SendOptions,
    :schema_type => XSD::QName.new(NsTypes, "SendOptions"),
    :schema_element => [
      ["requestReply", "GroupWise::SendOptionsRequestReply", [0, 1]],
      ["mimeEncoding", "SOAP::SOAPString", [0, 1]],
      ["statusTracking", "GroupWise::StatusTracking", [0, 1]],
      ["notification", "GroupWise::ReturnNotification", [0, 1]],
      ["updateFrequentContacts", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Settings,
    :schema_type => XSD::QName.new(NsTypes, "Settings"),
    :schema_element => [
      ["group", "GroupWise::SettingsGroup[]", [0, nil]],
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SettingsGroup,
    :schema_type => XSD::QName.new(NsTypes, "SettingsGroup"),
    :schema_element => [
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::SettingsList,
    :schema_type => XSD::QName.new(NsTypes, "SettingsList"),
    :schema_element => [
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SharedFolder,
    :schema_type => XSD::QName.new(NsTypes, "SharedFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["rights", "GroupWise::Rights", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["owner", nil, [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]],
      ["isSharedToMe", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SharedFolderNotification,
    :schema_type => XSD::QName.new(NsTypes, "SharedFolderNotification"),
    :schema_element => [
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SharedNotification,
    :schema_type => XSD::QName.new(NsTypes, "SharedNotification"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["notification", "GroupWise::NotificationType"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["rights", "GroupWise::Rights", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Signature,
    :schema_type => XSD::QName.new(NsTypes, "Signature"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["default", "SOAP::SOAPBoolean", [0, 1]],
      ["part", "GroupWise::SignatureData", [0, 1]],
      ["global", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Signatures,
    :schema_type => XSD::QName.new(NsTypes, "Signatures"),
    :schema_element => [
      ["signature", "GroupWise::Signature[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SignatureData,
    :schema_type => XSD::QName.new(NsTypes, "SignatureData"),
    :schema_element => [
      ["size", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::SMimeOperation,
    :schema_type => XSD::QName.new(NsTypes, "SMimeOperation"),
    :schema_element => [
      ["signed", "SOAP::SOAPBoolean", [0, 1]],
      ["encrypted", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Status,
    :schema_type => XSD::QName.new(NsTypes, "Status"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["info", "SOAP::SOAPString", [0, 1]],
      ["problems", "GroupWise::ProblemList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::StatusTracking,
    :schema_type => XSD::QName.new(NsTypes, "StatusTracking"),
    :schema_attribute => {
      XSD::QName.new(nil, "autoDelete") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::SystemFolder,
    :schema_type => XSD::QName.new(NsTypes, "SystemFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["isSystemFolder", "SOAP::SOAPBoolean", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Task,
    :schema_type => XSD::QName.new(NsTypes, "Task"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDate", [0, 1]],
      ["dueDate", "SOAP::SOAPDate", [0, 1]],
      ["assignedDate", "SOAP::SOAPDate", [0, 1]],
      ["taskPriority", "SOAP::SOAPString", [0, 1]],
      ["completed", "SOAP::SOAPBoolean", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Timezone,
    :schema_type => XSD::QName.new(NsTypes, "Timezone"),
    :schema_element => [
      ["id", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["daylight", "GroupWise::TimezoneComponent", [0, 1]],
      ["standard", "GroupWise::TimezoneComponent", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::TimezoneComponent,
    :schema_type => XSD::QName.new(NsTypes, "TimezoneComponent"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["month", nil, [0, 1]],
      ["day", nil, [0, 1]],
      ["dayOfWeek", "GroupWise::DayOfWeek", [0, 1]],
      ["hour", nil, [0, 1]],
      ["minute", nil, [0, 1]],
      ["offset", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::TimezoneList,
    :schema_type => XSD::QName.new(NsTypes, "TimezoneList"),
    :schema_element => [
      ["timezone", "GroupWise::Timezone[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::TransferFailedStatus,
    :schema_type => XSD::QName.new(NsTypes, "TransferFailedStatus"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "FailureReason") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::TrustedApplication,
    :schema_type => XSD::QName.new(NsTypes, "TrustedApplication"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::UserInfo,
    :schema_type => XSD::QName.new(NsTypes, "UserInfo"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["recipType", "GroupWise::RecipientType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::UserList,
    :schema_type => XSD::QName.new(NsTypes, "UserList"),
    :schema_element => [
      ["user", "GroupWise::UserInfo[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Version,
    :schema_type => XSD::QName.new(NsTypes, "Version"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionCreator", "GroupWise::NameAndEmail", [0, 1]],
      ["retrievedBy", "GroupWise::NameAndEmail", [0, 1]],
      ["retrievedDate", "SOAP::SOAPDateTime", [0, 1]],
      ["versionNumber", "SOAP::SOAPUnsignedInt"],
      ["versionDescription", "SOAP::SOAPString", [0, 1]],
      ["versionStatus", "GroupWise::VersionStatus", [0, 1]],
      ["life", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["ageAction", "GroupWise::AgeAction", [0, 1]],
      ["fileSize", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::VersionEvent,
    :schema_type => XSD::QName.new(NsTypes, "VersionEvent"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt"],
      ["versionNumber", "SOAP::SOAPUnsignedInt"],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["event", "GroupWise::VersionEventType"],
      ["eventNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::ContainerList,
    :schema_type => XSD::QName.new(NsEvents, "ContainerList"),
    :schema_element => [
      ["container", "[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "not") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::Event,
    :schema_type => XSD::QName.new(NsEvents, "Event"),
    :schema_element => [
      ["event", "GroupWise::EventType"],
      ["id", nil, [0, 1]],
      ["timeStamp", "SOAP::SOAPDateTime", [0, 1]],
      ["field", nil, [0, 1]],
      ["container", nil, [0, 1]],
      ["from", nil, [0, 1]],
      ["key", "SOAP::SOAPString", [0, 1]],
      ["uid", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["type", "GroupWise::ItemType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::EventDefinition,
    :schema_type => XSD::QName.new(NsEvents, "EventDefinition"),
    :schema_element => [
      ["events", "GroupWise::EventTypeList"],
      ["type", nil, [0, 1]],
      ["field", nil, [0, 1]],
      ["containers", "GroupWise::ContainerList", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::EventList,
    :schema_type => XSD::QName.new(NsEvents, "EventList"),
    :schema_element => [
      ["event", "GroupWise::Event[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Events,
    :schema_type => XSD::QName.new(NsEvents, "Events"),
    :schema_element => [
      ["key", "SOAP::SOAPString"],
      ["persistence", "SOAP::SOAPDuration", [0, 1]],
      ["ipAddress", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPInt", [0, 1]],
      ["http", "SOAP::SOAPBoolean", [0, 1]],
      ["definition", "GroupWise::EventDefinition", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "enabled") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => GroupWise::EventsList,
    :schema_type => XSD::QName.new(NsEvents, "EventsList"),
    :schema_element => [
      ["event", "GroupWise::Events[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::EventTypeList,
    :schema_type => XSD::QName.new(NsEvents, "EventTypeList"),
    :schema_element => [
      ["event", "GroupWise::EventType[]", [1, 36]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::Notify,
    :schema_type => XSD::QName.new(NsEvents, "Notify"),
    :schema_element => [
      ["userid", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupWise::AcceptLevel,
    :schema_type => XSD::QName.new(NsTypes, "AcceptLevel")
  )

  EncodedRegistry.register(
    :class => GroupWise::AgeAction,
    :schema_type => XSD::QName.new(NsTypes, "AgeAction")
  )

  EncodedRegistry.register(
    :class => GroupWise::AppointmentConflict,
    :schema_type => XSD::QName.new(NsTypes, "AppointmentConflict")
  )

  EncodedRegistry.register(
    :class => GroupWise::CalendarFolderFlags,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderFlags")
  )

  EncodedRegistry.register(
    :class => GroupWise::CategoryType,
    :schema_type => XSD::QName.new(NsTypes, "CategoryType")
  )

  EncodedRegistry.register(
    :class => GroupWise::ContactType,
    :schema_type => XSD::QName.new(NsTypes, "ContactType")
  )

  EncodedRegistry.register(
    :class => GroupWise::CursorSeek,
    :schema_type => XSD::QName.new(NsTypes, "CursorSeek")
  )

  EncodedRegistry.register(
    :class => GroupWise::CustomType,
    :schema_type => XSD::QName.new(NsTypes, "CustomType")
  )

  EncodedRegistry.register(
    :class => GroupWise::DeltaSyncType,
    :schema_type => XSD::QName.new(NsTypes, "DeltaSyncType")
  )

  EncodedRegistry.register(
    :class => GroupWise::DistributionType,
    :schema_type => XSD::QName.new(NsTypes, "DistributionType")
  )

  EncodedRegistry.register(
    :class => GroupWise::Execution,
    :schema_type => XSD::QName.new(NsTypes, "Execution")
  )

  EncodedRegistry.register(
    :class => GroupWise::FilterDate,
    :schema_type => XSD::QName.new(NsTypes, "FilterDate")
  )

  EncodedRegistry.register(
    :class => GroupWise::FilterOp,
    :schema_type => XSD::QName.new(NsTypes, "FilterOp")
  )

  EncodedRegistry.register(
    :class => GroupWise::FolderACLStatus,
    :schema_type => XSD::QName.new(NsTypes, "FolderACLStatus")
  )

  EncodedRegistry.register(
    :class => GroupWise::FolderType,
    :schema_type => XSD::QName.new(NsTypes, "FolderType")
  )

  EncodedRegistry.register(
    :class => GroupWise::Frequency,
    :schema_type => XSD::QName.new(NsTypes, "Frequency")
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemClass,
    :schema_type => XSD::QName.new(NsTypes, "ItemClass")
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemOptionsPriority,
    :schema_type => XSD::QName.new(NsTypes, "ItemOptionsPriority")
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemSecurity,
    :schema_type => XSD::QName.new(NsTypes, "ItemSecurity")
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemSource,
    :schema_type => XSD::QName.new(NsTypes, "ItemSource")
  )

  EncodedRegistry.register(
    :class => GroupWise::JunkHandlingListType,
    :schema_type => XSD::QName.new(NsTypes, "JunkHandlingListType")
  )

  EncodedRegistry.register(
    :class => GroupWise::JunkMatchType,
    :schema_type => XSD::QName.new(NsTypes, "JunkMatchType")
  )

  EncodedRegistry.register(
    :class => GroupWise::LinkType,
    :schema_type => XSD::QName.new(NsTypes, "LinkType")
  )

  EncodedRegistry.register(
    :class => GroupWise::MessageList,
    :schema_type => XSD::QName.new(NsTypes, "MessageList")
  )

  EncodedRegistry.register(
    :class => GroupWise::MessageType,
    :schema_type => XSD::QName.new(NsTypes, "MessageType")
  )

  EncodedRegistry.register(
    :class => GroupWise::NotificationType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationType")
  )

  EncodedRegistry.register(
    :class => GroupWise::OccurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceType")
  )

  EncodedRegistry.register(
    :class => GroupWise::PhoneNumberType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberType")
  )

  EncodedRegistry.register(
    :class => GroupWise::PostalAddressType,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddressType")
  )

  EncodedRegistry.register(
    :class => GroupWise::RecipientType,
    :schema_type => XSD::QName.new(NsTypes, "RecipientType")
  )

  EncodedRegistry.register(
    :class => GroupWise::RetractType,
    :schema_type => XSD::QName.new(NsTypes, "RetractType")
  )

  EncodedRegistry.register(
    :class => GroupWise::RuleActionType,
    :schema_type => XSD::QName.new(NsTypes, "RuleActionType")
  )

  EncodedRegistry.register(
    :class => GroupWise::StatusTrackingOptions,
    :schema_type => XSD::QName.new(NsTypes, "StatusTrackingOptions")
  )

  EncodedRegistry.register(
    :class => GroupWise::VersionEventType,
    :schema_type => XSD::QName.new(NsTypes, "VersionEventType")
  )

  EncodedRegistry.register(
    :class => GroupWise::VersionStatus,
    :schema_type => XSD::QName.new(NsTypes, "VersionStatus")
  )

  EncodedRegistry.register(
    :class => GroupWise::WeekDay,
    :schema_type => XSD::QName.new(NsTypes, "WeekDay")
  )

  EncodedRegistry.register(
    :class => GroupWise::EventType,
    :schema_type => XSD::QName.new(NsEvents, "EventType")
  )

  EncodedRegistry.register(
    :class => GroupWise::Field,
    :schema_type => XSD::QName.new(NsEvents, "Field")
  )

  EncodedRegistry.register(
    :class => GroupWise::ItemType,
    :schema_type => XSD::QName.new(NsEvents, "ItemType")
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessControlListEntry,
    :schema_type => XSD::QName.new(NsTypes, "AccessControlListEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["rights", "GroupWise::Rights"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessControlList,
    :schema_type => XSD::QName.new(NsTypes, "AccessControlList"),
    :schema_element => [
      ["entry", "GroupWise::AccessControlListEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessMiscRight,
    :schema_type => XSD::QName.new(NsTypes, "AccessMiscRight"),
    :schema_element => [
      ["alarms", "SOAP::SOAPBoolean", [0, 1]],
      ["notify", "SOAP::SOAPBoolean", [0, 1]],
      ["readHidden", "SOAP::SOAPBoolean", [0, 1]],
      ["setup", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessRight,
    :schema_type => XSD::QName.new(NsTypes, "AccessRight"),
    :schema_element => [
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["write", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessRightChanges,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightChanges"),
    :schema_element => [
      ["add", "GroupWise::AccessRightEntry", [0, 1]],
      ["delete", "GroupWise::AccessRightEntry", [0, 1]],
      ["update", "GroupWise::AccessRightEntry", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessRightEntry,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["id", nil, [0, 1]],
      ["appointment", "GroupWise::AccessRight", [0, 1]],
      ["mail", "GroupWise::AccessRight", [0, 1]],
      ["misc", "GroupWise::AccessMiscRight", [0, 1]],
      ["note", "GroupWise::AccessRight", [0, 1]],
      ["task", "GroupWise::AccessRight", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AccessRightList,
    :schema_type => XSD::QName.new(NsTypes, "AccessRightList"),
    :schema_element => [
      ["entry", "GroupWise::AccessRightEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddressBook,
    :schema_type => XSD::QName.new(NsTypes, "AddressBook"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["isPersonal", "SOAP::SOAPBoolean", [0, 1]],
      ["isFrequentContacts", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddressBookItem,
    :schema_type => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddressBookList,
    :schema_type => XSD::QName.new(NsTypes, "AddressBookList"),
    :schema_element => [
      ["book", "GroupWise::AddressBook[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Alarm,
    :schema_type => XSD::QName.new(NsTypes, "Alarm"),
    :schema_attribute => {
      XSD::QName.new(nil, "enabled") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Appointment,
    :schema_type => XSD::QName.new(NsTypes, "Appointment"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDateTime", [0, 1]],
      ["endDate", "SOAP::SOAPDateTime", [0, 1]],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["alarm", "GroupWise::Alarm", [0, 1]],
      ["allDayEvent", "SOAP::SOAPBoolean", [0, 1]],
      ["place", "SOAP::SOAPString", [0, 1]],
      ["timezone", "GroupWise::Timezone", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::AttachmentID,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentID"),
    :schema_attribute => {
      XSD::QName.new(nil, "itemReference") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::AttachmentInfo,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentInfo"),
    :schema_element => [
      ["attachment", "GroupWise::AttachmentItemInfo[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AttachmentItemInfo,
    :schema_type => XSD::QName.new(NsTypes, "AttachmentItemInfo"),
    :schema_element => [
      ["id", "GroupWise::AttachmentID", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["contentId", "SOAP::SOAPString", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["size", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["date", "SOAP::SOAPDateTime", [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["hidden", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Authentication,
    :schema_type => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::BoxEntry,
    :schema_type => XSD::QName.new(NsTypes, "BoxEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CalendarFolderAttribute,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderAttribute"),
    :schema_element => [
      ["flags", "GroupWise::CalendarFolderFlags[]", [0, 2]],
      ["color", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CalendarItem,
    :schema_type => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Category,
    :schema_type => XSD::QName.new(NsTypes, "Category"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["type", "GroupWise::CategoryType", [0, 1]],
      ["color", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CategoryList,
    :schema_type => XSD::QName.new(NsTypes, "CategoryList"),
    :schema_element => [
      ["category", "GroupWise::Category[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CategoryRefList,
    :schema_type => XSD::QName.new(NsTypes, "CategoryRefList"),
    :schema_element => [
      ["category", "[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "primary") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::CommentStatus,
    :schema_type => XSD::QName.new(NsTypes, "CommentStatus"),
    :schema_attribute => {
      XSD::QName.new(nil, "comment") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Contact,
    :schema_type => XSD::QName.new(NsTypes, "Contact"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["fullName", "GroupWise::FullName", [0, 1]],
      ["emailList", "GroupWise::EmailAddressList", [0, 1]],
      ["imList", "GroupWise::ImAddressList", [0, 1]],
      ["phoneList", "GroupWise::PhoneList", [0, 1]],
      ["addressList", "GroupWise::PostalAddressList", [0, 1]],
      ["officeInfo", "GroupWise::OfficeInfo", [0, 1]],
      ["personalInfo", "GroupWise::PersonalInfo", [0, 1]],
      ["referenceInfo", "GroupWise::ReferenceInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ContactFolder,
    :schema_type => XSD::QName.new(NsTypes, "ContactFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "SystemFolder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["isSystemFolder", "SOAP::SOAPBoolean", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]],
      ["addressBook", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ContainerItem,
    :schema_type => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ContainerRef,
    :schema_type => XSD::QName.new(NsTypes, "ContainerRef"),
    :schema_attribute => {
      XSD::QName.new(nil, "deleted") => "SOAP::SOAPDateTime"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Custom,
    :schema_type => XSD::QName.new(NsTypes, "Custom"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString", [0, 1]],
      ["locked", "SOAP::SOAPBoolean", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::CustomList,
    :schema_type => XSD::QName.new(NsTypes, "CustomList"),
    :schema_element => [
      ["custom", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DayOfMonthList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfMonthList"),
    :schema_element => [
      ["day", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DayOfWeek,
    :schema_type => XSD::QName.new(NsTypes, "DayOfWeek"),
    :schema_attribute => {
      XSD::QName.new(nil, "occurrence") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::DayOfYearList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearList"),
    :schema_element => [
      ["day", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DayOfYearWeek,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearWeek"),
    :schema_attribute => {
      XSD::QName.new(nil, "occurrence") => "SOAP::SOAPShort"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::DayOfYearWeekList,
    :schema_type => XSD::QName.new(NsTypes, "DayOfYearWeekList"),
    :schema_element => [
      ["day", "GroupWise::DayOfYearWeek[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DelegatedStatus,
    :schema_type => XSD::QName.new(NsTypes, "DelegatedStatus"),
    :schema_attribute => {
      XSD::QName.new(nil, "userid") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::DelegateeStatus,
    :schema_type => XSD::QName.new(NsTypes, "DelegateeStatus"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "userid") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::DeltaInfo,
    :schema_type => XSD::QName.new(NsTypes, "DeltaInfo"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["firstSequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["lastSequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["lastTimePORebuild", "SOAP::SOAPUnsignedInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Distribution,
    :schema_type => XSD::QName.new(NsTypes, "Distribution"),
    :schema_element => [
      ["from", "GroupWise::From", [0, 1]],
      ["to", "SOAP::SOAPString", [0, 1]],
      ["cc", "SOAP::SOAPString", [0, 1]],
      ["bc", "SOAP::SOAPString", [0, 1]],
      ["recipients", "GroupWise::RecipientList", [0, 1]],
      ["sendoptions", "GroupWise::SendOptions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Document,
    :schema_type => XSD::QName.new(NsTypes, "Document"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["documentTypeName", "SOAP::SOAPString", [0, 1]],
      ["author", "GroupWise::NameAndEmail", [0, 1]],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["officialVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["currentVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["current", "GroupWise::AccessControlList", [0, 1]],
      ["official", "GroupWise::AccessControlList", [0, 1]],
      ["other", "GroupWise::AccessControlList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DocumentRef,
    :schema_type => XSD::QName.new(NsTypes, "DocumentRef"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["documentTypeName", "SOAP::SOAPString", [0, 1]],
      ["author", "GroupWise::NameAndEmail", [0, 1]],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["officialVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["currentVersion", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionDescription", nil, [0, 1]],
      ["fileSize", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["acl", "GroupWise::AccessControlList", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::DocumentType,
    :schema_type => XSD::QName.new(NsTypes, "DocumentType"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["life", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["maximumVersions", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["ageAction", "GroupWise::AgeAction", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DocumentTypeList,
    :schema_type => XSD::QName.new(NsTypes, "DocumentTypeList"),
    :schema_element => [
      ["item", "GroupWise::DocumentType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::EmailAddressList,
    :schema_type => XSD::QName.new(NsTypes, "EmailAddressList"),
    :schema_element => [
      ["email", "SOAP::SOAPString[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "primary") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Filter,
    :schema_type => XSD::QName.new(NsTypes, "Filter"),
    :schema_element => [
      ["element", "GroupWise::FilterElement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FilterElement,
    :schema_type => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FilterEntry,
    :schema_type => XSD::QName.new(NsTypes, "FilterEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["custom", "GroupWise::Custom", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]],
      ["date", "GroupWise::FilterDate", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FilterGroup,
    :schema_type => XSD::QName.new(NsTypes, "FilterGroup"),
    :schema_basetype => XSD::QName.new(NsTypes, "FilterElement"),
    :schema_element => [
      ["op", "GroupWise::FilterOp"],
      ["element", "GroupWise::FilterElement[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Folder,
    :schema_type => XSD::QName.new(NsTypes, "Folder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FolderACL,
    :schema_type => XSD::QName.new(NsTypes, "FolderACL"),
    :schema_element => [
      ["entry", "GroupWise::FolderACLEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FolderACLEntry,
    :schema_type => XSD::QName.new(NsTypes, "FolderACLEntry"),
    :schema_basetype => XSD::QName.new(NsTypes, "AccessControlListEntry"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["rights", "GroupWise::Rights"],
      ["status", "GroupWise::FolderACLStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FolderList,
    :schema_type => XSD::QName.new(NsTypes, "FolderList"),
    :schema_element => [
      ["folder", "GroupWise::Folder[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyBlockList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyBlockList"),
    :schema_element => [
      ["block", "GroupWise::FreeBusyBlock[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyBlock,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyBlock"),
    :schema_element => [
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyInfo,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyInfo"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["blocks", "GroupWise::FreeBusyBlockList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyUserList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyUserList"),
    :schema_element => [
      ["user", "GroupWise::NameAndEmail[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyInfoList,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyInfoList"),
    :schema_element => [
      ["user", "GroupWise::FreeBusyInfo[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FreeBusyStats,
    :schema_type => XSD::QName.new(NsTypes, "FreeBusyStats"),
    :schema_element => [
      ["responded", "SOAP::SOAPInt"],
      ["outstanding", "SOAP::SOAPInt"],
      ["total", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::From,
    :schema_type => XSD::QName.new(NsTypes, "From"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["replyTo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::FullName,
    :schema_type => XSD::QName.new(NsTypes, "FullName"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["namePrefix", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["middleName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["nameSuffix", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Group,
    :schema_type => XSD::QName.new(NsTypes, "Group"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["members", "GroupWise::GroupMemberList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GroupMember,
    :schema_type => XSD::QName.new(NsTypes, "GroupMember"),
    :schema_element => [
      ["id", nil],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString"],
      ["distType", "GroupWise::DistributionType", [0, 1]],
      ["itemType", "GroupWise::ContactType", [0, 1]],
      ["members", "GroupWise::GroupMemberList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GroupMemberList,
    :schema_type => XSD::QName.new(NsTypes, "GroupMemberList"),
    :schema_element => [
      ["member", "GroupWise::GroupMember[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Host,
    :schema_type => XSD::QName.new(NsTypes, "Host"),
    :schema_element => [
      ["ipAddress", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ImAddress,
    :schema_type => XSD::QName.new(NsTypes, "ImAddress"),
    :schema_element => [
      ["service", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ImAddressList,
    :schema_type => XSD::QName.new(NsTypes, "ImAddressList"),
    :schema_element => [
      ["im", "GroupWise::ImAddress[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Item,
    :schema_type => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemChanges,
    :schema_type => XSD::QName.new(NsTypes, "ItemChanges"),
    :schema_element => [
      ["add", "GroupWise::Item", [0, 1]],
      ["delete", "GroupWise::Item", [0, 1]],
      ["update", "GroupWise::Item", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemList,
    :schema_type => XSD::QName.new(NsTypes, "ItemList"),
    :schema_element => [
      ["item", "GroupWise::Item[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "offset") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "count") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemOptions,
    :schema_type => XSD::QName.new(NsTypes, "ItemOptions"),
    :schema_element => [
      ["priority", "GroupWise::ItemOptionsPriority", [0, 1]],
      ["expires", "SOAP::SOAPDateTime", [0, 1]],
      ["delayDeliveryUntil", "SOAP::SOAPDateTime", [0, 1]],
      ["concealSubject", "SOAP::SOAPBoolean", [0, 1]],
      ["hidden", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemRef,
    :schema_type => XSD::QName.new(NsTypes, "ItemRef"),
    :schema_attribute => {
      XSD::QName.new(nil, "uid") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemRefList,
    :schema_type => XSD::QName.new(NsTypes, "ItemRefList"),
    :schema_element => [
      ["item", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Items,
    :schema_type => XSD::QName.new(NsTypes, "Items"),
    :schema_element => [
      ["item", "GroupWise::Item[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemStatus,
    :schema_type => XSD::QName.new(NsTypes, "ItemStatus"),
    :schema_element => [
      ["accepted", "SOAP::SOAPBoolean", [0, 1]],
      ["completed", "SOAP::SOAPBoolean", [0, 1]],
      ["delegated", "SOAP::SOAPBoolean", [0, 1]],
      ["deleted", "SOAP::SOAPBoolean", [0, 1]],
      ["forwarded", "SOAP::SOAPBoolean", [0, 1]],
      ["private", "SOAP::SOAPBoolean", [0, 1]],
      ["opened", "SOAP::SOAPBoolean", [0, 1]],
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["replied", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::JunkEntry,
    :schema_type => XSD::QName.new(NsTypes, "JunkEntry"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["match", "SOAP::SOAPString"],
      ["matchType", "GroupWise::JunkMatchType"],
      ["listType", "GroupWise::JunkHandlingListType", [0, 1]],
      ["useCount", "SOAP::SOAPInt", [0, 1]],
      ["lastUsed", "SOAP::SOAPDateTime", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::JunkHandlingList,
    :schema_type => XSD::QName.new(NsTypes, "JunkHandlingList"),
    :schema_element => [
      ["entry", "GroupWise::JunkEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Library,
    :schema_type => XSD::QName.new(NsTypes, "Library"),
    :schema_basetype => XSD::QName.new(NsTypes, "Item"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::LibraryList,
    :schema_type => XSD::QName.new(NsTypes, "LibraryList"),
    :schema_element => [
      ["library", "GroupWise::Library[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::LinkInfo,
    :schema_type => XSD::QName.new(NsTypes, "LinkInfo"),
    :schema_element => [
      ["id", "SOAP::SOAPString"],
      ["type", "GroupWise::LinkType"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Mail,
    :schema_type => XSD::QName.new(NsTypes, "Mail"),
    :schema_basetype => XSD::QName.new(NsTypes, "BoxEntry"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::MessageBody,
    :schema_type => XSD::QName.new(NsTypes, "MessageBody"),
    :schema_element => [
      ["part", "GroupWise::MessagePart[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MessagePart,
    :schema_type => XSD::QName.new(NsTypes, "MessagePart"),
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "contentId") => "SOAP::SOAPString",
      XSD::QName.new(nil, "contentType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "length") => "SOAP::SOAPInt",
      XSD::QName.new(nil, "offset") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyItem,
    :schema_type => XSD::QName.new(NsTypes, "ModifyItem"),
    :schema_element => [
      ["id", nil],
      ["notification", "GroupWise::SharedFolderNotification", [0, 1]],
      ["updates", "GroupWise::ItemChanges"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MonthList,
    :schema_type => XSD::QName.new(NsTypes, "MonthList"),
    :schema_element => [
      ["month", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::NameAndEmail,
    :schema_type => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Note,
    :schema_type => XSD::QName.new(NsTypes, "Note"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDate", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::OfficeInfo,
    :schema_type => XSD::QName.new(NsTypes, "OfficeInfo"),
    :schema_element => [
      ["organization", "GroupWise::ItemRef", [0, 1]],
      ["department", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Organization,
    :schema_type => XSD::QName.new(NsTypes, "Organization"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["contact", "GroupWise::ItemRef", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["address", "GroupWise::PostalAddress", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PersonalInfo,
    :schema_type => XSD::QName.new(NsTypes, "PersonalInfo"),
    :schema_element => [
      ["birthday", "SOAP::SOAPDate", [0, 1]],
      ["website", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PhoneFlags,
    :schema_type => XSD::QName.new(NsTypes, "PhoneFlags"),
    :schema_element => [
      ["called", "SOAP::SOAPBoolean", [0, 1]],
      ["pleaseCall", "SOAP::SOAPBoolean", [0, 1]],
      ["willCall", "SOAP::SOAPBoolean", [0, 1]],
      ["returnedYourCall", "SOAP::SOAPBoolean", [0, 1]],
      ["wantsToSeeYou", "SOAP::SOAPBoolean", [0, 1]],
      ["cameToSeeYou", "SOAP::SOAPBoolean", [0, 1]],
      ["urgent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PhoneList,
    :schema_type => XSD::QName.new(NsTypes, "PhoneList"),
    :schema_element => [
      ["phone", "GroupWise::PhoneNumber[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "default") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::PhoneMessage,
    :schema_type => XSD::QName.new(NsTypes, "PhoneMessage"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["caller", "SOAP::SOAPString", [0, 1]],
      ["company", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["flags", "GroupWise::PhoneFlags", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::PhoneNumber,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumber"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::PlainText,
    :schema_type => XSD::QName.new(NsTypes, "PlainText"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PostalAddress,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddress"),
    :schema_element => [
      ["description", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["location", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::PostalAddressList,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddressList"),
    :schema_element => [
      ["address", "GroupWise::PostalAddress[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ProblemEntry,
    :schema_type => XSD::QName.new(NsTypes, "ProblemEntry"),
    :schema_element => [
      ["element", "SOAP::SOAPString", [0, 1]],
      ["code", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ProblemList,
    :schema_type => XSD::QName.new(NsTypes, "ProblemList"),
    :schema_element => [
      ["entry", "GroupWise::ProblemEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Proxy,
    :schema_type => XSD::QName.new(NsTypes, "Proxy"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["proxy", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ProxyUser,
    :schema_type => XSD::QName.new(NsTypes, "ProxyUser"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["id", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ProxyList,
    :schema_type => XSD::QName.new(NsTypes, "ProxyList"),
    :schema_element => [
      ["proxy", "GroupWise::ProxyUser[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Query,
    :schema_type => XSD::QName.new(NsTypes, "Query"),
    :schema_element => [
      ["target", "GroupWise::QueryTarget"],
      ["filter", "GroupWise::Filter"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::QueryFolder,
    :schema_type => XSD::QName.new(NsTypes, "QueryFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["query", "GroupWise::Query", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::QueryTarget,
    :schema_type => XSD::QName.new(NsTypes, "QueryTarget"),
    :schema_element => [
      ["source", nil, [0, 1]],
      ["container", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Recipient,
    :schema_type => XSD::QName.new(NsTypes, "Recipient"),
    :schema_basetype => XSD::QName.new(NsTypes, "NameAndEmail"),
    :schema_element => [
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["distType", "GroupWise::DistributionType", [0, 1]],
      ["recipType", "GroupWise::RecipientType", [0, 1]],
      ["recipientStatus", "GroupWise::RecipientStatus", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RecipientList,
    :schema_type => XSD::QName.new(NsTypes, "RecipientList"),
    :schema_element => [
      ["recipient", "GroupWise::Recipient[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RecipientStatus,
    :schema_type => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RecurrenceDateType,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceDateType"),
    :schema_element => [
      ["date", "SOAP::SOAPDate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RecurrenceRule,
    :schema_type => XSD::QName.new(NsTypes, "RecurrenceRule"),
    :schema_element => [
      ["frequency", "GroupWise::Frequency", [0, 1]],
      ["count", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["v_until", ["SOAP::SOAPDate", XSD::QName.new(NsTypes, "until")], [0, 1]],
      ["interval", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["byDay", "GroupWise::DayOfYearWeekList", [0, 1]],
      ["byMonthDay", "GroupWise::DayOfMonthList", [0, 1]],
      ["byYearDay", "GroupWise::DayOfYearList", [0, 1]],
      ["byMonth", "GroupWise::MonthList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReferenceInfo,
    :schema_type => XSD::QName.new(NsTypes, "ReferenceInfo"),
    :schema_element => [
      ["lastReferenceDate", "SOAP::SOAPDateTime", [0, 1]],
      ["referenceCount", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Resource,
    :schema_type => XSD::QName.new(NsTypes, "Resource"),
    :schema_basetype => XSD::QName.new(NsTypes, "AddressBookItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["sync", "GroupWise::DeltaSyncType", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["postOffice", "SOAP::SOAPString", [0, 1]],
      ["distinguishedName", "SOAP::SOAPString", [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["resourceType", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["owner", "GroupWise::ItemRef", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReturnNotification,
    :schema_type => XSD::QName.new(NsTypes, "ReturnNotification"),
    :schema_element => [
      ["opened", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["deleted", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["accepted", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["declined", "GroupWise::ReturnNotificationOptions", [0, 1]],
      ["completed", "GroupWise::ReturnNotificationOptions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReturnNotificationOptions,
    :schema_type => XSD::QName.new(NsTypes, "ReturnNotificationOptions"),
    :schema_element => [
      ["mail", "SOAP::SOAPBoolean", [0, 1]],
      ["notify", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Rights,
    :schema_type => XSD::QName.new(NsTypes, "Rights"),
    :schema_element => [
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["add", "SOAP::SOAPBoolean", [0, 1]],
      ["edit", "SOAP::SOAPBoolean", [0, 1]],
      ["delete", "SOAP::SOAPBoolean", [0, 1]],
      ["share", "SOAP::SOAPBoolean", [0, 1]],
      ["manage", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Rule,
    :schema_type => XSD::QName.new(NsTypes, "Rule"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["execution", "GroupWise::Execution", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt"],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["types", nil, [0, 1]],
      ["source", nil, [0, 1]],
      ["conflict", "GroupWise::AppointmentConflict", [0, 1]],
      ["filter", "GroupWise::Filter", [0, 1]],
      ["actions", "GroupWise::RuleActionList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RuleAction,
    :schema_type => XSD::QName.new(NsTypes, "RuleAction"),
    :schema_element => [
      ["type", "GroupWise::RuleActionType"],
      ["container", nil, [0, 1]],
      ["item", "GroupWise::Mail", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]],
      ["acceptLevel", "GroupWise::AcceptLevel", [0, 1]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RuleActionList,
    :schema_type => XSD::QName.new(NsTypes, "RuleActionList"),
    :schema_element => [
      ["action", "GroupWise::RuleAction[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RuleList,
    :schema_type => XSD::QName.new(NsTypes, "RuleList"),
    :schema_element => [
      ["rule", "GroupWise::Rule[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SendOptionsRequestReply,
    :schema_type => XSD::QName.new(NsTypes, "SendOptionsRequestReply"),
    :schema_element => [
      ["whenConvenient", "SOAP::SOAPBoolean", [0, 1]],
      ["byDate", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SendOptions,
    :schema_type => XSD::QName.new(NsTypes, "SendOptions"),
    :schema_element => [
      ["requestReply", "GroupWise::SendOptionsRequestReply", [0, 1]],
      ["mimeEncoding", "SOAP::SOAPString", [0, 1]],
      ["statusTracking", "GroupWise::StatusTracking", [0, 1]],
      ["notification", "GroupWise::ReturnNotification", [0, 1]],
      ["updateFrequentContacts", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Settings,
    :schema_type => XSD::QName.new(NsTypes, "Settings"),
    :schema_element => [
      ["group", "GroupWise::SettingsGroup[]", [0, nil]],
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SettingsGroup,
    :schema_type => XSD::QName.new(NsTypes, "SettingsGroup"),
    :schema_element => [
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::SettingsList,
    :schema_type => XSD::QName.new(NsTypes, "SettingsList"),
    :schema_element => [
      ["setting", "GroupWise::Custom[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SharedFolder,
    :schema_type => XSD::QName.new(NsTypes, "SharedFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["rights", "GroupWise::Rights", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["owner", nil, [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]],
      ["isSharedToMe", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SharedFolderNotification,
    :schema_type => XSD::QName.new(NsTypes, "SharedFolderNotification"),
    :schema_element => [
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SharedNotification,
    :schema_type => XSD::QName.new(NsTypes, "SharedNotification"),
    :schema_basetype => XSD::QName.new(NsTypes, "Mail"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["notification", "GroupWise::NotificationType"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["rights", "GroupWise::Rights", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Signature,
    :schema_type => XSD::QName.new(NsTypes, "Signature"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["default", "SOAP::SOAPBoolean", [0, 1]],
      ["part", "GroupWise::SignatureData", [0, 1]],
      ["global", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Signatures,
    :schema_type => XSD::QName.new(NsTypes, "Signatures"),
    :schema_element => [
      ["signature", "GroupWise::Signature[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SignatureData,
    :schema_type => XSD::QName.new(NsTypes, "SignatureData"),
    :schema_element => [
      ["size", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SMimeOperation,
    :schema_type => XSD::QName.new(NsTypes, "SMimeOperation"),
    :schema_element => [
      ["signed", "SOAP::SOAPBoolean", [0, 1]],
      ["encrypted", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Status,
    :schema_type => XSD::QName.new(NsTypes, "Status"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["info", "SOAP::SOAPString", [0, 1]],
      ["problems", "GroupWise::ProblemList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::StatusTracking,
    :schema_type => XSD::QName.new(NsTypes, "StatusTracking"),
    :schema_attribute => {
      XSD::QName.new(nil, "autoDelete") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::SystemFolder,
    :schema_type => XSD::QName.new(NsTypes, "SystemFolder"),
    :schema_basetype => XSD::QName.new(NsTypes, "Folder"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["parent", nil],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["hasUnread", "SOAP::SOAPBoolean", [0, 1]],
      ["unreadCount", "SOAP::SOAPInt", [0, 1]],
      ["sequence", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["settings", nil, [0, 1]],
      ["calendarAttribute", "GroupWise::CalendarFolderAttribute", [0, 1]],
      ["isSystemFolder", "SOAP::SOAPBoolean", [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["acl", "GroupWise::FolderACL", [0, 1]],
      ["isSharedByMe", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Task,
    :schema_type => XSD::QName.new(NsTypes, "Task"),
    :schema_basetype => XSD::QName.new(NsTypes, "CalendarItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::ItemStatus", [0, 1]],
      ["thread", "SOAP::SOAPString", [0, 1]],
      ["msgId", "SOAP::SOAPString", [0, 1]],
      ["messageId", "SOAP::SOAPString", [0, 1]],
      ["source", "GroupWise::ItemSource", [0, 1]],
      ["returnSentItemsId", "SOAP::SOAPBoolean", [0, 1]],
      ["delivered", "SOAP::SOAPDateTime"],
      ["v_class", ["GroupWise::ItemClass", XSD::QName.new(NsTypes, "class")], [0, 1]],
      ["security", "GroupWise::ItemSecurity", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["originalSubject", "SOAP::SOAPString", [0, 1]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["distribution", "GroupWise::Distribution", [0, 1]],
      ["message", "GroupWise::MessageBody", [0, 1]],
      ["attachments", "GroupWise::AttachmentInfo", [0, 1]],
      ["options", "GroupWise::ItemOptions", [0, 1]],
      ["link", "GroupWise::LinkInfo", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]],
      ["nntpOrImap", "SOAP::SOAPBoolean", [0, 1]],
      ["smimeType", "GroupWise::SMimeOperation", [0, 1]],
      ["rdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["rrule", "GroupWise::RecurrenceRule", [0, 1]],
      ["exdate", "GroupWise::RecurrenceDateType", [0, 1]],
      ["recurrenceKey", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["iCalId", "SOAP::SOAPString", [0, 1]],
      ["startDate", "SOAP::SOAPDate", [0, 1]],
      ["dueDate", "SOAP::SOAPDate", [0, 1]],
      ["assignedDate", "SOAP::SOAPDate", [0, 1]],
      ["taskPriority", "SOAP::SOAPString", [0, 1]],
      ["completed", "SOAP::SOAPBoolean", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "internet") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Timezone,
    :schema_type => XSD::QName.new(NsTypes, "Timezone"),
    :schema_element => [
      ["id", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["daylight", "GroupWise::TimezoneComponent", [0, 1]],
      ["standard", "GroupWise::TimezoneComponent", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::TimezoneComponent,
    :schema_type => XSD::QName.new(NsTypes, "TimezoneComponent"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["month", nil, [0, 1]],
      ["day", nil, [0, 1]],
      ["dayOfWeek", "GroupWise::DayOfWeek", [0, 1]],
      ["hour", nil, [0, 1]],
      ["minute", nil, [0, 1]],
      ["offset", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::TimezoneList,
    :schema_type => XSD::QName.new(NsTypes, "TimezoneList"),
    :schema_element => [
      ["timezone", "GroupWise::Timezone[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::TransferFailedStatus,
    :schema_type => XSD::QName.new(NsTypes, "TransferFailedStatus"),
    :schema_basetype => XSD::QName.new(NsTypes, "RecipientStatus"),
    :schema_element => [
      ["delivered", "SOAP::SOAPDateTime", [0, 1]],
      ["undeliverable", "SOAP::SOAPDateTime", [0, 1]],
      ["transferred", "SOAP::SOAPDateTime", [0, 1]],
      ["transferDelayed", "SOAP::SOAPDateTime", [0, 1]],
      ["transferFailed", "GroupWise::TransferFailedStatus", [0, 1]],
      ["downloaded", "SOAP::SOAPDateTime", [0, 1]],
      ["downloadedByThirdParty", "SOAP::SOAPDateTime", [0, 1]],
      ["retractRequested", "SOAP::SOAPDateTime", [0, 1]],
      ["retracted", "SOAP::SOAPDateTime", [0, 1]],
      ["opened", "SOAP::SOAPDateTime", [0, 1]],
      ["deleted", "SOAP::SOAPDateTime", [0, 1]],
      ["undeleted", "SOAP::SOAPDateTime", [0, 1]],
      ["purged", "SOAP::SOAPDateTime", [0, 1]],
      ["accepted", "GroupWise::CommentStatus", [0, 1]],
      ["declined", "GroupWise::CommentStatus", [0, 1]],
      ["replied", "SOAP::SOAPDateTime", [0, 1]],
      ["forwarded", "SOAP::SOAPDateTime", [0, 1]],
      ["shared", "SOAP::SOAPDateTime", [0, 1]],
      ["started", "SOAP::SOAPDateTime", [0, 1]],
      ["completed", "SOAP::SOAPDateTime", [0, 1]],
      ["incomplete", "SOAP::SOAPDateTime", [0, 1]],
      ["delegated", "GroupWise::DelegatedStatus", [0, 1]],
      ["delegateeStatus", "GroupWise::DelegateeStatus[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "FailureReason") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::TrustedApplication,
    :schema_type => XSD::QName.new(NsTypes, "TrustedApplication"),
    :schema_basetype => XSD::QName.new(NsTypes, "Authentication"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UserInfo,
    :schema_type => XSD::QName.new(NsTypes, "UserInfo"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["uuid", nil, [0, 1]],
      ["userid", "SOAP::SOAPString", [0, 1]],
      ["recipType", "GroupWise::RecipientType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UserList,
    :schema_type => XSD::QName.new(NsTypes, "UserList"),
    :schema_element => [
      ["user", "GroupWise::UserInfo[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Version,
    :schema_type => XSD::QName.new(NsTypes, "Version"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionCreator", "GroupWise::NameAndEmail", [0, 1]],
      ["retrievedBy", "GroupWise::NameAndEmail", [0, 1]],
      ["retrievedDate", "SOAP::SOAPDateTime", [0, 1]],
      ["versionNumber", "SOAP::SOAPUnsignedInt"],
      ["versionDescription", "SOAP::SOAPString", [0, 1]],
      ["versionStatus", "GroupWise::VersionStatus", [0, 1]],
      ["life", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["ageAction", "GroupWise::AgeAction", [0, 1]],
      ["fileSize", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::VersionEvent,
    :schema_type => XSD::QName.new(NsTypes, "VersionEvent"),
    :schema_basetype => XSD::QName.new(NsTypes, "ContainerItem"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["version", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["modified", "SOAP::SOAPDateTime", [0, 1]],
      ["changes", "GroupWise::ItemChanges", [0, 1]],
      ["container", "GroupWise::ContainerRef[]", [1, nil]],
      ["categories", "GroupWise::CategoryRefList", [0, 1]],
      ["created", "SOAP::SOAPDateTime", [0, 1]],
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["library", "GroupWise::NameAndEmail", [0, 1]],
      ["documentNumber", "SOAP::SOAPUnsignedInt"],
      ["versionNumber", "SOAP::SOAPUnsignedInt"],
      ["creator", "GroupWise::NameAndEmail", [0, 1]],
      ["event", "GroupWise::VersionEventType"],
      ["eventNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ContainerList,
    :schema_type => XSD::QName.new(NsEvents, "ContainerList"),
    :schema_element => [
      ["container", "[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "not") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::Event,
    :schema_type => XSD::QName.new(NsEvents, "Event"),
    :schema_element => [
      ["event", "GroupWise::EventType"],
      ["id", nil, [0, 1]],
      ["timeStamp", "SOAP::SOAPDateTime", [0, 1]],
      ["field", nil, [0, 1]],
      ["container", nil, [0, 1]],
      ["from", nil, [0, 1]],
      ["key", "SOAP::SOAPString", [0, 1]],
      ["uid", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["type", "GroupWise::ItemType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::EventDefinition,
    :schema_type => XSD::QName.new(NsEvents, "EventDefinition"),
    :schema_element => [
      ["events", "GroupWise::EventTypeList"],
      ["type", nil, [0, 1]],
      ["field", nil, [0, 1]],
      ["containers", "GroupWise::ContainerList", [0, 1]],
      ["subType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::EventList,
    :schema_type => XSD::QName.new(NsEvents, "EventList"),
    :schema_element => [
      ["event", "GroupWise::Event[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Events,
    :schema_type => XSD::QName.new(NsEvents, "Events"),
    :schema_element => [
      ["key", "SOAP::SOAPString"],
      ["persistence", "SOAP::SOAPDuration", [0, 1]],
      ["ipAddress", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPInt", [0, 1]],
      ["http", "SOAP::SOAPBoolean", [0, 1]],
      ["definition", "GroupWise::EventDefinition", [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "enabled") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => GroupWise::EventsList,
    :schema_type => XSD::QName.new(NsEvents, "EventsList"),
    :schema_element => [
      ["event", "GroupWise::Events[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::EventTypeList,
    :schema_type => XSD::QName.new(NsEvents, "EventTypeList"),
    :schema_element => [
      ["event", "GroupWise::EventType[]", [1, 36]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::Notify,
    :schema_type => XSD::QName.new(NsEvents, "Notify"),
    :schema_element => [
      ["userid", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptLevel,
    :schema_type => XSD::QName.new(NsTypes, "AcceptLevel")
  )

  LiteralRegistry.register(
    :class => GroupWise::AgeAction,
    :schema_type => XSD::QName.new(NsTypes, "AgeAction")
  )

  LiteralRegistry.register(
    :class => GroupWise::AppointmentConflict,
    :schema_type => XSD::QName.new(NsTypes, "AppointmentConflict")
  )

  LiteralRegistry.register(
    :class => GroupWise::CalendarFolderFlags,
    :schema_type => XSD::QName.new(NsTypes, "CalendarFolderFlags")
  )

  LiteralRegistry.register(
    :class => GroupWise::CategoryType,
    :schema_type => XSD::QName.new(NsTypes, "CategoryType")
  )

  LiteralRegistry.register(
    :class => GroupWise::ContactType,
    :schema_type => XSD::QName.new(NsTypes, "ContactType")
  )

  LiteralRegistry.register(
    :class => GroupWise::CursorSeek,
    :schema_type => XSD::QName.new(NsTypes, "CursorSeek")
  )

  LiteralRegistry.register(
    :class => GroupWise::CustomType,
    :schema_type => XSD::QName.new(NsTypes, "CustomType")
  )

  LiteralRegistry.register(
    :class => GroupWise::DeltaSyncType,
    :schema_type => XSD::QName.new(NsTypes, "DeltaSyncType")
  )

  LiteralRegistry.register(
    :class => GroupWise::DistributionType,
    :schema_type => XSD::QName.new(NsTypes, "DistributionType")
  )

  LiteralRegistry.register(
    :class => GroupWise::Execution,
    :schema_type => XSD::QName.new(NsTypes, "Execution")
  )

  LiteralRegistry.register(
    :class => GroupWise::FilterDate,
    :schema_type => XSD::QName.new(NsTypes, "FilterDate")
  )

  LiteralRegistry.register(
    :class => GroupWise::FilterOp,
    :schema_type => XSD::QName.new(NsTypes, "FilterOp")
  )

  LiteralRegistry.register(
    :class => GroupWise::FolderACLStatus,
    :schema_type => XSD::QName.new(NsTypes, "FolderACLStatus")
  )

  LiteralRegistry.register(
    :class => GroupWise::FolderType,
    :schema_type => XSD::QName.new(NsTypes, "FolderType")
  )

  LiteralRegistry.register(
    :class => GroupWise::Frequency,
    :schema_type => XSD::QName.new(NsTypes, "Frequency")
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemClass,
    :schema_type => XSD::QName.new(NsTypes, "ItemClass")
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemOptionsPriority,
    :schema_type => XSD::QName.new(NsTypes, "ItemOptionsPriority")
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemSecurity,
    :schema_type => XSD::QName.new(NsTypes, "ItemSecurity")
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemSource,
    :schema_type => XSD::QName.new(NsTypes, "ItemSource")
  )

  LiteralRegistry.register(
    :class => GroupWise::JunkHandlingListType,
    :schema_type => XSD::QName.new(NsTypes, "JunkHandlingListType")
  )

  LiteralRegistry.register(
    :class => GroupWise::JunkMatchType,
    :schema_type => XSD::QName.new(NsTypes, "JunkMatchType")
  )

  LiteralRegistry.register(
    :class => GroupWise::LinkType,
    :schema_type => XSD::QName.new(NsTypes, "LinkType")
  )

  LiteralRegistry.register(
    :class => GroupWise::MessageList,
    :schema_type => XSD::QName.new(NsTypes, "MessageList")
  )

  LiteralRegistry.register(
    :class => GroupWise::MessageType,
    :schema_type => XSD::QName.new(NsTypes, "MessageType")
  )

  LiteralRegistry.register(
    :class => GroupWise::NotificationType,
    :schema_type => XSD::QName.new(NsTypes, "NotificationType")
  )

  LiteralRegistry.register(
    :class => GroupWise::OccurrenceType,
    :schema_type => XSD::QName.new(NsTypes, "OccurrenceType")
  )

  LiteralRegistry.register(
    :class => GroupWise::PhoneNumberType,
    :schema_type => XSD::QName.new(NsTypes, "PhoneNumberType")
  )

  LiteralRegistry.register(
    :class => GroupWise::PostalAddressType,
    :schema_type => XSD::QName.new(NsTypes, "PostalAddressType")
  )

  LiteralRegistry.register(
    :class => GroupWise::RecipientType,
    :schema_type => XSD::QName.new(NsTypes, "RecipientType")
  )

  LiteralRegistry.register(
    :class => GroupWise::RetractType,
    :schema_type => XSD::QName.new(NsTypes, "RetractType")
  )

  LiteralRegistry.register(
    :class => GroupWise::RuleActionType,
    :schema_type => XSD::QName.new(NsTypes, "RuleActionType")
  )

  LiteralRegistry.register(
    :class => GroupWise::StatusTrackingOptions,
    :schema_type => XSD::QName.new(NsTypes, "StatusTrackingOptions")
  )

  LiteralRegistry.register(
    :class => GroupWise::VersionEventType,
    :schema_type => XSD::QName.new(NsTypes, "VersionEventType")
  )

  LiteralRegistry.register(
    :class => GroupWise::VersionStatus,
    :schema_type => XSD::QName.new(NsTypes, "VersionStatus")
  )

  LiteralRegistry.register(
    :class => GroupWise::WeekDay,
    :schema_type => XSD::QName.new(NsTypes, "WeekDay")
  )

  LiteralRegistry.register(
    :class => GroupWise::EventType,
    :schema_type => XSD::QName.new(NsEvents, "EventType")
  )

  LiteralRegistry.register(
    :class => GroupWise::Field,
    :schema_type => XSD::QName.new(NsEvents, "Field")
  )

  LiteralRegistry.register(
    :class => GroupWise::ItemType,
    :schema_type => XSD::QName.new(NsEvents, "ItemType")
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptLevel,
    :schema_name => XSD::QName.new(NsTypes, "acceptLevel")
  )

  LiteralRegistry.register(
    :class => GroupWise::Rights,
    :schema_name => XSD::QName.new(NsTypes, "rights"),
    :schema_element => [
      ["read", "SOAP::SOAPBoolean", [0, 1]],
      ["add", "SOAP::SOAPBoolean", [0, 1]],
      ["edit", "SOAP::SOAPBoolean", [0, 1]],
      ["delete", "SOAP::SOAPBoolean", [0, 1]],
      ["share", "SOAP::SOAPBoolean", [0, 1]],
      ["manage", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptRequest,
    :schema_name => XSD::QName.new(NsMethods, "acceptRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"],
      ["comment", "SOAP::SOAPString"],
      ["acceptLevel", "GroupWise::AcceptLevel"],
      ["recurrenceAllInstances", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptResponse,
    :schema_name => XSD::QName.new(NsMethods, "acceptResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptShareRequest,
    :schema_name => XSD::QName.new(NsMethods, "acceptShareRequest"),
    :schema_element => [
      ["id", nil],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["container", nil, [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "description")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AcceptShareResponse,
    :schema_name => XSD::QName.new(NsMethods, "acceptShareResponse"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "addItemRequest"),
    :schema_element => [
      ["container", nil],
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "addItemResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "addItemsRequest"),
    :schema_element => [
      ["container", nil],
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "addItemsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddMembersRequest,
    :schema_name => XSD::QName.new(NsMethods, "addMembersRequest"),
    :schema_element => [
      ["container", nil],
      ["members", "GroupWise::GroupMemberList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::AddMembersResponse,
    :schema_name => XSD::QName.new(NsMethods, "addMembersResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CloseFreeBusySessionRequest,
    :schema_name => XSD::QName.new(NsMethods, "closeFreeBusySessionRequest"),
    :schema_element => [
      ["freeBusySessionId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CloseFreeBusySessionResponse,
    :schema_name => XSD::QName.new(NsMethods, "closeFreeBusySessionResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CompleteRequest,
    :schema_name => XSD::QName.new(NsMethods, "completeRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CompleteResponse,
    :schema_name => XSD::QName.new(NsMethods, "completeResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateCursorRequest,
    :schema_name => XSD::QName.new(NsMethods, "createCursorRequest"),
    :schema_element => [
      ["container", nil],
      ["view", nil, [0, 1]],
      ["filter", "GroupWise::Filter", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateCursorResponse,
    :schema_name => XSD::QName.new(NsMethods, "createCursorResponse"),
    :schema_element => [
      ["cursor", "SOAP::SOAPInt", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "createItemRequest"),
    :schema_element => [
      ["item", "GroupWise::Item"],
      ["notification", "GroupWise::SharedFolderNotification", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "createItemResponse"),
    :schema_element => [
      ["id", "[]", [0, nil]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "createItemsRequest"),
    :schema_element => [
      ["item", "GroupWise::Item[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "createItemsResponse"),
    :schema_element => [
      ["id", "[]", [0, nil]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateJunkEntryRequest,
    :schema_name => XSD::QName.new(NsMethods, "createJunkEntryRequest"),
    :schema_element => [
      ["entry", "GroupWise::JunkEntry"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateJunkEntryResponse,
    :schema_name => XSD::QName.new(NsMethods, "createJunkEntryResponse"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateProxyAccessRequest,
    :schema_name => XSD::QName.new(NsMethods, "createProxyAccessRequest"),
    :schema_element => [
      ["entry", "GroupWise::AccessRightEntry"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateProxyAccessResponse,
    :schema_name => XSD::QName.new(NsMethods, "createProxyAccessResponse"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateSignatureRequest,
    :schema_name => XSD::QName.new(NsMethods, "createSignatureRequest"),
    :schema_element => [
      ["signature", "GroupWise::Signature"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CreateSignatureResponse,
    :schema_name => XSD::QName.new(NsMethods, "createSignatureResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DeclineRequest,
    :schema_name => XSD::QName.new(NsMethods, "declineRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"],
      ["comment", "SOAP::SOAPString"],
      ["recurrenceAllInstances", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DeclineResponse,
    :schema_name => XSD::QName.new(NsMethods, "declineResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DelegateRequest,
    :schema_name => XSD::QName.new(NsMethods, "delegateRequest"),
    :schema_element => [
      ["id", nil],
      ["commentToOrganizer", "SOAP::SOAPString"],
      ["commentToDelegatee", "SOAP::SOAPString"],
      ["distribution", "GroupWise::Distribution"],
      ["recurrenceAllInstances", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DelegateResponse,
    :schema_name => XSD::QName.new(NsMethods, "delegateResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DestroyCursorRequest,
    :schema_name => XSD::QName.new(NsMethods, "destroyCursorRequest"),
    :schema_element => [
      ["container", nil],
      ["cursor", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::DestroyCursorResponse,
    :schema_name => XSD::QName.new(NsMethods, "destroyCursorResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ExecuteRuleRequest,
    :schema_name => XSD::QName.new(NsMethods, "executeRuleRequest"),
    :schema_element => [
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ExecuteRuleResponse,
    :schema_name => XSD::QName.new(NsMethods, "executeRuleResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ForwardRequest,
    :schema_name => XSD::QName.new(NsMethods, "forwardRequest"),
    :schema_element => [
      ["id", nil],
      ["view", nil],
      ["embed", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ForwardResponse,
    :schema_name => XSD::QName.new(NsMethods, "forwardResponse"),
    :schema_element => [
      ["item", "GroupWise::Item", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetAddressBookListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getAddressBookListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetAddressBookListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getAddressBookListResponse"),
    :schema_element => [
      ["books", "GroupWise::AddressBookList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetAttachmentRequest,
    :schema_name => XSD::QName.new(NsMethods, "getAttachmentRequest"),
    :schema_element => [
      ["id", nil],
      ["offset", "SOAP::SOAPInt"],
      ["length", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetAttachmentResponse,
    :schema_name => XSD::QName.new(NsMethods, "getAttachmentResponse"),
    :schema_element => [
      ["part", "GroupWise::MessagePart", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetCategoryListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getCategoryListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetCategoryListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getCategoryListResponse"),
    :schema_element => [
      ["categories", "GroupWise::CategoryList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetCustomListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getCustomListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetCustomListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getCustomListResponse"),
    :schema_element => [
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDeltasRequest,
    :schema_name => XSD::QName.new(NsMethods, "getDeltasRequest"),
    :schema_element => [
      ["container", nil],
      ["view", nil],
      ["deltaInfo", "GroupWise::DeltaInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDeltasResponse,
    :schema_name => XSD::QName.new(NsMethods, "getDeltasResponse"),
    :schema_element => [
      ["items", "GroupWise::Items", [0, 1]],
      ["deltaInfo", "GroupWise::DeltaInfo"],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDeltaInfoRequest,
    :schema_name => XSD::QName.new(NsMethods, "getDeltaInfoRequest"),
    :schema_element => [
      ["container", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDeltaInfoResponse,
    :schema_name => XSD::QName.new(NsMethods, "getDeltaInfoResponse"),
    :schema_element => [
      ["deltaInfo", "GroupWise::DeltaInfo"],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDocumentTypeListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getDocumentTypeListRequest"),
    :schema_element => [
      ["library", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetDocumentTypeListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getDocumentTypeListResponse"),
    :schema_element => [
      ["items", "GroupWise::DocumentTypeList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFolderRequest,
    :schema_name => XSD::QName.new(NsMethods, "getFolderRequest"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["folderType", "GroupWise::FolderType", [0, 1]],
      ["types", nil, [0, 1]],
      ["source", nil, [0, 1]],
      ["view", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFolderResponse,
    :schema_name => XSD::QName.new(NsMethods, "getFolderResponse"),
    :schema_element => [
      ["folder", "GroupWise::Folder", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFolderListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getFolderListRequest"),
    :schema_element => [
      ["parent", nil],
      ["view", nil],
      ["recurse", "SOAP::SOAPBoolean"],
      ["imap", "SOAP::SOAPBoolean"],
      ["nntp", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFolderListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getFolderListResponse"),
    :schema_element => [
      ["folders", "GroupWise::FolderList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFreeBusyRequest,
    :schema_name => XSD::QName.new(NsMethods, "getFreeBusyRequest"),
    :schema_element => [
      ["freeBusySessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetFreeBusyResponse,
    :schema_name => XSD::QName.new(NsMethods, "getFreeBusyResponse"),
    :schema_element => [
      ["freeBusyStats", "GroupWise::FreeBusyStats", [0, 1]],
      ["freeBusyInfo", "GroupWise::FreeBusyInfoList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "getItemRequest"),
    :schema_element => [
      ["id", nil],
      ["view", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "getItemResponse"),
    :schema_element => [
      ["item", "GroupWise::Item", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "getItemsRequest"),
    :schema_element => [
      ["container", nil, [0, 1]],
      ["view", nil],
      ["filter", "GroupWise::Filter"],
      ["items", "GroupWise::ItemRefList", [0, 1]],
      ["count", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "getItemsResponse"),
    :schema_element => [
      ["items", "GroupWise::Items", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetJunkEntriesRequest,
    :schema_name => XSD::QName.new(NsMethods, "getJunkEntriesRequest"),
    :schema_element => [
      ["container", "GroupWise::JunkHandlingListType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetJunkEntriesResponse,
    :schema_name => XSD::QName.new(NsMethods, "getJunkEntriesResponse"),
    :schema_element => [
      ["junk", "GroupWise::JunkHandlingList", [0, 1]],
      ["block", "GroupWise::JunkHandlingList", [0, 1]],
      ["trust", "GroupWise::JunkHandlingList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetJunkMailSettingsRequest,
    :schema_name => XSD::QName.new(NsMethods, "getJunkMailSettingsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetJunkMailSettingsResponse,
    :schema_name => XSD::QName.new(NsMethods, "getJunkMailSettingsResponse"),
    :schema_element => [
      ["settings", "GroupWise::SettingsList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetLibraryItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "getLibraryItemRequest"),
    :schema_element => [
      ["library", nil],
      ["documentNumber", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["versionNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetLibraryItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "getLibraryItemResponse"),
    :schema_element => [
      ["item", "GroupWise::Item", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetLibraryListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getLibraryListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetLibraryListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getLibraryListResponse"),
    :schema_element => [
      ["libraries", "GroupWise::LibraryList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetQuickMessagesRequest,
    :schema_name => XSD::QName.new(NsMethods, "getQuickMessagesRequest"),
    :schema_element => [
      ["list", "GroupWise::MessageList"],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "startDate")], [0, 1]],
      ["container", nil, [0, 1]],
      ["types", nil, [0, 1]],
      ["source", nil, [0, 1]],
      ["view", nil, [0, 1]],
      ["count", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetQuickMessagesResponse,
    :schema_name => XSD::QName.new(NsMethods, "getQuickMessagesResponse"),
    :schema_element => [
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "startDate")], [0, 1]],
      ["items", "GroupWise::Items", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetProxyAccessListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getProxyAccessListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetProxyAccessListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getProxyAccessListResponse"),
    :schema_element => [
      ["accessRights", "GroupWise::AccessRightList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetProxyListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getProxyListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetProxyListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getProxyListResponse"),
    :schema_element => [
      ["proxies", "GroupWise::ProxyList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetRuleListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getRuleListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetRuleListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getRuleListResponse"),
    :schema_element => [
      ["rules", "GroupWise::RuleList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetSettingsRequest,
    :schema_name => XSD::QName.new(NsMethods, "getSettingsRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetSettingsResponse,
    :schema_name => XSD::QName.new(NsMethods, "getSettingsResponse"),
    :schema_element => [
      ["settings", "GroupWise::Settings", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetSignaturesRequest,
    :schema_name => XSD::QName.new(NsMethods, "getSignaturesRequest"),
    :schema_element => [
      ["global", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetSignaturesResponse,
    :schema_name => XSD::QName.new(NsMethods, "getSignaturesResponse"),
    :schema_element => [
      ["signatures", "GroupWise::Signatures", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetTimestampRequest,
    :schema_name => XSD::QName.new(NsMethods, "getTimestampRequest"),
    :schema_element => [
      ["backup", "SOAP::SOAPBoolean", [0, 1]],
      ["retention", "SOAP::SOAPBoolean", [0, 1]],
      ["noop", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetTimestampResponse,
    :schema_name => XSD::QName.new(NsMethods, "getTimestampResponse"),
    :schema_element => [
      ["backup", "SOAP::SOAPDateTime", [0, 1]],
      ["retention", "SOAP::SOAPDateTime", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetTimezoneListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getTimezoneListRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::GetTimezoneListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getTimezoneListResponse"),
    :schema_element => [
      ["timezones", "GroupWise::TimezoneList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetUserListRequest,
    :schema_name => XSD::QName.new(NsMethods, "getUserListRequest"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["key", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetUserListResponse,
    :schema_name => XSD::QName.new(NsMethods, "getUserListResponse"),
    :schema_element => [
      ["users", "GroupWise::UserList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::LoginRequest,
    :schema_name => XSD::QName.new(NsMethods, "loginRequest"),
    :schema_element => [
      ["auth", "GroupWise::Authentication"],
      ["language", "SOAP::SOAPLanguage"],
      ["version", "SOAP::SOAPDecimal"],
      ["application", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::LoginResponse,
    :schema_name => XSD::QName.new(NsMethods, "loginResponse"),
    :schema_element => [
      ["session", "SOAP::SOAPString", [0, 1]],
      ["userinfo", "GroupWise::UserInfo", [0, 1]],
      ["entry", "GroupWise::AccessRightEntry", [0, 1]],
      ["gwVersion", "SOAP::SOAPString", [0, 1]],
      ["build", "SOAP::SOAPString", [0, 1]],
      ["redirectToHost", "GroupWise::Host[]", [0, nil]],
      ["serverUTCTime", "SOAP::SOAPDateTime", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::LogoutRequest,
    :schema_name => XSD::QName.new(NsMethods, "logoutRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::LogoutResponse,
    :schema_name => XSD::QName.new(NsMethods, "logoutResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkPrivateRequest,
    :schema_name => XSD::QName.new(NsMethods, "markPrivateRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkPrivateResponse,
    :schema_name => XSD::QName.new(NsMethods, "markPrivateResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkReadRequest,
    :schema_name => XSD::QName.new(NsMethods, "markReadRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkReadResponse,
    :schema_name => XSD::QName.new(NsMethods, "markReadResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkUnPrivateRequest,
    :schema_name => XSD::QName.new(NsMethods, "markUnPrivateRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkUnPrivateResponse,
    :schema_name => XSD::QName.new(NsMethods, "markUnPrivateResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkUnReadRequest,
    :schema_name => XSD::QName.new(NsMethods, "markUnReadRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MarkUnReadResponse,
    :schema_name => XSD::QName.new(NsMethods, "markUnReadResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyItemRequest"),
    :schema_element => [
      ["id", nil],
      ["notification", "GroupWise::SharedFolderNotification", [0, 1]],
      ["updates", "GroupWise::ItemChanges"],
      ["recurrenceAllInstances", "SOAP::SOAPUnsignedInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyItemResponse"),
    :schema_element => [
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "modified")], [0, 1]],
      ["id", "[]", [0, nil]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyItemsRequest"),
    :schema_element => [
      ["item", "GroupWise::ModifyItem[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyItemsResponse"),
    :schema_element => [
      ["modified", ["SOAP::SOAPDateTime[]", XSD::QName.new(NsTypes, "modified")], [0, nil]],
      ["id", "[]", [0, nil]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyJunkEntryRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyJunkEntryRequest"),
    :schema_element => [
      ["entry", "GroupWise::JunkEntry"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyJunkEntryResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyJunkEntryResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyJunkMailSettingsRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyJunkMailSettingsRequest"),
    :schema_element => [
      ["settings", "GroupWise::SettingsList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyJunkMailSettingsResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyJunkMailSettingsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyPasswordRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyPasswordRequest"),
    :schema_element => [
      ["old", "SOAP::SOAPString", [0, 1]],
      ["new", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyPasswordResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyPasswordResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyProxyAccessRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifyProxyAccessRequest"),
    :schema_element => [
      ["id", nil],
      ["updates", "GroupWise::AccessRightChanges"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifyProxyAccessResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifyProxyAccessResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifySettingsRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifySettingsRequest"),
    :schema_element => [
      ["settings", "GroupWise::SettingsList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifySettingsResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifySettingsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifySignaturesRequest,
    :schema_name => XSD::QName.new(NsMethods, "modifySignaturesRequest"),
    :schema_element => [
      ["updates", "GroupWise::Signatures"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ModifySignaturesResponse,
    :schema_name => XSD::QName.new(NsMethods, "modifySignaturesResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MoveItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "moveItemRequest"),
    :schema_element => [
      ["id", nil],
      ["container", nil],
      ["from", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::MoveItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "moveItemResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PositionCursorRequest,
    :schema_name => XSD::QName.new(NsMethods, "positionCursorRequest"),
    :schema_element => [
      ["container", nil],
      ["cursor", "SOAP::SOAPInt"],
      ["seek", "GroupWise::CursorSeek"],
      ["offset", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PositionCursorResponse,
    :schema_name => XSD::QName.new(NsMethods, "positionCursorResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PurgeDeletedItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "purgeDeletedItemsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GroupWise::PurgeDeletedItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "purgeDeletedItemsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PurgeRequest,
    :schema_name => XSD::QName.new(NsMethods, "purgeRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::PurgeResponse,
    :schema_name => XSD::QName.new(NsMethods, "purgeResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReadCursorRequest,
    :schema_name => XSD::QName.new(NsMethods, "readCursorRequest"),
    :schema_element => [
      ["container", nil],
      ["cursor", "SOAP::SOAPInt"],
      ["forward", "SOAP::SOAPBoolean"],
      ["position", "GroupWise::CursorSeek"],
      ["count", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReadCursorResponse,
    :schema_name => XSD::QName.new(NsMethods, "readCursorResponse"),
    :schema_element => [
      ["items", "GroupWise::ItemList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveCustomDefinitionRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeCustomDefinitionRequest"),
    :schema_element => [
      ["customs", "GroupWise::CustomList", [0, 1]],
      ["books", "SOAP::SOAPBoolean"],
      ["doAsynchronous", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveCustomDefinitionResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeCustomDefinitionResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeItemRequest"),
    :schema_element => [
      ["container", nil],
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeItemResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveItemsRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeItemsRequest"),
    :schema_element => [
      ["container", nil],
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveItemsResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeItemsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveJunkEntryRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeJunkEntryRequest"),
    :schema_element => [
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveJunkEntryResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeJunkEntryResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveMembersRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeMembersRequest"),
    :schema_element => [
      ["container", nil],
      ["members", "GroupWise::GroupMemberList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveMembersResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeMembersResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveProxyAccessRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeProxyAccessRequest"),
    :schema_element => [
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveProxyAccessResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeProxyAccessResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveProxyUserRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeProxyUserRequest"),
    :schema_element => [
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveProxyUserResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeProxyUserResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveSignatureRequest,
    :schema_name => XSD::QName.new(NsMethods, "removeSignatureRequest"),
    :schema_element => [
      ["id", nil, [0, 1]],
      ["all", "SOAP::SOAPBoolean", [0, 1]],
      ["global", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveSignatureResponse,
    :schema_name => XSD::QName.new(NsMethods, "removeSignatureResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReplyRequest,
    :schema_name => XSD::QName.new(NsMethods, "replyRequest"),
    :schema_element => [
      ["id", nil],
      ["view", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ReplyResponse,
    :schema_name => XSD::QName.new(NsMethods, "replyResponse"),
    :schema_element => [
      ["item", "GroupWise::Item", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RetractRequest,
    :schema_name => XSD::QName.new(NsMethods, "retractRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["retractingAllInstances", "SOAP::SOAPBoolean", [0, 1]],
      ["retractCausedByResend", "SOAP::SOAPBoolean", [0, 1]],
      ["retractType", "GroupWise::RetractType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RetractResponse,
    :schema_name => XSD::QName.new(NsMethods, "retractResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SendItemRequest,
    :schema_name => XSD::QName.new(NsMethods, "sendItemRequest"),
    :schema_element => [
      ["item", "GroupWise::Item"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SendItemResponse,
    :schema_name => XSD::QName.new(NsMethods, "sendItemResponse"),
    :schema_element => [
      ["id", "[]", [0, nil]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SetTimestampRequest,
    :schema_name => XSD::QName.new(NsMethods, "setTimestampRequest"),
    :schema_element => [
      ["backup", "SOAP::SOAPDateTime", [0, 1]],
      ["retention", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::SetTimestampResponse,
    :schema_name => XSD::QName.new(NsMethods, "setTimestampResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::StartFreeBusySessionRequest,
    :schema_name => XSD::QName.new(NsMethods, "startFreeBusySessionRequest"),
    :schema_element => [
      ["users", "GroupWise::FreeBusyUserList"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::StartFreeBusySessionResponse,
    :schema_name => XSD::QName.new(NsMethods, "startFreeBusySessionResponse"),
    :schema_element => [
      ["freeBusySessionId", "SOAP::SOAPInt", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UnacceptRequest,
    :schema_name => XSD::QName.new(NsMethods, "unacceptRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UnacceptResponse,
    :schema_name => XSD::QName.new(NsMethods, "unacceptResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UncompleteRequest,
    :schema_name => XSD::QName.new(NsMethods, "uncompleteRequest"),
    :schema_element => [
      ["items", "GroupWise::ItemRefList"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UncompleteResponse,
    :schema_name => XSD::QName.new(NsMethods, "uncompleteResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UpdateVersionStatusRequest,
    :schema_name => XSD::QName.new(NsMethods, "updateVersionStatusRequest"),
    :schema_element => [
      ["id", nil],
      ["event", "GroupWise::VersionEventType"],
      ["part", "GroupWise::SignatureData", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::UpdateVersionStatusResponse,
    :schema_name => XSD::QName.new(NsMethods, "updateVersionStatusResponse"),
    :schema_element => [
      ["part", "GroupWise::SignatureData", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::EventType,
    :schema_name => XSD::QName.new(NsEvents, "event")
  )

  LiteralRegistry.register(
    :class => GroupWise::CleanEventConfigurationRequest,
    :schema_name => XSD::QName.new(NsEvents, "cleanEventConfigurationRequest"),
    :schema_element => [
      ["all", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::CleanEventConfigurationResponse,
    :schema_name => XSD::QName.new(NsEvents, "cleanEventConfigurationResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ConfigureEventsRequest,
    :schema_name => XSD::QName.new(NsEvents, "configureEventsRequest"),
    :schema_element => [
      ["events", "GroupWise::Events", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::ConfigureEventsResponse,
    :schema_name => XSD::QName.new(NsEvents, "configureEventsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetEventConfigurationRequest,
    :schema_name => XSD::QName.new(NsEvents, "getEventConfigurationRequest"),
    :schema_element => [
      ["key", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetEventConfigurationResponse,
    :schema_name => XSD::QName.new(NsEvents, "getEventConfigurationResponse"),
    :schema_element => [
      ["events", "GroupWise::EventsList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetEventsRequest,
    :schema_name => XSD::QName.new(NsEvents, "getEventsRequest"),
    :schema_element => [
      ["key", "SOAP::SOAPString"],
      ["from", "SOAP::SOAPDateTime", [0, 1]],
      ["v_until", ["SOAP::SOAPDateTime", XSD::QName.new(NsEvents, "until")], [0, 1]],
      ["uid", "SOAP::SOAPUnsignedInt", [0, 1]],
      ["count", "SOAP::SOAPInt"],
      ["remove", "SOAP::SOAPBoolean"],
      ["notify", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::GetEventsResponse,
    :schema_name => XSD::QName.new(NsEvents, "getEventsResponse"),
    :schema_element => [
      ["events", "GroupWise::EventList", [0, 1]],
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveEventConfigurationRequest,
    :schema_name => XSD::QName.new(NsEvents, "removeEventConfigurationRequest"),
    :schema_element => [
      ["key", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveEventConfigurationResponse,
    :schema_name => XSD::QName.new(NsEvents, "removeEventConfigurationResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveEventsRequest,
    :schema_name => XSD::QName.new(NsEvents, "removeEventsRequest"),
    :schema_element => [
      ["key", "SOAP::SOAPString"],
      ["from", "SOAP::SOAPDateTime", [0, 1]],
      ["v_until", ["SOAP::SOAPDateTime", XSD::QName.new(NsEvents, "until")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupWise::RemoveEventsResponse,
    :schema_name => XSD::QName.new(NsEvents, "removeEventsResponse"),
    :schema_element => [
      ["status", "GroupWise::Status"]
    ]
  )
end

end
