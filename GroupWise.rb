# Converted from the WSDL with wsdl2ruby.

require 'xsd/qname'

module GroupWise


# {http://schemas.novell.com/2005/01/GroupWise/types}AccessControlList
class AccessControlList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessMiscRight
#   alarms - SOAP::SOAPBoolean
#   notify - SOAP::SOAPBoolean
#   readHidden - SOAP::SOAPBoolean
#   setup - SOAP::SOAPBoolean
class AccessMiscRight
  attr_accessor :alarms
  attr_accessor :notify
  attr_accessor :readHidden
  attr_accessor :setup

  def initialize(alarms = nil, notify = nil, readHidden = nil, setup = nil)
    @alarms = alarms
    @notify = notify
    @readHidden = readHidden
    @setup = setup
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessRight
#   read - SOAP::SOAPBoolean
#   write - SOAP::SOAPBoolean
class AccessRight
  attr_accessor :read
  attr_accessor :write

  def initialize(read = nil, write = nil)
    @read = read
    @write = write
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessRightChanges
#   add - GroupWise::AccessRightEntry
#   delete - GroupWise::AccessRightEntry
#   update - GroupWise::AccessRightEntry
class AccessRightChanges
  attr_accessor :add
  attr_accessor :delete
  attr_accessor :update

  def initialize(add = nil, delete = nil, update = nil)
    @add = add
    @delete = delete
    @update = update
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessRightList
class AccessRightList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AddressBookList
class AddressBookList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Alarm
#   xmlattr_enabled - SOAP::SOAPBoolean
class Alarm < ::String
  AttrEnabled = XSD::QName.new(nil, "enabled")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_enabled
    __xmlattr[AttrEnabled]
  end

  def xmlattr_enabled=(value)
    __xmlattr[AttrEnabled] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AttachmentID
#   xmlattr_itemReference - SOAP::SOAPBoolean
class AttachmentID < ::String
  AttrItemReference = XSD::QName.new(nil, "itemReference")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_itemReference
    __xmlattr[AttrItemReference]
  end

  def xmlattr_itemReference=(value)
    __xmlattr[AttrItemReference] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AttachmentInfo
class AttachmentInfo < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AttachmentItemInfo
#   id - GroupWise::AttachmentID
#   name - SOAP::SOAPString
#   contentId - SOAP::SOAPString
#   contentType - SOAP::SOAPString
#   size - SOAP::SOAPUnsignedInt
#   date - SOAP::SOAPDateTime
#   data - SOAP::SOAPBase64
#   hidden - SOAP::SOAPBoolean
class AttachmentItemInfo
  attr_accessor :id
  attr_accessor :name
  attr_accessor :contentId
  attr_accessor :contentType
  attr_accessor :size
  attr_accessor :date
  attr_accessor :data
  attr_accessor :hidden

  def initialize(id = nil, name = nil, contentId = nil, contentType = nil, size = nil, date = nil, data = nil, hidden = nil)
    @id = id
    @name = name
    @contentId = contentId
    @contentType = contentType
    @size = size
    @date = date
    @data = data
    @hidden = hidden
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Authentication
class Authentication
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PlainText
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
class PlainText < Authentication
  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Proxy
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   proxy - SOAP::SOAPString
class Proxy < Authentication
  attr_accessor :username
  attr_accessor :password
  attr_accessor :proxy

  def initialize(username = nil, password = nil, proxy = nil)
    @username = username
    @password = password
    @proxy = proxy
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}TrustedApplication
#   username - SOAP::SOAPString
#   name - SOAP::SOAPString
#   key - SOAP::SOAPString
class TrustedApplication < Authentication
  attr_accessor :username
  attr_accessor :name
  attr_accessor :key

  def initialize(username = nil, name = nil, key = nil)
    @username = username
    @name = name
    @key = key
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CalendarFolderAttribute
#   flags - GroupWise::CalendarFolderFlags
#   color - SOAP::SOAPUnsignedInt
class CalendarFolderAttribute
  attr_accessor :flags
  attr_accessor :color

  def initialize(flags = [], color = nil)
    @flags = flags
    @color = color
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CategoryList
class CategoryList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CategoryRefList
#   category - (any)
#   xmlattr_primary - SOAP::SOAPString
class CategoryRefList
  AttrPrimary = XSD::QName.new(nil, "primary")

  attr_accessor :category

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_primary
    __xmlattr[AttrPrimary]
  end

  def xmlattr_primary=(value)
    __xmlattr[AttrPrimary] = value
  end

  def initialize(category = [])
    @category = category
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CommentStatus
#   xmlattr_comment - SOAP::SOAPString
class CommentStatus < ::String
  AttrComment = XSD::QName.new(nil, "comment")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_comment
    __xmlattr[AttrComment]
  end

  def xmlattr_comment=(value)
    __xmlattr[AttrComment] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ContainerRef
#   xmlattr_deleted - SOAP::SOAPDateTime
class ContainerRef < ::String
  AttrDeleted = XSD::QName.new(nil, "deleted")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_deleted
    __xmlattr[AttrDeleted]
  end

  def xmlattr_deleted=(value)
    __xmlattr[AttrDeleted] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Custom
#   field - SOAP::SOAPString
#   value - SOAP::SOAPString
#   locked - SOAP::SOAPBoolean
#   xmlattr_type - SOAP::SOAPString
class Custom
  AttrType = XSD::QName.new(nil, "type")

  attr_accessor :field
  attr_accessor :value
  attr_accessor :locked

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(field = nil, value = nil, locked = nil)
    @field = field
    @value = value
    @locked = locked
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CustomList
class CustomList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DayOfMonthList
class DayOfMonthList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DayOfWeek
#   xmlattr_occurrence - SOAP::SOAPString
class DayOfWeek < ::String
  AttrOccurrence = XSD::QName.new(nil, "occurrence")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_occurrence
    __xmlattr[AttrOccurrence]
  end

  def xmlattr_occurrence=(value)
    __xmlattr[AttrOccurrence] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DayOfYearList
class DayOfYearList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DayOfYearWeek
#   xmlattr_occurrence - SOAP::SOAPShort
class DayOfYearWeek < ::String
  AttrOccurrence = XSD::QName.new(nil, "occurrence")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_occurrence
    __xmlattr[AttrOccurrence]
  end

  def xmlattr_occurrence=(value)
    __xmlattr[AttrOccurrence] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DayOfYearWeekList
class DayOfYearWeekList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DelegatedStatus
#   xmlattr_userid - SOAP::SOAPString
class DelegatedStatus < ::String
  AttrUserid = XSD::QName.new(nil, "userid")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_userid
    __xmlattr[AttrUserid]
  end

  def xmlattr_userid=(value)
    __xmlattr[AttrUserid] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DeltaInfo
#   count - SOAP::SOAPInt
#   firstSequence - SOAP::SOAPUnsignedInt
#   lastSequence - SOAP::SOAPUnsignedInt
#   lastTimePORebuild - SOAP::SOAPUnsignedInt
class DeltaInfo
  attr_accessor :count
  attr_accessor :firstSequence
  attr_accessor :lastSequence
  attr_accessor :lastTimePORebuild

  def initialize(count = nil, firstSequence = nil, lastSequence = nil, lastTimePORebuild = nil)
    @count = count
    @firstSequence = firstSequence
    @lastSequence = lastSequence
    @lastTimePORebuild = lastTimePORebuild
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Distribution
#   from - GroupWise::From
#   to - SOAP::SOAPString
#   cc - SOAP::SOAPString
#   bc - SOAP::SOAPString
#   recipients - GroupWise::RecipientList
#   sendoptions - GroupWise::SendOptions
class Distribution
  attr_accessor :from
  attr_accessor :to
  attr_accessor :cc
  attr_accessor :bc
  attr_accessor :recipients
  attr_accessor :sendoptions

  def initialize(from = nil, to = nil, cc = nil, bc = nil, recipients = nil, sendoptions = nil)
    @from = from
    @to = to
    @cc = cc
    @bc = bc
    @recipients = recipients
    @sendoptions = sendoptions
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DocumentType
#   name - SOAP::SOAPString
#   life - SOAP::SOAPUnsignedInt
#   maximumVersions - SOAP::SOAPUnsignedInt
#   ageAction - GroupWise::AgeAction
class DocumentType
  attr_accessor :name
  attr_accessor :life
  attr_accessor :maximumVersions
  attr_accessor :ageAction

  def initialize(name = nil, life = nil, maximumVersions = nil, ageAction = nil)
    @name = name
    @life = life
    @maximumVersions = maximumVersions
    @ageAction = ageAction
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DocumentTypeList
class DocumentTypeList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}EmailAddressList
#   email - SOAP::SOAPString
#   xmlattr_primary - SOAP::SOAPString
class EmailAddressList
  AttrPrimary = XSD::QName.new(nil, "primary")

  attr_accessor :email

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_primary
    __xmlattr[AttrPrimary]
  end

  def xmlattr_primary=(value)
    __xmlattr[AttrPrimary] = value
  end

  def initialize(email = [])
    @email = email
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Filter
#   element - GroupWise::FilterElement
class Filter
  attr_accessor :element

  def initialize(element = nil)
    @element = element
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FilterElement
#   op - GroupWise::FilterOp
class FilterElement
  attr_accessor :op

  def initialize(op = nil)
    @op = op
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FilterEntry
#   op - GroupWise::FilterOp
#   field - SOAP::SOAPString
#   custom - GroupWise::Custom
#   value - SOAP::SOAPString
#   date - GroupWise::FilterDate
class FilterEntry < FilterElement
  attr_accessor :op
  attr_accessor :field
  attr_accessor :custom
  attr_accessor :value
  attr_accessor :date

  def initialize(op = nil, field = nil, custom = nil, value = nil, date = nil)
    @op = op
    @field = field
    @custom = custom
    @value = value
    @date = date
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FilterGroup
#   op - GroupWise::FilterOp
#   element - GroupWise::FilterElement
class FilterGroup < FilterElement
  attr_accessor :op
  attr_accessor :element

  def initialize(op = nil, element = [])
    @op = op
    @element = element
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FolderACL
class FolderACL < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FolderList
class FolderList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyBlockList
class FreeBusyBlockList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyBlock
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   acceptLevel - GroupWise::AcceptLevel
#   subject - SOAP::SOAPString
class FreeBusyBlock
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :acceptLevel
  attr_accessor :subject

  def initialize(startDate = nil, endDate = nil, acceptLevel = nil, subject = nil)
    @startDate = startDate
    @endDate = endDate
    @acceptLevel = acceptLevel
    @subject = subject
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyUserList
class FreeBusyUserList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyInfoList
class FreeBusyInfoList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyStats
#   responded - SOAP::SOAPInt
#   outstanding - SOAP::SOAPInt
#   total - SOAP::SOAPInt
class FreeBusyStats
  attr_accessor :responded
  attr_accessor :outstanding
  attr_accessor :total

  def initialize(responded = nil, outstanding = nil, total = nil)
    @responded = responded
    @outstanding = outstanding
    @total = total
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FullName
#   displayName - SOAP::SOAPString
#   namePrefix - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   middleName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   nameSuffix - SOAP::SOAPString
class FullName
  attr_accessor :displayName
  attr_accessor :namePrefix
  attr_accessor :firstName
  attr_accessor :middleName
  attr_accessor :lastName
  attr_accessor :nameSuffix

  def initialize(displayName = nil, namePrefix = nil, firstName = nil, middleName = nil, lastName = nil, nameSuffix = nil)
    @displayName = displayName
    @namePrefix = namePrefix
    @firstName = firstName
    @middleName = middleName
    @lastName = lastName
    @nameSuffix = nameSuffix
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}GroupMember
#   id - (any)
#   name - SOAP::SOAPString
#   email - SOAP::SOAPString
#   distType - GroupWise::DistributionType
#   itemType - GroupWise::ContactType
#   members - GroupWise::GroupMemberList
class GroupMember
  attr_accessor :id
  attr_accessor :name
  attr_accessor :email
  attr_accessor :distType
  attr_accessor :itemType
  attr_accessor :members

  def initialize(id = nil, name = nil, email = nil, distType = nil, itemType = nil, members = nil)
    @id = id
    @name = name
    @email = email
    @distType = distType
    @itemType = itemType
    @members = members
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}GroupMemberList
class GroupMemberList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Host
#   ipAddress - SOAP::SOAPString
#   port - SOAP::SOAPUnsignedInt
class Host
  attr_accessor :ipAddress
  attr_accessor :port

  def initialize(ipAddress = nil, port = nil)
    @ipAddress = ipAddress
    @port = port
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ImAddress
#   service - SOAP::SOAPString
#   address - SOAP::SOAPString
#   type - SOAP::SOAPString
class ImAddress
  attr_accessor :service
  attr_accessor :address
  attr_accessor :type

  def initialize(service = nil, address = nil, type = nil)
    @service = service
    @address = address
    @type = type
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ImAddressList
class ImAddressList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Item
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
class Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AddressBook
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   description - SOAP::SOAPString
#   isPersonal - SOAP::SOAPBoolean
#   isFrequentContacts - SOAP::SOAPBoolean
class AddressBook < Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :description
  attr_accessor :isPersonal
  attr_accessor :isFrequentContacts

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, description = nil, isPersonal = nil, isFrequentContacts = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @description = description
    @isPersonal = isPersonal
    @isFrequentContacts = isFrequentContacts
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Category
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   type - GroupWise::CategoryType
#   color - SOAP::SOAPUnsignedInt
class Category < Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :type
  attr_accessor :color

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, type = nil, color = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @type = type
    @color = color
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ContainerItem
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
class ContainerItem < Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AddressBookItem
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   uuid - (any)
#   comment - SOAP::SOAPString
#   sync - GroupWise::DeltaSyncType
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
#   distinguishedName - SOAP::SOAPString
#   userid - SOAP::SOAPString
class AddressBookItem < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :uuid
  attr_accessor :comment
  attr_accessor :sync
  attr_accessor :domain
  attr_accessor :postOffice
  attr_accessor :distinguishedName
  attr_accessor :userid

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, uuid = nil, comment = nil, sync = nil, domain = nil, postOffice = nil, distinguishedName = nil, userid = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @uuid = uuid
    @comment = comment
    @sync = sync
    @domain = domain
    @postOffice = postOffice
    @distinguishedName = distinguishedName
    @userid = userid
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Contact
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   uuid - (any)
#   comment - SOAP::SOAPString
#   sync - GroupWise::DeltaSyncType
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
#   distinguishedName - SOAP::SOAPString
#   userid - SOAP::SOAPString
#   fullName - GroupWise::FullName
#   emailList - GroupWise::EmailAddressList
#   imList - GroupWise::ImAddressList
#   phoneList - GroupWise::PhoneList
#   addressList - GroupWise::PostalAddressList
#   officeInfo - GroupWise::OfficeInfo
#   personalInfo - GroupWise::PersonalInfo
#   referenceInfo - GroupWise::ReferenceInfo
class Contact < AddressBookItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :uuid
  attr_accessor :comment
  attr_accessor :sync
  attr_accessor :domain
  attr_accessor :postOffice
  attr_accessor :distinguishedName
  attr_accessor :userid
  attr_accessor :fullName
  attr_accessor :emailList
  attr_accessor :imList
  attr_accessor :phoneList
  attr_accessor :addressList
  attr_accessor :officeInfo
  attr_accessor :personalInfo
  attr_accessor :referenceInfo

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, uuid = nil, comment = nil, sync = nil, domain = nil, postOffice = nil, distinguishedName = nil, userid = nil, fullName = nil, emailList = nil, imList = nil, phoneList = nil, addressList = nil, officeInfo = nil, personalInfo = nil, referenceInfo = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @uuid = uuid
    @comment = comment
    @sync = sync
    @domain = domain
    @postOffice = postOffice
    @distinguishedName = distinguishedName
    @userid = userid
    @fullName = fullName
    @emailList = emailList
    @imList = imList
    @phoneList = phoneList
    @addressList = addressList
    @officeInfo = officeInfo
    @personalInfo = personalInfo
    @referenceInfo = referenceInfo
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Group
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   uuid - (any)
#   comment - SOAP::SOAPString
#   sync - GroupWise::DeltaSyncType
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
#   distinguishedName - SOAP::SOAPString
#   userid - SOAP::SOAPString
#   members - GroupWise::GroupMemberList
class Group < AddressBookItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :uuid
  attr_accessor :comment
  attr_accessor :sync
  attr_accessor :domain
  attr_accessor :postOffice
  attr_accessor :distinguishedName
  attr_accessor :userid
  attr_accessor :members

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, uuid = nil, comment = nil, sync = nil, domain = nil, postOffice = nil, distinguishedName = nil, userid = nil, members = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @uuid = uuid
    @comment = comment
    @sync = sync
    @domain = domain
    @postOffice = postOffice
    @distinguishedName = distinguishedName
    @userid = userid
    @members = members
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Organization
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   uuid - (any)
#   comment - SOAP::SOAPString
#   sync - GroupWise::DeltaSyncType
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
#   distinguishedName - SOAP::SOAPString
#   userid - SOAP::SOAPString
#   contact - GroupWise::ItemRef
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   address - GroupWise::PostalAddress
#   website - SOAP::SOAPString
class Organization < AddressBookItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :uuid
  attr_accessor :comment
  attr_accessor :sync
  attr_accessor :domain
  attr_accessor :postOffice
  attr_accessor :distinguishedName
  attr_accessor :userid
  attr_accessor :contact
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :address
  attr_accessor :website

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, uuid = nil, comment = nil, sync = nil, domain = nil, postOffice = nil, distinguishedName = nil, userid = nil, contact = nil, phone = nil, fax = nil, address = nil, website = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @uuid = uuid
    @comment = comment
    @sync = sync
    @domain = domain
    @postOffice = postOffice
    @distinguishedName = distinguishedName
    @userid = userid
    @contact = contact
    @phone = phone
    @fax = fax
    @address = address
    @website = website
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Resource
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   uuid - (any)
#   comment - SOAP::SOAPString
#   sync - GroupWise::DeltaSyncType
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
#   distinguishedName - SOAP::SOAPString
#   userid - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   resourceType - SOAP::SOAPString
#   email - SOAP::SOAPString
#   owner - GroupWise::ItemRef
class Resource < AddressBookItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :uuid
  attr_accessor :comment
  attr_accessor :sync
  attr_accessor :domain
  attr_accessor :postOffice
  attr_accessor :distinguishedName
  attr_accessor :userid
  attr_accessor :phone
  attr_accessor :resourceType
  attr_accessor :email
  attr_accessor :owner

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, uuid = nil, comment = nil, sync = nil, domain = nil, postOffice = nil, distinguishedName = nil, userid = nil, phone = nil, resourceType = nil, email = nil, owner = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @uuid = uuid
    @comment = comment
    @sync = sync
    @domain = domain
    @postOffice = postOffice
    @distinguishedName = distinguishedName
    @userid = userid
    @phone = phone
    @resourceType = resourceType
    @email = email
    @owner = owner
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}BoxEntry
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
class BoxEntry < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Mail
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   xmlattr_internet - SOAP::SOAPBoolean
class Mail < BoxEntry
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CalendarItem
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   rdate - GroupWise::RecurrenceDateType
#   rrule - GroupWise::RecurrenceRule
#   exdate - GroupWise::RecurrenceDateType
#   recurrenceKey - SOAP::SOAPUnsignedInt
#   iCalId - SOAP::SOAPString
#   xmlattr_internet - SOAP::SOAPBoolean
class CalendarItem < Mail
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :rdate
  attr_accessor :rrule
  attr_accessor :exdate
  attr_accessor :recurrenceKey
  attr_accessor :iCalId

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, rdate = nil, rrule = nil, exdate = nil, recurrenceKey = nil, iCalId = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @rdate = rdate
    @rrule = rrule
    @exdate = exdate
    @recurrenceKey = recurrenceKey
    @iCalId = iCalId
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Appointment
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   rdate - GroupWise::RecurrenceDateType
#   rrule - GroupWise::RecurrenceRule
#   exdate - GroupWise::RecurrenceDateType
#   recurrenceKey - SOAP::SOAPUnsignedInt
#   iCalId - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   startDay - SOAP::SOAPDate
#   endDay - SOAP::SOAPDate
#   acceptLevel - GroupWise::AcceptLevel
#   alarm - GroupWise::Alarm
#   allDayEvent - SOAP::SOAPBoolean
#   place - SOAP::SOAPString
#   timezone - GroupWise::Timezone
#   xmlattr_internet - SOAP::SOAPBoolean
class Appointment < CalendarItem
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :rdate
  attr_accessor :rrule
  attr_accessor :exdate
  attr_accessor :recurrenceKey
  attr_accessor :iCalId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :startDay
  attr_accessor :endDay
  attr_accessor :acceptLevel
  attr_accessor :alarm
  attr_accessor :allDayEvent
  attr_accessor :place
  attr_accessor :timezone

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, rdate = nil, rrule = nil, exdate = nil, recurrenceKey = nil, iCalId = nil, startDate = nil, endDate = nil, startDay = nil, endDay = nil, acceptLevel = nil, alarm = nil, allDayEvent = nil, place = nil, timezone = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @rdate = rdate
    @rrule = rrule
    @exdate = exdate
    @recurrenceKey = recurrenceKey
    @iCalId = iCalId
    @startDate = startDate
    @endDate = endDate
    @startDay = startDay
    @endDay = endDay
    @acceptLevel = acceptLevel
    @alarm = alarm
    @allDayEvent = allDayEvent
    @place = place
    @timezone = timezone
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Note
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   rdate - GroupWise::RecurrenceDateType
#   rrule - GroupWise::RecurrenceRule
#   exdate - GroupWise::RecurrenceDateType
#   recurrenceKey - SOAP::SOAPUnsignedInt
#   iCalId - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   xmlattr_internet - SOAP::SOAPBoolean
class Note < CalendarItem
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :rdate
  attr_accessor :rrule
  attr_accessor :exdate
  attr_accessor :recurrenceKey
  attr_accessor :iCalId
  attr_accessor :startDate

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, rdate = nil, rrule = nil, exdate = nil, recurrenceKey = nil, iCalId = nil, startDate = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @rdate = rdate
    @rrule = rrule
    @exdate = exdate
    @recurrenceKey = recurrenceKey
    @iCalId = iCalId
    @startDate = startDate
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Task
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   rdate - GroupWise::RecurrenceDateType
#   rrule - GroupWise::RecurrenceRule
#   exdate - GroupWise::RecurrenceDateType
#   recurrenceKey - SOAP::SOAPUnsignedInt
#   iCalId - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   dueDate - SOAP::SOAPDate
#   assignedDate - SOAP::SOAPDate
#   taskPriority - SOAP::SOAPString
#   completed - SOAP::SOAPBoolean
#   xmlattr_internet - SOAP::SOAPBoolean
class Task < CalendarItem
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :rdate
  attr_accessor :rrule
  attr_accessor :exdate
  attr_accessor :recurrenceKey
  attr_accessor :iCalId
  attr_accessor :startDate
  attr_accessor :dueDate
  attr_accessor :assignedDate
  attr_accessor :taskPriority
  attr_accessor :completed

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, rdate = nil, rrule = nil, exdate = nil, recurrenceKey = nil, iCalId = nil, startDate = nil, dueDate = nil, assignedDate = nil, taskPriority = nil, completed = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @rdate = rdate
    @rrule = rrule
    @exdate = exdate
    @recurrenceKey = recurrenceKey
    @iCalId = iCalId
    @startDate = startDate
    @dueDate = dueDate
    @assignedDate = assignedDate
    @taskPriority = taskPriority
    @completed = completed
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DocumentRef
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   library - GroupWise::NameAndEmail
#   documentNumber - SOAP::SOAPUnsignedInt
#   filename - SOAP::SOAPString
#   documentTypeName - SOAP::SOAPString
#   author - GroupWise::NameAndEmail
#   creator - GroupWise::NameAndEmail
#   officialVersion - SOAP::SOAPUnsignedInt
#   currentVersion - SOAP::SOAPUnsignedInt
#   versionNumber - SOAP::SOAPUnsignedInt
#   versionDescription - (any)
#   fileSize - SOAP::SOAPUnsignedInt
#   acl - GroupWise::AccessControlList
#   xmlattr_internet - SOAP::SOAPBoolean
class DocumentRef < Mail
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :library
  attr_accessor :documentNumber
  attr_accessor :filename
  attr_accessor :documentTypeName
  attr_accessor :author
  attr_accessor :creator
  attr_accessor :officialVersion
  attr_accessor :currentVersion
  attr_accessor :versionNumber
  attr_accessor :versionDescription
  attr_accessor :fileSize
  attr_accessor :acl

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, library = nil, documentNumber = nil, filename = nil, documentTypeName = nil, author = nil, creator = nil, officialVersion = nil, currentVersion = nil, versionNumber = nil, versionDescription = nil, fileSize = nil, acl = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @library = library
    @documentNumber = documentNumber
    @filename = filename
    @documentTypeName = documentTypeName
    @author = author
    @creator = creator
    @officialVersion = officialVersion
    @currentVersion = currentVersion
    @versionNumber = versionNumber
    @versionDescription = versionDescription
    @fileSize = fileSize
    @acl = acl
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PhoneMessage
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   caller - SOAP::SOAPString
#   company - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   flags - GroupWise::PhoneFlags
#   xmlattr_internet - SOAP::SOAPBoolean
class PhoneMessage < Mail
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :caller
  attr_accessor :company
  attr_accessor :phone
  attr_accessor :flags

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, caller = nil, company = nil, phone = nil, flags = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @caller = caller
    @company = company
    @phone = phone
    @flags = flags
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SharedNotification
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   status - GroupWise::ItemStatus
#   thread - SOAP::SOAPString
#   msgId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   source - GroupWise::ItemSource
#   returnSentItemsId - SOAP::SOAPBoolean
#   delivered - SOAP::SOAPDateTime
#   m_class - GroupWise::ItemClass
#   security - GroupWise::ItemSecurity
#   comment - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   originalSubject - SOAP::SOAPString
#   subjectPrefix - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   message - GroupWise::MessageBody
#   attachments - GroupWise::AttachmentInfo
#   options - GroupWise::ItemOptions
#   link - GroupWise::LinkInfo
#   hasAttachment - SOAP::SOAPBoolean
#   size - SOAP::SOAPInt
#   subType - SOAP::SOAPString
#   nntpOrImap - SOAP::SOAPBoolean
#   smimeType - GroupWise::SMimeOperation
#   notification - GroupWise::NotificationType
#   description - SOAP::SOAPString
#   rights - GroupWise::Rights
#   xmlattr_internet - SOAP::SOAPBoolean
class SharedNotification < Mail
  AttrInternet = XSD::QName.new(nil, "internet")

  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :status
  attr_accessor :thread
  attr_accessor :msgId
  attr_accessor :messageId
  attr_accessor :source
  attr_accessor :returnSentItemsId
  attr_accessor :delivered
  attr_accessor :security
  attr_accessor :comment
  attr_accessor :subject
  attr_accessor :originalSubject
  attr_accessor :subjectPrefix
  attr_accessor :distribution
  attr_accessor :message
  attr_accessor :attachments
  attr_accessor :options
  attr_accessor :link
  attr_accessor :hasAttachment
  attr_accessor :size
  attr_accessor :subType
  attr_accessor :nntpOrImap
  attr_accessor :smimeType
  attr_accessor :notification
  attr_accessor :description
  attr_accessor :rights

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internet
    __xmlattr[AttrInternet]
  end

  def xmlattr_internet=(value)
    __xmlattr[AttrInternet] = value
  end

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, status = nil, thread = nil, msgId = nil, messageId = nil, source = nil, returnSentItemsId = nil, delivered = nil, v_class = nil, security = nil, comment = nil, subject = nil, originalSubject = nil, subjectPrefix = nil, distribution = nil, message = nil, attachments = nil, options = nil, link = nil, hasAttachment = nil, size = nil, subType = nil, nntpOrImap = nil, smimeType = nil, notification = nil, description = nil, rights = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @status = status
    @thread = thread
    @msgId = msgId
    @messageId = messageId
    @source = source
    @returnSentItemsId = returnSentItemsId
    @delivered = delivered
    @v_class = v_class
    @security = security
    @comment = comment
    @subject = subject
    @originalSubject = originalSubject
    @subjectPrefix = subjectPrefix
    @distribution = distribution
    @message = message
    @attachments = attachments
    @options = options
    @link = link
    @hasAttachment = hasAttachment
    @size = size
    @subType = subType
    @nntpOrImap = nntpOrImap
    @smimeType = smimeType
    @notification = notification
    @description = description
    @rights = rights
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Document
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   subject - SOAP::SOAPString
#   library - GroupWise::NameAndEmail
#   documentNumber - SOAP::SOAPUnsignedInt
#   documentTypeName - SOAP::SOAPString
#   author - GroupWise::NameAndEmail
#   creator - GroupWise::NameAndEmail
#   officialVersion - SOAP::SOAPUnsignedInt
#   currentVersion - SOAP::SOAPUnsignedInt
#   current - GroupWise::AccessControlList
#   official - GroupWise::AccessControlList
#   other - GroupWise::AccessControlList
class Document < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :subject
  attr_accessor :library
  attr_accessor :documentNumber
  attr_accessor :documentTypeName
  attr_accessor :author
  attr_accessor :creator
  attr_accessor :officialVersion
  attr_accessor :currentVersion
  attr_accessor :current
  attr_accessor :official
  attr_accessor :other

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, subject = nil, library = nil, documentNumber = nil, documentTypeName = nil, author = nil, creator = nil, officialVersion = nil, currentVersion = nil, current = nil, official = nil, other = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @subject = subject
    @library = library
    @documentNumber = documentNumber
    @documentTypeName = documentTypeName
    @author = author
    @creator = creator
    @officialVersion = officialVersion
    @currentVersion = currentVersion
    @current = current
    @official = official
    @other = other
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Rule
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   execution - GroupWise::Execution
#   sequence - SOAP::SOAPUnsignedInt
#   enabled - SOAP::SOAPBoolean
#   types - (any)
#   source - (any)
#   conflict - GroupWise::AppointmentConflict
#   filter - GroupWise::Filter
#   actions - GroupWise::RuleActionList
class Rule < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :execution
  attr_accessor :sequence
  attr_accessor :enabled
  attr_accessor :types
  attr_accessor :source
  attr_accessor :conflict
  attr_accessor :filter
  attr_accessor :actions

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, execution = nil, sequence = nil, enabled = nil, types = nil, source = nil, conflict = nil, filter = nil, actions = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @execution = execution
    @sequence = sequence
    @enabled = enabled
    @types = types
    @source = source
    @conflict = conflict
    @filter = filter
    @actions = actions
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Version
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   library - GroupWise::NameAndEmail
#   documentNumber - SOAP::SOAPUnsignedInt
#   versionCreator - GroupWise::NameAndEmail
#   retrievedBy - GroupWise::NameAndEmail
#   retrievedDate - SOAP::SOAPDateTime
#   versionNumber - SOAP::SOAPUnsignedInt
#   versionDescription - SOAP::SOAPString
#   versionStatus - GroupWise::VersionStatus
#   life - SOAP::SOAPUnsignedInt
#   ageAction - GroupWise::AgeAction
#   fileSize - SOAP::SOAPUnsignedInt
#   filename - SOAP::SOAPString
class Version < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :library
  attr_accessor :documentNumber
  attr_accessor :versionCreator
  attr_accessor :retrievedBy
  attr_accessor :retrievedDate
  attr_accessor :versionNumber
  attr_accessor :versionDescription
  attr_accessor :versionStatus
  attr_accessor :life
  attr_accessor :ageAction
  attr_accessor :fileSize
  attr_accessor :filename

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, library = nil, documentNumber = nil, versionCreator = nil, retrievedBy = nil, retrievedDate = nil, versionNumber = nil, versionDescription = nil, versionStatus = nil, life = nil, ageAction = nil, fileSize = nil, filename = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @library = library
    @documentNumber = documentNumber
    @versionCreator = versionCreator
    @retrievedBy = retrievedBy
    @retrievedDate = retrievedDate
    @versionNumber = versionNumber
    @versionDescription = versionDescription
    @versionStatus = versionStatus
    @life = life
    @ageAction = ageAction
    @fileSize = fileSize
    @filename = filename
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}VersionEvent
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   container - GroupWise::ContainerRef
#   categories - GroupWise::CategoryRefList
#   created - SOAP::SOAPDateTime
#   customs - GroupWise::CustomList
#   library - GroupWise::NameAndEmail
#   documentNumber - SOAP::SOAPUnsignedInt
#   versionNumber - SOAP::SOAPUnsignedInt
#   creator - GroupWise::NameAndEmail
#   event - GroupWise::VersionEventType
#   eventNumber - SOAP::SOAPUnsignedInt
#   filename - SOAP::SOAPString
class VersionEvent < ContainerItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :container
  attr_accessor :categories
  attr_accessor :created
  attr_accessor :customs
  attr_accessor :library
  attr_accessor :documentNumber
  attr_accessor :versionNumber
  attr_accessor :creator
  attr_accessor :event
  attr_accessor :eventNumber
  attr_accessor :filename

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, container = [], categories = nil, created = nil, customs = nil, library = nil, documentNumber = nil, versionNumber = nil, creator = nil, event = nil, eventNumber = nil, filename = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @container = container
    @categories = categories
    @created = created
    @customs = customs
    @library = library
    @documentNumber = documentNumber
    @versionNumber = versionNumber
    @creator = creator
    @event = event
    @eventNumber = eventNumber
    @filename = filename
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Folder
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   parent - (any)
#   description - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   hasUnread - SOAP::SOAPBoolean
#   unreadCount - SOAP::SOAPInt
#   sequence - SOAP::SOAPUnsignedInt
#   settings - (any)
#   calendarAttribute - GroupWise::CalendarFolderAttribute
class Folder < Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :parent
  attr_accessor :description
  attr_accessor :count
  attr_accessor :hasUnread
  attr_accessor :unreadCount
  attr_accessor :sequence
  attr_accessor :settings
  attr_accessor :calendarAttribute

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, parent = nil, description = nil, count = nil, hasUnread = nil, unreadCount = nil, sequence = nil, settings = nil, calendarAttribute = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @parent = parent
    @description = description
    @count = count
    @hasUnread = hasUnread
    @unreadCount = unreadCount
    @sequence = sequence
    @settings = settings
    @calendarAttribute = calendarAttribute
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}QueryFolder
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   parent - (any)
#   description - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   hasUnread - SOAP::SOAPBoolean
#   unreadCount - SOAP::SOAPInt
#   sequence - SOAP::SOAPUnsignedInt
#   settings - (any)
#   calendarAttribute - GroupWise::CalendarFolderAttribute
#   folderType - GroupWise::FolderType
#   query - GroupWise::Query
class QueryFolder < Folder
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :parent
  attr_accessor :description
  attr_accessor :count
  attr_accessor :hasUnread
  attr_accessor :unreadCount
  attr_accessor :sequence
  attr_accessor :settings
  attr_accessor :calendarAttribute
  attr_accessor :folderType
  attr_accessor :query

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, parent = nil, description = nil, count = nil, hasUnread = nil, unreadCount = nil, sequence = nil, settings = nil, calendarAttribute = nil, folderType = nil, query = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @parent = parent
    @description = description
    @count = count
    @hasUnread = hasUnread
    @unreadCount = unreadCount
    @sequence = sequence
    @settings = settings
    @calendarAttribute = calendarAttribute
    @folderType = folderType
    @query = query
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SharedFolder
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   parent - (any)
#   description - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   hasUnread - SOAP::SOAPBoolean
#   unreadCount - SOAP::SOAPInt
#   sequence - SOAP::SOAPUnsignedInt
#   settings - (any)
#   calendarAttribute - GroupWise::CalendarFolderAttribute
#   rights - GroupWise::Rights
#   acl - GroupWise::FolderACL
#   owner - (any)
#   isSharedByMe - SOAP::SOAPBoolean
#   isSharedToMe - SOAP::SOAPBoolean
class SharedFolder < Folder
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :parent
  attr_accessor :description
  attr_accessor :count
  attr_accessor :hasUnread
  attr_accessor :unreadCount
  attr_accessor :sequence
  attr_accessor :settings
  attr_accessor :calendarAttribute
  attr_accessor :rights
  attr_accessor :acl
  attr_accessor :owner
  attr_accessor :isSharedByMe
  attr_accessor :isSharedToMe

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, parent = nil, description = nil, count = nil, hasUnread = nil, unreadCount = nil, sequence = nil, settings = nil, calendarAttribute = nil, rights = nil, acl = nil, owner = nil, isSharedByMe = nil, isSharedToMe = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @parent = parent
    @description = description
    @count = count
    @hasUnread = hasUnread
    @unreadCount = unreadCount
    @sequence = sequence
    @settings = settings
    @calendarAttribute = calendarAttribute
    @rights = rights
    @acl = acl
    @owner = owner
    @isSharedByMe = isSharedByMe
    @isSharedToMe = isSharedToMe
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SystemFolder
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   parent - (any)
#   description - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   hasUnread - SOAP::SOAPBoolean
#   unreadCount - SOAP::SOAPInt
#   sequence - SOAP::SOAPUnsignedInt
#   settings - (any)
#   calendarAttribute - GroupWise::CalendarFolderAttribute
#   isSystemFolder - SOAP::SOAPBoolean
#   folderType - GroupWise::FolderType
#   acl - GroupWise::FolderACL
#   isSharedByMe - SOAP::SOAPBoolean
class SystemFolder < Folder
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :parent
  attr_accessor :description
  attr_accessor :count
  attr_accessor :hasUnread
  attr_accessor :unreadCount
  attr_accessor :sequence
  attr_accessor :settings
  attr_accessor :calendarAttribute
  attr_accessor :isSystemFolder
  attr_accessor :folderType
  attr_accessor :acl
  attr_accessor :isSharedByMe

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, parent = nil, description = nil, count = nil, hasUnread = nil, unreadCount = nil, sequence = nil, settings = nil, calendarAttribute = nil, isSystemFolder = nil, folderType = nil, acl = nil, isSharedByMe = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @parent = parent
    @description = description
    @count = count
    @hasUnread = hasUnread
    @unreadCount = unreadCount
    @sequence = sequence
    @settings = settings
    @calendarAttribute = calendarAttribute
    @isSystemFolder = isSystemFolder
    @folderType = folderType
    @acl = acl
    @isSharedByMe = isSharedByMe
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ContactFolder
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   parent - (any)
#   description - SOAP::SOAPString
#   count - SOAP::SOAPInt
#   hasUnread - SOAP::SOAPBoolean
#   unreadCount - SOAP::SOAPInt
#   sequence - SOAP::SOAPUnsignedInt
#   settings - (any)
#   calendarAttribute - GroupWise::CalendarFolderAttribute
#   isSystemFolder - SOAP::SOAPBoolean
#   folderType - GroupWise::FolderType
#   acl - GroupWise::FolderACL
#   isSharedByMe - SOAP::SOAPBoolean
#   addressBook - (any)
class ContactFolder < SystemFolder
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :parent
  attr_accessor :description
  attr_accessor :count
  attr_accessor :hasUnread
  attr_accessor :unreadCount
  attr_accessor :sequence
  attr_accessor :settings
  attr_accessor :calendarAttribute
  attr_accessor :isSystemFolder
  attr_accessor :folderType
  attr_accessor :acl
  attr_accessor :isSharedByMe
  attr_accessor :addressBook

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, parent = nil, description = nil, count = nil, hasUnread = nil, unreadCount = nil, sequence = nil, settings = nil, calendarAttribute = nil, isSystemFolder = nil, folderType = nil, acl = nil, isSharedByMe = nil, addressBook = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @parent = parent
    @description = description
    @count = count
    @hasUnread = hasUnread
    @unreadCount = unreadCount
    @sequence = sequence
    @settings = settings
    @calendarAttribute = calendarAttribute
    @isSystemFolder = isSystemFolder
    @folderType = folderType
    @acl = acl
    @isSharedByMe = isSharedByMe
    @addressBook = addressBook
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Library
#   id - (any)
#   name - SOAP::SOAPString
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
#   changes - GroupWise::ItemChanges
#   description - SOAP::SOAPString
#   domain - SOAP::SOAPString
#   postOffice - SOAP::SOAPString
class Library < Item
  attr_accessor :id
  attr_accessor :name
  attr_accessor :version
  attr_accessor :modified
  attr_accessor :changes
  attr_accessor :description
  attr_accessor :domain
  attr_accessor :postOffice

  def initialize(id = nil, name = nil, version = nil, modified = nil, changes = nil, description = nil, domain = nil, postOffice = nil)
    @id = id
    @name = name
    @version = version
    @modified = modified
    @changes = changes
    @description = description
    @domain = domain
    @postOffice = postOffice
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemChanges
#   add - GroupWise::Item
#   delete - GroupWise::Item
#   update - GroupWise::Item
class ItemChanges
  attr_accessor :add
  attr_accessor :delete
  attr_accessor :update

  def initialize(add = nil, delete = nil, update = nil)
    @add = add
    @delete = delete
    @update = update
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemList
#   item - GroupWise::Item
#   xmlattr_offset - SOAP::SOAPInt
#   xmlattr_count - SOAP::SOAPInt
class ItemList
  AttrCount = XSD::QName.new(nil, "count")
  AttrOffset = XSD::QName.new(nil, "offset")

  attr_accessor :item

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_offset
    __xmlattr[AttrOffset]
  end

  def xmlattr_offset=(value)
    __xmlattr[AttrOffset] = value
  end

  def xmlattr_count
    __xmlattr[AttrCount]
  end

  def xmlattr_count=(value)
    __xmlattr[AttrCount] = value
  end

  def initialize(item = [])
    @item = item
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemOptions
#   priority - GroupWise::ItemOptionsPriority
#   expires - SOAP::SOAPDateTime
#   delayDeliveryUntil - SOAP::SOAPDateTime
#   concealSubject - SOAP::SOAPBoolean
#   hidden - SOAP::SOAPBoolean
class ItemOptions
  attr_accessor :priority
  attr_accessor :expires
  attr_accessor :delayDeliveryUntil
  attr_accessor :concealSubject
  attr_accessor :hidden

  def initialize(priority = nil, expires = nil, delayDeliveryUntil = nil, concealSubject = nil, hidden = nil)
    @priority = priority
    @expires = expires
    @delayDeliveryUntil = delayDeliveryUntil
    @concealSubject = concealSubject
    @hidden = hidden
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemRef
#   xmlattr_uid - SOAP::SOAPString
class ItemRef < ::String
  AttrUid = XSD::QName.new(nil, "uid")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_uid
    __xmlattr[AttrUid]
  end

  def xmlattr_uid=(value)
    __xmlattr[AttrUid] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemRefList
class ItemRefList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Items
class Items < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemStatus
#   accepted - SOAP::SOAPBoolean
#   completed - SOAP::SOAPBoolean
#   delegated - SOAP::SOAPBoolean
#   deleted - SOAP::SOAPBoolean
#   forwarded - SOAP::SOAPBoolean
#   private - SOAP::SOAPBoolean
#   opened - SOAP::SOAPBoolean
#   read - SOAP::SOAPBoolean
#   replied - SOAP::SOAPBoolean
class ItemStatus
  attr_accessor :accepted
  attr_accessor :completed
  attr_accessor :delegated
  attr_accessor :deleted
  attr_accessor :forwarded
  attr_accessor :private
  attr_accessor :opened
  attr_accessor :read
  attr_accessor :replied

  def initialize(accepted = nil, completed = nil, delegated = nil, deleted = nil, forwarded = nil, private = nil, opened = nil, read = nil, replied = nil)
    @accepted = accepted
    @completed = completed
    @delegated = delegated
    @deleted = deleted
    @forwarded = forwarded
    @private = private
    @opened = opened
    @read = read
    @replied = replied
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}JunkEntry
#   id - (any)
#   match - SOAP::SOAPString
#   matchType - GroupWise::JunkMatchType
#   listType - GroupWise::JunkHandlingListType
#   useCount - SOAP::SOAPInt
#   lastUsed - SOAP::SOAPDateTime
#   version - SOAP::SOAPUnsignedInt
#   modified - SOAP::SOAPDateTime
class JunkEntry
  attr_accessor :id
  attr_accessor :match
  attr_accessor :matchType
  attr_accessor :listType
  attr_accessor :useCount
  attr_accessor :lastUsed
  attr_accessor :version
  attr_accessor :modified

  def initialize(id = nil, match = nil, matchType = nil, listType = nil, useCount = nil, lastUsed = nil, version = nil, modified = nil)
    @id = id
    @match = match
    @matchType = matchType
    @listType = listType
    @useCount = useCount
    @lastUsed = lastUsed
    @version = version
    @modified = modified
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}JunkHandlingList
class JunkHandlingList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}LibraryList
class LibraryList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}LinkInfo
#   id - SOAP::SOAPString
#   type - GroupWise::LinkType
class LinkInfo
  attr_accessor :id
  attr_accessor :type

  def initialize(id = nil, type = nil)
    @id = id
    @type = type
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MessageBody
class MessageBody < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MessagePart
#   xmlattr_id - SOAP::SOAPString
#   xmlattr_contentId - SOAP::SOAPString
#   xmlattr_contentType - SOAP::SOAPString
#   xmlattr_length - SOAP::SOAPInt
#   xmlattr_offset - SOAP::SOAPInt
class MessagePart < ::String
  AttrContentId = XSD::QName.new(nil, "contentId")
  AttrContentType = XSD::QName.new(nil, "contentType")
  AttrId = XSD::QName.new(nil, "id")
  AttrLength = XSD::QName.new(nil, "length")
  AttrOffset = XSD::QName.new(nil, "offset")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_id
    __xmlattr[AttrId]
  end

  def xmlattr_id=(value)
    __xmlattr[AttrId] = value
  end

  def xmlattr_contentId
    __xmlattr[AttrContentId]
  end

  def xmlattr_contentId=(value)
    __xmlattr[AttrContentId] = value
  end

  def xmlattr_contentType
    __xmlattr[AttrContentType]
  end

  def xmlattr_contentType=(value)
    __xmlattr[AttrContentType] = value
  end

  def xmlattr_length
    __xmlattr[AttrLength]
  end

  def xmlattr_length=(value)
    __xmlattr[AttrLength] = value
  end

  def xmlattr_offset
    __xmlattr[AttrOffset]
  end

  def xmlattr_offset=(value)
    __xmlattr[AttrOffset] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ModifyItem
#   id - (any)
#   notification - GroupWise::SharedFolderNotification
#   updates - GroupWise::ItemChanges
class ModifyItem
  attr_accessor :id
  attr_accessor :notification
  attr_accessor :updates

  def initialize(id = nil, notification = nil, updates = nil)
    @id = id
    @notification = notification
    @updates = updates
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MonthList
class MonthList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}NameAndEmail
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
class NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid

  def initialize(displayName = nil, email = nil, uuid = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessControlListEntry
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   rights - GroupWise::Rights
class AccessControlListEntry < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :rights

  def initialize(displayName = nil, email = nil, uuid = nil, rights = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @rights = rights
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FolderACLEntry
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   rights - GroupWise::Rights
#   status - GroupWise::FolderACLStatus
class FolderACLEntry < AccessControlListEntry
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :rights
  attr_accessor :status

  def initialize(displayName = nil, email = nil, uuid = nil, rights = nil, status = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @rights = rights
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AccessRightEntry
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   id - (any)
#   appointment - GroupWise::AccessRight
#   mail - GroupWise::AccessRight
#   misc - GroupWise::AccessMiscRight
#   note - GroupWise::AccessRight
#   task - GroupWise::AccessRight
class AccessRightEntry < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :id
  attr_accessor :appointment
  attr_accessor :mail
  attr_accessor :misc
  attr_accessor :note
  attr_accessor :task

  def initialize(displayName = nil, email = nil, uuid = nil, id = nil, appointment = nil, mail = nil, misc = nil, note = nil, task = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @id = id
    @appointment = appointment
    @mail = mail
    @misc = misc
    @note = note
    @task = task
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FreeBusyInfo
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   blocks - GroupWise::FreeBusyBlockList
class FreeBusyInfo < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :blocks

  def initialize(displayName = nil, email = nil, uuid = nil, blocks = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @blocks = blocks
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}From
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   replyTo - SOAP::SOAPString
class From < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :replyTo

  def initialize(displayName = nil, email = nil, uuid = nil, replyTo = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @replyTo = replyTo
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ProxyUser
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   id - (any)
class ProxyUser < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :id

  def initialize(displayName = nil, email = nil, uuid = nil, id = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Recipient
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   distType - GroupWise::DistributionType
#   recipType - GroupWise::RecipientType
#   recipientStatus - GroupWise::RecipientStatus
#   acceptLevel - GroupWise::AcceptLevel
class Recipient < NameAndEmail
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :distType
  attr_accessor :recipType
  attr_accessor :recipientStatus
  attr_accessor :acceptLevel

  def initialize(displayName = nil, email = nil, uuid = nil, distType = nil, recipType = nil, recipientStatus = nil, acceptLevel = nil)
    @displayName = displayName
    @email = email
    @uuid = uuid
    @distType = distType
    @recipType = recipType
    @recipientStatus = recipientStatus
    @acceptLevel = acceptLevel
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}OfficeInfo
#   organization - GroupWise::ItemRef
#   department - SOAP::SOAPString
#   title - SOAP::SOAPString
#   website - SOAP::SOAPString
class OfficeInfo
  attr_accessor :organization
  attr_accessor :department
  attr_accessor :title
  attr_accessor :website

  def initialize(organization = nil, department = nil, title = nil, website = nil)
    @organization = organization
    @department = department
    @title = title
    @website = website
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PersonalInfo
#   birthday - SOAP::SOAPDate
#   website - SOAP::SOAPString
class PersonalInfo
  attr_accessor :birthday
  attr_accessor :website

  def initialize(birthday = nil, website = nil)
    @birthday = birthday
    @website = website
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PhoneFlags
#   called - SOAP::SOAPBoolean
#   pleaseCall - SOAP::SOAPBoolean
#   willCall - SOAP::SOAPBoolean
#   returnedYourCall - SOAP::SOAPBoolean
#   wantsToSeeYou - SOAP::SOAPBoolean
#   cameToSeeYou - SOAP::SOAPBoolean
#   urgent - SOAP::SOAPBoolean
class PhoneFlags
  attr_accessor :called
  attr_accessor :pleaseCall
  attr_accessor :willCall
  attr_accessor :returnedYourCall
  attr_accessor :wantsToSeeYou
  attr_accessor :cameToSeeYou
  attr_accessor :urgent

  def initialize(called = nil, pleaseCall = nil, willCall = nil, returnedYourCall = nil, wantsToSeeYou = nil, cameToSeeYou = nil, urgent = nil)
    @called = called
    @pleaseCall = pleaseCall
    @willCall = willCall
    @returnedYourCall = returnedYourCall
    @wantsToSeeYou = wantsToSeeYou
    @cameToSeeYou = cameToSeeYou
    @urgent = urgent
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PhoneList
#   phone - GroupWise::PhoneNumber
#   xmlattr_default - SOAP::SOAPString
class PhoneList
  AttrDefault = XSD::QName.new(nil, "default")

  attr_accessor :phone

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_default
    __xmlattr[AttrDefault]
  end

  def xmlattr_default=(value)
    __xmlattr[AttrDefault] = value
  end

  def initialize(phone = [])
    @phone = phone
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PhoneNumber
#   xmlattr_type - SOAP::SOAPString
class PhoneNumber < ::String
  AttrType = XSD::QName.new(nil, "type")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PostalAddress
#   description - SOAP::SOAPString
#   streetAddress - SOAP::SOAPString
#   location - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   country - SOAP::SOAPString
#   xmlattr_type - SOAP::SOAPString
class PostalAddress
  AttrType = XSD::QName.new(nil, "type")

  attr_accessor :description
  attr_accessor :streetAddress
  attr_accessor :location
  attr_accessor :city
  attr_accessor :state
  attr_accessor :postalCode
  attr_accessor :country

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(description = nil, streetAddress = nil, location = nil, city = nil, state = nil, postalCode = nil, country = nil)
    @description = description
    @streetAddress = streetAddress
    @location = location
    @city = city
    @state = state
    @postalCode = postalCode
    @country = country
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PostalAddressList
class PostalAddressList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ProblemEntry
#   element - SOAP::SOAPString
#   code - SOAP::SOAPInt
#   description - SOAP::SOAPString
class ProblemEntry
  attr_accessor :element
  attr_accessor :code
  attr_accessor :description

  def initialize(element = nil, code = nil, description = nil)
    @element = element
    @code = code
    @description = description
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ProblemList
class ProblemList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ProxyList
class ProxyList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Query
#   target - GroupWise::QueryTarget
#   filter - GroupWise::Filter
class Query
  attr_accessor :target
  attr_accessor :filter

  def initialize(target = nil, filter = nil)
    @target = target
    @filter = filter
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}QueryTarget
#   source - (any)
#   container - (any)
class QueryTarget
  attr_accessor :source
  attr_accessor :container

  def initialize(source = nil, container = [])
    @source = source
    @container = container
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RecipientList
class RecipientList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RecipientStatus
#   delivered - SOAP::SOAPDateTime
#   undeliverable - SOAP::SOAPDateTime
#   transferred - SOAP::SOAPDateTime
#   transferDelayed - SOAP::SOAPDateTime
#   transferFailed - GroupWise::TransferFailedStatus
#   downloaded - SOAP::SOAPDateTime
#   downloadedByThirdParty - SOAP::SOAPDateTime
#   retractRequested - SOAP::SOAPDateTime
#   retracted - SOAP::SOAPDateTime
#   opened - SOAP::SOAPDateTime
#   deleted - SOAP::SOAPDateTime
#   undeleted - SOAP::SOAPDateTime
#   purged - SOAP::SOAPDateTime
#   accepted - GroupWise::CommentStatus
#   declined - GroupWise::CommentStatus
#   replied - SOAP::SOAPDateTime
#   forwarded - SOAP::SOAPDateTime
#   shared - SOAP::SOAPDateTime
#   started - SOAP::SOAPDateTime
#   completed - SOAP::SOAPDateTime
#   incomplete - SOAP::SOAPDateTime
#   delegated - GroupWise::DelegatedStatus
#   delegateeStatus - GroupWise::DelegateeStatus
class RecipientStatus
  attr_accessor :delivered
  attr_accessor :undeliverable
  attr_accessor :transferred
  attr_accessor :transferDelayed
  attr_accessor :transferFailed
  attr_accessor :downloaded
  attr_accessor :downloadedByThirdParty
  attr_accessor :retractRequested
  attr_accessor :retracted
  attr_accessor :opened
  attr_accessor :deleted
  attr_accessor :undeleted
  attr_accessor :purged
  attr_accessor :accepted
  attr_accessor :declined
  attr_accessor :replied
  attr_accessor :forwarded
  attr_accessor :shared
  attr_accessor :started
  attr_accessor :completed
  attr_accessor :incomplete
  attr_accessor :delegated
  attr_accessor :delegateeStatus

  def initialize(delivered = nil, undeliverable = nil, transferred = nil, transferDelayed = nil, transferFailed = nil, downloaded = nil, downloadedByThirdParty = nil, retractRequested = nil, retracted = nil, opened = nil, deleted = nil, undeleted = nil, purged = nil, accepted = nil, declined = nil, replied = nil, forwarded = nil, shared = nil, started = nil, completed = nil, incomplete = nil, delegated = nil, delegateeStatus = [])
    @delivered = delivered
    @undeliverable = undeliverable
    @transferred = transferred
    @transferDelayed = transferDelayed
    @transferFailed = transferFailed
    @downloaded = downloaded
    @downloadedByThirdParty = downloadedByThirdParty
    @retractRequested = retractRequested
    @retracted = retracted
    @opened = opened
    @deleted = deleted
    @undeleted = undeleted
    @purged = purged
    @accepted = accepted
    @declined = declined
    @replied = replied
    @forwarded = forwarded
    @shared = shared
    @started = started
    @completed = completed
    @incomplete = incomplete
    @delegated = delegated
    @delegateeStatus = delegateeStatus
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DelegateeStatus
#   delivered - SOAP::SOAPDateTime
#   undeliverable - SOAP::SOAPDateTime
#   transferred - SOAP::SOAPDateTime
#   transferDelayed - SOAP::SOAPDateTime
#   transferFailed - GroupWise::TransferFailedStatus
#   downloaded - SOAP::SOAPDateTime
#   downloadedByThirdParty - SOAP::SOAPDateTime
#   retractRequested - SOAP::SOAPDateTime
#   retracted - SOAP::SOAPDateTime
#   opened - SOAP::SOAPDateTime
#   deleted - SOAP::SOAPDateTime
#   undeleted - SOAP::SOAPDateTime
#   purged - SOAP::SOAPDateTime
#   accepted - GroupWise::CommentStatus
#   declined - GroupWise::CommentStatus
#   replied - SOAP::SOAPDateTime
#   forwarded - SOAP::SOAPDateTime
#   shared - SOAP::SOAPDateTime
#   started - SOAP::SOAPDateTime
#   completed - SOAP::SOAPDateTime
#   incomplete - SOAP::SOAPDateTime
#   delegated - GroupWise::DelegatedStatus
#   delegateeStatus - GroupWise::DelegateeStatus
#   xmlattr_userid - SOAP::SOAPString
class DelegateeStatus < RecipientStatus
  AttrUserid = XSD::QName.new(nil, "userid")

  attr_accessor :delivered
  attr_accessor :undeliverable
  attr_accessor :transferred
  attr_accessor :transferDelayed
  attr_accessor :transferFailed
  attr_accessor :downloaded
  attr_accessor :downloadedByThirdParty
  attr_accessor :retractRequested
  attr_accessor :retracted
  attr_accessor :opened
  attr_accessor :deleted
  attr_accessor :undeleted
  attr_accessor :purged
  attr_accessor :accepted
  attr_accessor :declined
  attr_accessor :replied
  attr_accessor :forwarded
  attr_accessor :shared
  attr_accessor :started
  attr_accessor :completed
  attr_accessor :incomplete
  attr_accessor :delegated
  attr_accessor :delegateeStatus

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_userid
    __xmlattr[AttrUserid]
  end

  def xmlattr_userid=(value)
    __xmlattr[AttrUserid] = value
  end

  def initialize(delivered = nil, undeliverable = nil, transferred = nil, transferDelayed = nil, transferFailed = nil, downloaded = nil, downloadedByThirdParty = nil, retractRequested = nil, retracted = nil, opened = nil, deleted = nil, undeleted = nil, purged = nil, accepted = nil, declined = nil, replied = nil, forwarded = nil, shared = nil, started = nil, completed = nil, incomplete = nil, delegated = nil, delegateeStatus = [])
    @delivered = delivered
    @undeliverable = undeliverable
    @transferred = transferred
    @transferDelayed = transferDelayed
    @transferFailed = transferFailed
    @downloaded = downloaded
    @downloadedByThirdParty = downloadedByThirdParty
    @retractRequested = retractRequested
    @retracted = retracted
    @opened = opened
    @deleted = deleted
    @undeleted = undeleted
    @purged = purged
    @accepted = accepted
    @declined = declined
    @replied = replied
    @forwarded = forwarded
    @shared = shared
    @started = started
    @completed = completed
    @incomplete = incomplete
    @delegated = delegated
    @delegateeStatus = delegateeStatus
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}TransferFailedStatus
#   delivered - SOAP::SOAPDateTime
#   undeliverable - SOAP::SOAPDateTime
#   transferred - SOAP::SOAPDateTime
#   transferDelayed - SOAP::SOAPDateTime
#   transferFailed - GroupWise::TransferFailedStatus
#   downloaded - SOAP::SOAPDateTime
#   downloadedByThirdParty - SOAP::SOAPDateTime
#   retractRequested - SOAP::SOAPDateTime
#   retracted - SOAP::SOAPDateTime
#   opened - SOAP::SOAPDateTime
#   deleted - SOAP::SOAPDateTime
#   undeleted - SOAP::SOAPDateTime
#   purged - SOAP::SOAPDateTime
#   accepted - GroupWise::CommentStatus
#   declined - GroupWise::CommentStatus
#   replied - SOAP::SOAPDateTime
#   forwarded - SOAP::SOAPDateTime
#   shared - SOAP::SOAPDateTime
#   started - SOAP::SOAPDateTime
#   completed - SOAP::SOAPDateTime
#   incomplete - SOAP::SOAPDateTime
#   delegated - GroupWise::DelegatedStatus
#   delegateeStatus - GroupWise::DelegateeStatus
#   xmlattr_FailureReason - SOAP::SOAPString
class TransferFailedStatus < RecipientStatus
  AttrFailureReason = XSD::QName.new(nil, "FailureReason")

  attr_accessor :delivered
  attr_accessor :undeliverable
  attr_accessor :transferred
  attr_accessor :transferDelayed
  attr_accessor :transferFailed
  attr_accessor :downloaded
  attr_accessor :downloadedByThirdParty
  attr_accessor :retractRequested
  attr_accessor :retracted
  attr_accessor :opened
  attr_accessor :deleted
  attr_accessor :undeleted
  attr_accessor :purged
  attr_accessor :accepted
  attr_accessor :declined
  attr_accessor :replied
  attr_accessor :forwarded
  attr_accessor :shared
  attr_accessor :started
  attr_accessor :completed
  attr_accessor :incomplete
  attr_accessor :delegated
  attr_accessor :delegateeStatus

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_FailureReason
    __xmlattr[AttrFailureReason]
  end

  def xmlattr_FailureReason=(value)
    __xmlattr[AttrFailureReason] = value
  end

  def initialize(delivered = nil, undeliverable = nil, transferred = nil, transferDelayed = nil, transferFailed = nil, downloaded = nil, downloadedByThirdParty = nil, retractRequested = nil, retracted = nil, opened = nil, deleted = nil, undeleted = nil, purged = nil, accepted = nil, declined = nil, replied = nil, forwarded = nil, shared = nil, started = nil, completed = nil, incomplete = nil, delegated = nil, delegateeStatus = [])
    @delivered = delivered
    @undeliverable = undeliverable
    @transferred = transferred
    @transferDelayed = transferDelayed
    @transferFailed = transferFailed
    @downloaded = downloaded
    @downloadedByThirdParty = downloadedByThirdParty
    @retractRequested = retractRequested
    @retracted = retracted
    @opened = opened
    @deleted = deleted
    @undeleted = undeleted
    @purged = purged
    @accepted = accepted
    @declined = declined
    @replied = replied
    @forwarded = forwarded
    @shared = shared
    @started = started
    @completed = completed
    @incomplete = incomplete
    @delegated = delegated
    @delegateeStatus = delegateeStatus
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RecurrenceDateType
class RecurrenceDateType < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RecurrenceRule
#   frequency - GroupWise::Frequency
#   count - SOAP::SOAPUnsignedInt
#   m_until - SOAP::SOAPDate
#   interval - SOAP::SOAPUnsignedInt
#   byDay - GroupWise::DayOfYearWeekList
#   byMonthDay - GroupWise::DayOfMonthList
#   byYearDay - GroupWise::DayOfYearList
#   byMonth - GroupWise::MonthList
class RecurrenceRule
  attr_accessor :frequency
  attr_accessor :count
  attr_accessor :interval
  attr_accessor :byDay
  attr_accessor :byMonthDay
  attr_accessor :byYearDay
  attr_accessor :byMonth

  def m_until
    @v_until
  end

  def m_until=(value)
    @v_until = value
  end

  def initialize(frequency = nil, count = nil, v_until = nil, interval = nil, byDay = nil, byMonthDay = nil, byYearDay = nil, byMonth = nil)
    @frequency = frequency
    @count = count
    @v_until = v_until
    @interval = interval
    @byDay = byDay
    @byMonthDay = byMonthDay
    @byYearDay = byYearDay
    @byMonth = byMonth
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ReferenceInfo
#   lastReferenceDate - SOAP::SOAPDateTime
#   referenceCount - SOAP::SOAPInt
class ReferenceInfo
  attr_accessor :lastReferenceDate
  attr_accessor :referenceCount

  def initialize(lastReferenceDate = nil, referenceCount = nil)
    @lastReferenceDate = lastReferenceDate
    @referenceCount = referenceCount
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ReturnNotification
#   opened - GroupWise::ReturnNotificationOptions
#   deleted - GroupWise::ReturnNotificationOptions
#   accepted - GroupWise::ReturnNotificationOptions
#   declined - GroupWise::ReturnNotificationOptions
#   completed - GroupWise::ReturnNotificationOptions
class ReturnNotification
  attr_accessor :opened
  attr_accessor :deleted
  attr_accessor :accepted
  attr_accessor :declined
  attr_accessor :completed

  def initialize(opened = nil, deleted = nil, accepted = nil, declined = nil, completed = nil)
    @opened = opened
    @deleted = deleted
    @accepted = accepted
    @declined = declined
    @completed = completed
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ReturnNotificationOptions
#   mail - SOAP::SOAPBoolean
#   notify - SOAP::SOAPBoolean
class ReturnNotificationOptions
  attr_accessor :mail
  attr_accessor :notify

  def initialize(mail = nil, notify = nil)
    @mail = mail
    @notify = notify
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Rights
#   read - SOAP::SOAPBoolean
#   add - SOAP::SOAPBoolean
#   edit - SOAP::SOAPBoolean
#   delete - SOAP::SOAPBoolean
#   share - SOAP::SOAPBoolean
#   manage - SOAP::SOAPBoolean
class Rights
  attr_accessor :read
  attr_accessor :add
  attr_accessor :edit
  attr_accessor :delete
  attr_accessor :share
  attr_accessor :manage

  def initialize(read = nil, add = nil, edit = nil, delete = nil, share = nil, manage = nil)
    @read = read
    @add = add
    @edit = edit
    @delete = delete
    @share = share
    @manage = manage
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RuleAction
#   type - GroupWise::RuleActionType
#   container - (any)
#   item - GroupWise::Mail
#   message - SOAP::SOAPString
#   acceptLevel - GroupWise::AcceptLevel
#   categories - GroupWise::CategoryRefList
class RuleAction
  attr_accessor :type
  attr_accessor :container
  attr_accessor :item
  attr_accessor :message
  attr_accessor :acceptLevel
  attr_accessor :categories

  def initialize(type = nil, container = nil, item = nil, message = nil, acceptLevel = nil, categories = nil)
    @type = type
    @container = container
    @item = item
    @message = message
    @acceptLevel = acceptLevel
    @categories = categories
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RuleActionList
class RuleActionList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RuleList
class RuleList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SendOptionsRequestReply
#   whenConvenient - SOAP::SOAPBoolean
#   byDate - SOAP::SOAPDateTime
class SendOptionsRequestReply
  attr_accessor :whenConvenient
  attr_accessor :byDate

  def initialize(whenConvenient = nil, byDate = nil)
    @whenConvenient = whenConvenient
    @byDate = byDate
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SendOptions
#   requestReply - GroupWise::SendOptionsRequestReply
#   mimeEncoding - SOAP::SOAPString
#   statusTracking - GroupWise::StatusTracking
#   notification - GroupWise::ReturnNotification
#   updateFrequentContacts - SOAP::SOAPBoolean
class SendOptions
  attr_accessor :requestReply
  attr_accessor :mimeEncoding
  attr_accessor :statusTracking
  attr_accessor :notification
  attr_accessor :updateFrequentContacts

  def initialize(requestReply = nil, mimeEncoding = nil, statusTracking = nil, notification = nil, updateFrequentContacts = nil)
    @requestReply = requestReply
    @mimeEncoding = mimeEncoding
    @statusTracking = statusTracking
    @notification = notification
    @updateFrequentContacts = updateFrequentContacts
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Settings
#   group - GroupWise::SettingsGroup
#   setting - GroupWise::Custom
class Settings
  attr_accessor :group
  attr_accessor :setting

  def initialize(group = [], setting = [])
    @group = group
    @setting = setting
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SettingsGroup
#   setting - GroupWise::Custom
#   xmlattr_type - SOAP::SOAPString
class SettingsGroup
  AttrType = XSD::QName.new(nil, "type")

  attr_accessor :setting

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(setting = [])
    @setting = setting
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SettingsList
class SettingsList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SharedFolderNotification
#   subject - SOAP::SOAPString
#   message - SOAP::SOAPString
#   description - SOAP::SOAPString
class SharedFolderNotification
  attr_accessor :subject
  attr_accessor :message
  attr_accessor :description

  def initialize(subject = nil, message = nil, description = nil)
    @subject = subject
    @message = message
    @description = description
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Signature
#   id - (any)
#   name - SOAP::SOAPString
#   default - SOAP::SOAPBoolean
#   part - GroupWise::SignatureData
#   global - SOAP::SOAPBoolean
class Signature
  attr_accessor :id
  attr_accessor :name
  attr_accessor :default
  attr_accessor :part
  attr_accessor :global

  def initialize(id = nil, name = nil, default = nil, part = nil, global = nil)
    @id = id
    @name = name
    @default = default
    @part = part
    @global = global
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Signatures
class Signatures < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SignatureData
#   size - SOAP::SOAPUnsignedInt
#   data - SOAP::SOAPBase64
class SignatureData
  attr_accessor :size
  attr_accessor :data

  def initialize(size = nil, data = nil)
    @size = size
    @data = data
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}SMimeOperation
#   signed - SOAP::SOAPBoolean
#   encrypted - SOAP::SOAPBoolean
class SMimeOperation
  attr_accessor :signed
  attr_accessor :encrypted

  def initialize(signed = nil, encrypted = nil)
    @signed = signed
    @encrypted = encrypted
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Status
#   code - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   info - SOAP::SOAPString
#   problems - GroupWise::ProblemList
class Status
  attr_accessor :code
  attr_accessor :description
  attr_accessor :info
  attr_accessor :problems

  def initialize(code = nil, description = nil, info = nil, problems = nil)
    @code = code
    @description = description
    @info = info
    @problems = problems
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}StatusTracking
#   xmlattr_autoDelete - SOAP::SOAPBoolean
class StatusTracking < ::String
  AttrAutoDelete = XSD::QName.new(nil, "autoDelete")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_autoDelete
    __xmlattr[AttrAutoDelete]
  end

  def xmlattr_autoDelete=(value)
    __xmlattr[AttrAutoDelete] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Timezone
#   id - SOAP::SOAPString
#   description - SOAP::SOAPString
#   daylight - GroupWise::TimezoneComponent
#   standard - GroupWise::TimezoneComponent
class Timezone
  attr_accessor :id
  attr_accessor :description
  attr_accessor :daylight
  attr_accessor :standard

  def initialize(id = nil, description = nil, daylight = nil, standard = nil)
    @id = id
    @description = description
    @daylight = daylight
    @standard = standard
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}TimezoneComponent
#   name - SOAP::SOAPString
#   month - (any)
#   day - (any)
#   dayOfWeek - GroupWise::DayOfWeek
#   hour - (any)
#   minute - (any)
#   offset - (any)
class TimezoneComponent
  attr_accessor :name
  attr_accessor :month
  attr_accessor :day
  attr_accessor :dayOfWeek
  attr_accessor :hour
  attr_accessor :minute
  attr_accessor :offset

  def initialize(name = nil, month = nil, day = nil, dayOfWeek = nil, hour = nil, minute = nil, offset = nil)
    @name = name
    @month = month
    @day = day
    @dayOfWeek = dayOfWeek
    @hour = hour
    @minute = minute
    @offset = offset
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}TimezoneList
class TimezoneList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}UserInfo
#   name - SOAP::SOAPString
#   email - SOAP::SOAPString
#   uuid - (any)
#   userid - SOAP::SOAPString
#   recipType - GroupWise::RecipientType
class UserInfo
  attr_accessor :name
  attr_accessor :email
  attr_accessor :uuid
  attr_accessor :userid
  attr_accessor :recipType

  def initialize(name = nil, email = nil, uuid = nil, userid = nil, recipType = nil)
    @name = name
    @email = email
    @uuid = uuid
    @userid = userid
    @recipType = recipType
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}UserList
class UserList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/events}ContainerList
#   container - (any)
#   xmlattr_not - SOAP::SOAPBoolean
class ContainerList
  AttrNot = XSD::QName.new(nil, "not")

  attr_accessor :container

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_not
    __xmlattr[AttrNot]
  end

  def xmlattr_not=(value)
    __xmlattr[AttrNot] = value
  end

  def initialize(container = [])
    @container = container
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}Event
#   event - GroupWise::EventType
#   id - (any)
#   timeStamp - SOAP::SOAPDateTime
#   field - (any)
#   container - (any)
#   from - (any)
#   key - SOAP::SOAPString
#   uid - SOAP::SOAPUnsignedInt
#   type - GroupWise::ItemType
class Event
  attr_accessor :event
  attr_accessor :id
  attr_accessor :timeStamp
  attr_accessor :field
  attr_accessor :container
  attr_accessor :from
  attr_accessor :key
  attr_accessor :uid
  attr_accessor :type

  def initialize(event = nil, id = nil, timeStamp = nil, field = nil, container = nil, from = nil, key = nil, uid = nil, type = nil)
    @event = event
    @id = id
    @timeStamp = timeStamp
    @field = field
    @container = container
    @from = from
    @key = key
    @uid = uid
    @type = type
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}EventDefinition
#   events - GroupWise::EventTypeList
#   type - (any)
#   field - (any)
#   containers - GroupWise::ContainerList
#   subType - SOAP::SOAPString
class EventDefinition
  attr_accessor :events
  attr_accessor :type
  attr_accessor :field
  attr_accessor :containers
  attr_accessor :subType

  def initialize(events = nil, type = nil, field = nil, containers = nil, subType = nil)
    @events = events
    @type = type
    @field = field
    @containers = containers
    @subType = subType
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}EventList
class EventList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/events}Events
#   key - SOAP::SOAPString
#   persistence - SOAP::SOAPDuration
#   ipAddress - SOAP::SOAPString
#   port - SOAP::SOAPInt
#   http - SOAP::SOAPBoolean
#   definition - GroupWise::EventDefinition
#   xmlattr_enabled - SOAP::SOAPBoolean
class Events
  AttrEnabled = XSD::QName.new(nil, "enabled")

  attr_accessor :key
  attr_accessor :persistence
  attr_accessor :ipAddress
  attr_accessor :port
  attr_accessor :http
  attr_accessor :definition

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_enabled
    __xmlattr[AttrEnabled]
  end

  def xmlattr_enabled=(value)
    __xmlattr[AttrEnabled] = value
  end

  def initialize(key = nil, persistence = nil, ipAddress = nil, port = nil, http = nil, definition = nil)
    @key = key
    @persistence = persistence
    @ipAddress = ipAddress
    @port = port
    @http = http
    @definition = definition
    @__xmlattr = {}
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}EventsList
class EventsList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/events}EventTypeList
class EventTypeList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/events}Notify
#   userid - SOAP::SOAPString
#   key - SOAP::SOAPString
class Notify
  attr_accessor :userid
  attr_accessor :key

  def initialize(userid = nil, key = nil)
    @userid = userid
    @key = key
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AcceptLevel
class AcceptLevel < ::String
  Busy = AcceptLevel.new("Busy")
  Free = AcceptLevel.new("Free")
  OutOfOffice = AcceptLevel.new("OutOfOffice")
  Tentative = AcceptLevel.new("Tentative")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AgeAction
class AgeAction < ::String
  Archive = AgeAction.new("archive")
  Delete = AgeAction.new("delete")
  Retain = AgeAction.new("retain")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}AppointmentConflict
class AppointmentConflict < ::String
  Ignore = AppointmentConflict.new("Ignore")
  No = AppointmentConflict.new("No")
  Yes = AppointmentConflict.new("Yes")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CalendarFolderFlags
class CalendarFolderFlags < ::String
  DontIncludeContent = CalendarFolderFlags.new("DontIncludeContent")
  ShowInList = CalendarFolderFlags.new("ShowInList")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CategoryType
class CategoryType < ::String
  FollowUp = CategoryType.new("FollowUp")
  LowPriority = CategoryType.new("LowPriority")
  Normal = CategoryType.new("Normal")
  Personal = CategoryType.new("Personal")
  Urgent = CategoryType.new("Urgent")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ContactType
class ContactType < ::String
  Contact = ContactType.new("Contact")
  Group = ContactType.new("Group")
  Organization = ContactType.new("Organization")
  Resource = ContactType.new("Resource")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CursorSeek
class CursorSeek < ::String
  Current = CursorSeek.new("current")
  End = CursorSeek.new("end")
  Start = CursorSeek.new("start")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}CustomType
class CustomType < ::String
  Binary = CustomType.new("Binary")
  C_Numeric = CustomType.new("Numeric")
  C_String = CustomType.new("String")
  Date = CustomType.new("Date")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DeltaSyncType
class DeltaSyncType < ::String
  Add = DeltaSyncType.new("add")
  Delete = DeltaSyncType.new("delete")
  Update = DeltaSyncType.new("update")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}DistributionType
class DistributionType < ::String
  BC = DistributionType.new("BC")
  CC = DistributionType.new("CC")
  TO = DistributionType.new("TO")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Execution
class Execution < ::String
  Exit = Execution.new("Exit")
  FolderClose = Execution.new("FolderClose")
  FolderNew = Execution.new("FolderNew")
  FolderOpen = Execution.new("FolderOpen")
  New = Execution.new("New")
  Startup = Execution.new("Startup")
  User = Execution.new("User")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FilterDate
class FilterDate < ::String
  ThisMonth = FilterDate.new("ThisMonth")
  ThisWeek = FilterDate.new("ThisWeek")
  ThisYear = FilterDate.new("ThisYear")
  Today = FilterDate.new("Today")
  Tomorrow = FilterDate.new("Tomorrow")
  Yesterday = FilterDate.new("Yesterday")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FilterOp
class FilterOp < ::String
  And = FilterOp.new("and")
  Begins = FilterOp.new("begins")
  Contains = FilterOp.new("contains")
  ContainsWord = FilterOp.new("containsWord")
  Eq = FilterOp.new("eq")
  Exists = FilterOp.new("exists")
  FieldDateEqual = FilterOp.new("fieldDateEqual")
  FieldEqual = FilterOp.new("fieldEqual")
  FieldGT = FilterOp.new("fieldGT")
  FieldGTE = FilterOp.new("fieldGTE")
  FieldLT = FilterOp.new("fieldLT")
  FieldLTE = FilterOp.new("fieldLTE")
  FieldNE = FilterOp.new("fieldNE")
  Gt = FilterOp.new("gt")
  Gte = FilterOp.new("gte")
  IsNotOf = FilterOp.new("isNotOf")
  IsOf = FilterOp.new("isOf")
  Lt = FilterOp.new("lt")
  Lte = FilterOp.new("lte")
  Ne = FilterOp.new("ne")
  Not = FilterOp.new("not")
  NotExist = FilterOp.new("notExist")
  Or = FilterOp.new("or")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FolderACLStatus
class FolderACLStatus < ::String
  Accepted = FolderACLStatus.new("accepted")
  Deleted = FolderACLStatus.new("deleted")
  Opened = FolderACLStatus.new("opened")
  Owner = FolderACLStatus.new("owner")
  Pending = FolderACLStatus.new("pending")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}FolderType
class FolderType < ::String
  Cabinet = FolderType.new("Cabinet")
  Calendar = FolderType.new("Calendar")
  Checklist = FolderType.new("Checklist")
  Contacts = FolderType.new("Contacts")
  Documents = FolderType.new("Documents")
  Draft = FolderType.new("Draft")
  IMAP = FolderType.new("IMAP")
  JunkMail = FolderType.new("JunkMail")
  Mailbox = FolderType.new("Mailbox")
  NNTPNewsGroup = FolderType.new("NNTPNewsGroup")
  NNTPServer = FolderType.new("NNTPServer")
  Normal = FolderType.new("Normal")
  Notes = FolderType.new("Notes")
  Query = FolderType.new("Query")
  Root = FolderType.new("Root")
  SentItems = FolderType.new("SentItems")
  Trash = FolderType.new("Trash")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}Frequency
class Frequency < ::String
  Daily = Frequency.new("Daily")
  Monthly = Frequency.new("Monthly")
  Weekly = Frequency.new("Weekly")
  Yearly = Frequency.new("Yearly")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemClass
class ItemClass < ::String
  Private = ItemClass.new("Private")
  Public = ItemClass.new("Public")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemOptionsPriority
class ItemOptionsPriority < ::String
  High = ItemOptionsPriority.new("High")
  Low = ItemOptionsPriority.new("Low")
  Standard = ItemOptionsPriority.new("Standard")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemSecurity
class ItemSecurity < ::String
  Confidential = ItemSecurity.new("Confidential")
  ForYourEyesOnly = ItemSecurity.new("ForYourEyesOnly")
  Normal = ItemSecurity.new("Normal")
  Proprietary = ItemSecurity.new("Proprietary")
  Secret = ItemSecurity.new("Secret")
  TopSecret = ItemSecurity.new("TopSecret")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemSource
class ItemSource < ::String
  Draft = ItemSource.new("draft")
  Personal = ItemSource.new("personal")
  Received = ItemSource.new("received")
  Sent = ItemSource.new("sent")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}ItemSourceList
#   contains list of ItemSource::*
class ItemSourceList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}JunkHandlingListType
class JunkHandlingListType < ::String
  Block = JunkHandlingListType.new("block")
  Junk = JunkHandlingListType.new("junk")
  Trust = JunkHandlingListType.new("trust")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}JunkMatchType
class JunkMatchType < ::String
  Domain = JunkMatchType.new("domain")
  Email = JunkMatchType.new("email")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}LinkType
class LinkType < ::String
  Forward = LinkType.new("forward")
  Reply = LinkType.new("reply")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MessageList
class MessageList < ::String
  All = MessageList.new("All")
  Modified = MessageList.new("Modified")
  New = MessageList.new("New")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MessageType
class MessageType < ::String
  Appointment = MessageType.new("Appointment")
  CalendarItem = MessageType.new("CalendarItem")
  DocumentReference = MessageType.new("DocumentReference")
  Mail = MessageType.new("Mail")
  Note = MessageType.new("Note")
  PhoneMessage = MessageType.new("PhoneMessage")
  Task = MessageType.new("Task")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}MessageTypeList
#   contains list of MessageType::*
class MessageTypeList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}NotificationType
class NotificationType < ::String
  SharedAddressBook = NotificationType.new("SharedAddressBook")
  SharedFolder = NotificationType.new("SharedFolder")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}OccurrenceType
class OccurrenceType < ::String
  Fifth = OccurrenceType.new("Fifth")
  First = OccurrenceType.new("First")
  Fourth = OccurrenceType.new("Fourth")
  Last = OccurrenceType.new("Last")
  Second = OccurrenceType.new("Second")
  Third = OccurrenceType.new("Third")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PhoneNumberType
class PhoneNumberType < ::String
  Fax = PhoneNumberType.new("Fax")
  Home = PhoneNumberType.new("Home")
  Mobile = PhoneNumberType.new("Mobile")
  Office = PhoneNumberType.new("Office")
  Pager = PhoneNumberType.new("Pager")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}PostalAddressType
class PostalAddressType < ::String
  Home = PostalAddressType.new("Home")
  Office = PostalAddressType.new("Office")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RecipientType
class RecipientType < ::String
  PersonalGroup = RecipientType.new("PersonalGroup")
  PersonalGroupMember = RecipientType.new("PersonalGroupMember")
  Resource = RecipientType.new("Resource")
  SystemGroup = RecipientType.new("SystemGroup")
  SystemGroupMember = RecipientType.new("SystemGroupMember")
  User = RecipientType.new("User")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RetractType
class RetractType < ::String
  AllMailboxes = RetractType.new("allMailboxes")
  MyMailbox = RetractType.new("myMailbox")
  RecipientMailboxes = RetractType.new("recipientMailboxes")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}RuleActionType
class RuleActionType < ::String
  Accept = RuleActionType.new("Accept")
  Archive = RuleActionType.new("Archive")
  Category = RuleActionType.new("Category")
  Delegate = RuleActionType.new("Delegate")
  Delete = RuleActionType.new("Delete")
  Forward = RuleActionType.new("Forward")
  Link = RuleActionType.new("Link")
  MarkPrivate = RuleActionType.new("MarkPrivate")
  MarkRead = RuleActionType.new("MarkRead")
  MarkUnread = RuleActionType.new("MarkUnread")
  Move = RuleActionType.new("Move")
  Purge = RuleActionType.new("Purge")
  Reply = RuleActionType.new("Reply")
  Send = RuleActionType.new("Send")
  StopRules = RuleActionType.new("StopRules")
  Unknown = RuleActionType.new("Unknown")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}StatusTrackingOptions
class StatusTrackingOptions < ::String
  All = StatusTrackingOptions.new("All")
  Delivered = StatusTrackingOptions.new("Delivered")
  DeliveredAndOpened = StatusTrackingOptions.new("DeliveredAndOpened")
  None = StatusTrackingOptions.new("None")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}VersionEventType
class VersionEventType < ::String
  Archive = VersionEventType.new("archive")
  CheckIn = VersionEventType.new("checkIn")
  CheckOut = VersionEventType.new("checkOut")
  CopyIn = VersionEventType.new("copyIn")
  CopyOut = VersionEventType.new("copyOut")
  CopyVersion = VersionEventType.new("copyVersion")
  Created = VersionEventType.new("created")
  DeleteVersion = VersionEventType.new("deleteVersion")
  EndAccess = VersionEventType.new("endAccess")
  ResetStatus = VersionEventType.new("resetStatus")
  Restore = VersionEventType.new("restore")
  Retrieve = VersionEventType.new("retrieve")
  SecurityModified = VersionEventType.new("securityModified")
  Unknown = VersionEventType.new("unknown")
  VersionDownloaded = VersionEventType.new("versionDownloaded")
  Viewed = VersionEventType.new("viewed")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}VersionStatus
class VersionStatus < ::String
  Archived = VersionStatus.new("archived")
  Available = VersionStatus.new("available")
  CheckedOut = VersionStatus.new("checkedOut")
  Deleted = VersionStatus.new("deleted")
  InUse = VersionStatus.new("inUse")
  MassInUse = VersionStatus.new("massInUse")
  Unavailable = VersionStatus.new("unavailable")
end

# {http://schemas.novell.com/2005/01/GroupWise/types}View
#   contains list of String::*
class View < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/types}WeekDay
class WeekDay < ::String
  Friday = WeekDay.new("Friday")
  Monday = WeekDay.new("Monday")
  Saturday = WeekDay.new("Saturday")
  Sunday = WeekDay.new("Sunday")
  Thursday = WeekDay.new("Thursday")
  Tuesday = WeekDay.new("Tuesday")
  Wednesday = WeekDay.new("Wednesday")
end

# {http://schemas.novell.com/2005/01/GroupWise/events}EventType
class EventType < ::String
  AddressBookAdd = EventType.new("AddressBookAdd")
  AddressBookDelete = EventType.new("AddressBookDelete")
  AddressBookItemAdd = EventType.new("AddressBookItemAdd")
  AddressBookItemDelete = EventType.new("AddressBookItemDelete")
  AddressBookItemModify = EventType.new("AddressBookItemModify")
  AddressBookModify = EventType.new("AddressBookModify")
  FolderAccept = EventType.new("FolderAccept")
  FolderAdd = EventType.new("FolderAdd")
  FolderDelete = EventType.new("FolderDelete")
  FolderItemAdd = EventType.new("FolderItemAdd")
  FolderItemDelete = EventType.new("FolderItemDelete")
  FolderItemMove = EventType.new("FolderItemMove")
  FolderModify = EventType.new("FolderModify")
  ItemAccept = EventType.new("ItemAccept")
  ItemArchive = EventType.new("ItemArchive")
  ItemComplete = EventType.new("ItemComplete")
  ItemDecline = EventType.new("ItemDecline")
  ItemDelete = EventType.new("ItemDelete")
  ItemMarkPrivate = EventType.new("ItemMarkPrivate")
  ItemMarkRead = EventType.new("ItemMarkRead")
  ItemMarkUnprivate = EventType.new("ItemMarkUnprivate")
  ItemMarkUnread = EventType.new("ItemMarkUnread")
  ItemModify = EventType.new("ItemModify")
  ItemPurge = EventType.new("ItemPurge")
  ItemUnaccept = EventType.new("ItemUnaccept")
  ItemUnarchive = EventType.new("ItemUnarchive")
  ItemUncomplete = EventType.new("ItemUncomplete")
  ItemUndelete = EventType.new("ItemUndelete")
  Login = EventType.new("Login")
  Logout = EventType.new("Logout")
  PersonalGroupItemAdd = EventType.new("PersonalGroupItemAdd")
  PersonalGroupItemDelete = EventType.new("PersonalGroupItemDelete")
  ProxyAccessAdd = EventType.new("ProxyAccessAdd")
  ProxyAccessDelete = EventType.new("ProxyAccessDelete")
  ProxyAccessModify = EventType.new("ProxyAccessModify")
  ProxyLogin = EventType.new("ProxyLogin")
  SessionTimedOut = EventType.new("SessionTimedOut")
  TrustedApplicationLogin = EventType.new("TrustedApplicationLogin")
end

# {http://schemas.novell.com/2005/01/GroupWise/events}Field
class Field < ::String
  AcceptLevel = Field.new("AcceptLevel")
  Alarm = Field.new("Alarm")
  AllDayEvent = Field.new("AllDayEvent")
  Attachment = Field.new("Attachment")
  Category = Field.new("Category")
  Classification = Field.new("Classification")
  Contact = Field.new("Contact")
  DueDate = Field.new("DueDate")
  Duration = Field.new("Duration")
  EmailAddress = Field.new("EmailAddress")
  ExpirationDate = Field.new("ExpirationDate")
  Hidden = Field.new("Hidden")
  IMAddress = Field.new("IMAddress")
  MessageBody = Field.new("MessageBody")
  Name = Field.new("Name")
  Organization = Field.new("Organization")
  Owner = Field.new("Owner")
  PersonalSubject = Field.new("PersonalSubject")
  PhoneNumber = Field.new("PhoneNumber")
  Place = Field.new("Place")
  PostalAddress = Field.new("PostalAddress")
  RecipientStatus = Field.new("RecipientStatus")
  Rights = Field.new("Rights")
  Security = Field.new("Security")
  SendPriority = Field.new("SendPriority")
  StartDate = Field.new("StartDate")
  Subject = Field.new("Subject")
  TaskCategory = Field.new("TaskCategory")
  TaskPriority = Field.new("TaskPriority")
end

# {http://schemas.novell.com/2005/01/GroupWise/events}FieldList
#   contains list of Field::*
class FieldList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/events}ItemType
class ItemType < ::String
  AddressBookItem = ItemType.new("AddressBookItem")
  Appointment = ItemType.new("Appointment")
  CalendarItem = ItemType.new("CalendarItem")
  Contact = ItemType.new("Contact")
  DocumentRef = ItemType.new("DocumentRef")
  Group = ItemType.new("Group")
  Mail = ItemType.new("Mail")
  Note = ItemType.new("Note")
  Organization = ItemType.new("Organization")
  PhoneMessage = ItemType.new("PhoneMessage")
  Resource = ItemType.new("Resource")
  Task = ItemType.new("Task")
end

# {http://schemas.novell.com/2005/01/GroupWise/events}ItemTypeList
#   contains list of ItemType::*
class ItemTypeList < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}acceptRequest
#   items - GroupWise::ItemRefList
#   comment - SOAP::SOAPString
#   acceptLevel - GroupWise::AcceptLevel
#   recurrenceAllInstances - SOAP::SOAPUnsignedInt
class AcceptRequest
  attr_accessor :items
  attr_accessor :comment
  attr_accessor :acceptLevel
  attr_accessor :recurrenceAllInstances

  def initialize(items = nil, comment = nil, acceptLevel = nil, recurrenceAllInstances = nil)
    @items = items
    @comment = comment
    @acceptLevel = acceptLevel
    @recurrenceAllInstances = recurrenceAllInstances
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}acceptResponse
#   status - GroupWise::Status
class AcceptResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}acceptShareRequest
#   id - (any)
#   name - SOAP::SOAPString
#   container - (any)
#   description - SOAP::SOAPString
class AcceptShareRequest
  attr_accessor :id
  attr_accessor :name
  attr_accessor :container
  attr_accessor :description

  def initialize(id = nil, name = nil, container = nil, description = nil)
    @id = id
    @name = name
    @container = container
    @description = description
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}acceptShareResponse
#   id - (any)
#   status - GroupWise::Status
class AcceptShareResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = nil, status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addItemRequest
#   container - (any)
#   id - (any)
class AddItemRequest
  attr_accessor :container
  attr_accessor :id

  def initialize(container = nil, id = nil)
    @container = container
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addItemResponse
#   status - GroupWise::Status
class AddItemResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addItemsRequest
#   container - (any)
#   items - GroupWise::ItemRefList
class AddItemsRequest
  attr_accessor :container
  attr_accessor :items

  def initialize(container = nil, items = nil)
    @container = container
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addItemsResponse
#   status - GroupWise::Status
class AddItemsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addMembersRequest
#   container - (any)
#   members - GroupWise::GroupMemberList
class AddMembersRequest
  attr_accessor :container
  attr_accessor :members

  def initialize(container = nil, members = nil)
    @container = container
    @members = members
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}addMembersResponse
#   status - GroupWise::Status
class AddMembersResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}closeFreeBusySessionRequest
#   freeBusySessionId - SOAP::SOAPInt
class CloseFreeBusySessionRequest
  attr_accessor :freeBusySessionId

  def initialize(freeBusySessionId = nil)
    @freeBusySessionId = freeBusySessionId
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}closeFreeBusySessionResponse
#   status - GroupWise::Status
class CloseFreeBusySessionResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}completeRequest
#   items - GroupWise::ItemRefList
class CompleteRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}completeResponse
#   status - GroupWise::Status
class CompleteResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createCursorRequest
#   container - (any)
#   view - (any)
#   filter - GroupWise::Filter
class CreateCursorRequest
  attr_accessor :container
  attr_accessor :view
  attr_accessor :filter

  def initialize(container = nil, view = nil, filter = nil)
    @container = container
    @view = view
    @filter = filter
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createCursorResponse
#   cursor - SOAP::SOAPInt
#   status - GroupWise::Status
class CreateCursorResponse
  attr_accessor :cursor
  attr_accessor :status

  def initialize(cursor = nil, status = nil)
    @cursor = cursor
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createItemRequest
#   item - GroupWise::Item
#   notification - GroupWise::SharedFolderNotification
class CreateItemRequest
  attr_accessor :item
  attr_accessor :notification

  def initialize(item = nil, notification = nil)
    @item = item
    @notification = notification
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createItemResponse
#   id - (any)
#   status - GroupWise::Status
class CreateItemResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = [], status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createItemsRequest
class CreateItemsRequest < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createItemsResponse
#   id - (any)
#   status - GroupWise::Status
class CreateItemsResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = [], status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createJunkEntryRequest
#   entry - GroupWise::JunkEntry
class CreateJunkEntryRequest
  attr_accessor :entry

  def initialize(entry = nil)
    @entry = entry
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createJunkEntryResponse
#   id - (any)
#   status - GroupWise::Status
class CreateJunkEntryResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = nil, status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createProxyAccessRequest
#   entry - GroupWise::AccessRightEntry
class CreateProxyAccessRequest
  attr_accessor :entry

  def initialize(entry = nil)
    @entry = entry
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createProxyAccessResponse
#   id - (any)
#   status - GroupWise::Status
class CreateProxyAccessResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = nil, status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createSignatureRequest
#   signature - GroupWise::Signature
class CreateSignatureRequest
  attr_accessor :signature

  def initialize(signature = nil)
    @signature = signature
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}createSignatureResponse
#   status - GroupWise::Status
class CreateSignatureResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}declineRequest
#   items - GroupWise::ItemRefList
#   comment - SOAP::SOAPString
#   recurrenceAllInstances - SOAP::SOAPUnsignedInt
class DeclineRequest
  attr_accessor :items
  attr_accessor :comment
  attr_accessor :recurrenceAllInstances

  def initialize(items = nil, comment = nil, recurrenceAllInstances = nil)
    @items = items
    @comment = comment
    @recurrenceAllInstances = recurrenceAllInstances
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}declineResponse
#   status - GroupWise::Status
class DeclineResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}delegateRequest
#   id - (any)
#   commentToOrganizer - SOAP::SOAPString
#   commentToDelegatee - SOAP::SOAPString
#   distribution - GroupWise::Distribution
#   recurrenceAllInstances - SOAP::SOAPUnsignedInt
class DelegateRequest
  attr_accessor :id
  attr_accessor :commentToOrganizer
  attr_accessor :commentToDelegatee
  attr_accessor :distribution
  attr_accessor :recurrenceAllInstances

  def initialize(id = nil, commentToOrganizer = nil, commentToDelegatee = nil, distribution = nil, recurrenceAllInstances = nil)
    @id = id
    @commentToOrganizer = commentToOrganizer
    @commentToDelegatee = commentToDelegatee
    @distribution = distribution
    @recurrenceAllInstances = recurrenceAllInstances
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}delegateResponse
#   status - GroupWise::Status
class DelegateResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}destroyCursorRequest
#   container - (any)
#   cursor - SOAP::SOAPInt
class DestroyCursorRequest
  attr_accessor :container
  attr_accessor :cursor

  def initialize(container = nil, cursor = nil)
    @container = container
    @cursor = cursor
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}destroyCursorResponse
#   status - GroupWise::Status
class DestroyCursorResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}executeRuleRequest
#   id - (any)
class ExecuteRuleRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}executeRuleResponse
#   status - GroupWise::Status
class ExecuteRuleResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}forwardRequest
#   id - (any)
#   view - (any)
#   embed - SOAP::SOAPBoolean
class ForwardRequest
  attr_accessor :id
  attr_accessor :view
  attr_accessor :embed

  def initialize(id = nil, view = nil, embed = nil)
    @id = id
    @view = view
    @embed = embed
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}forwardResponse
#   item - GroupWise::Item
#   status - GroupWise::Status
class ForwardResponse
  attr_accessor :item
  attr_accessor :status

  def initialize(item = nil, status = nil)
    @item = item
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getAddressBookListRequest
class GetAddressBookListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getAddressBookListResponse
#   books - GroupWise::AddressBookList
#   status - GroupWise::Status
class GetAddressBookListResponse
  attr_accessor :books
  attr_accessor :status

  def initialize(books = nil, status = nil)
    @books = books
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getAttachmentRequest
#   id - (any)
#   offset - SOAP::SOAPInt
#   length - SOAP::SOAPInt
class GetAttachmentRequest
  attr_accessor :id
  attr_accessor :offset
  attr_accessor :length

  def initialize(id = nil, offset = nil, length = nil)
    @id = id
    @offset = offset
    @length = length
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getAttachmentResponse
#   part - GroupWise::MessagePart
#   status - GroupWise::Status
class GetAttachmentResponse
  attr_accessor :part
  attr_accessor :status

  def initialize(part = nil, status = nil)
    @part = part
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getCategoryListRequest
class GetCategoryListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getCategoryListResponse
#   categories - GroupWise::CategoryList
#   status - GroupWise::Status
class GetCategoryListResponse
  attr_accessor :categories
  attr_accessor :status

  def initialize(categories = nil, status = nil)
    @categories = categories
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getCustomListRequest
class GetCustomListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getCustomListResponse
#   customs - GroupWise::CustomList
#   status - GroupWise::Status
class GetCustomListResponse
  attr_accessor :customs
  attr_accessor :status

  def initialize(customs = nil, status = nil)
    @customs = customs
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDeltasRequest
#   container - (any)
#   view - (any)
#   deltaInfo - GroupWise::DeltaInfo
class GetDeltasRequest
  attr_accessor :container
  attr_accessor :view
  attr_accessor :deltaInfo

  def initialize(container = nil, view = nil, deltaInfo = nil)
    @container = container
    @view = view
    @deltaInfo = deltaInfo
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDeltasResponse
#   items - GroupWise::Items
#   deltaInfo - GroupWise::DeltaInfo
#   status - GroupWise::Status
class GetDeltasResponse
  attr_accessor :items
  attr_accessor :deltaInfo
  attr_accessor :status

  def initialize(items = nil, deltaInfo = nil, status = nil)
    @items = items
    @deltaInfo = deltaInfo
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDeltaInfoRequest
#   container - (any)
class GetDeltaInfoRequest
  attr_accessor :container

  def initialize(container = nil)
    @container = container
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDeltaInfoResponse
#   deltaInfo - GroupWise::DeltaInfo
#   status - GroupWise::Status
class GetDeltaInfoResponse
  attr_accessor :deltaInfo
  attr_accessor :status

  def initialize(deltaInfo = nil, status = nil)
    @deltaInfo = deltaInfo
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDocumentTypeListRequest
#   library - (any)
class GetDocumentTypeListRequest
  attr_accessor :library

  def initialize(library = nil)
    @library = library
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getDocumentTypeListResponse
#   items - GroupWise::DocumentTypeList
#   status - GroupWise::Status
class GetDocumentTypeListResponse
  attr_accessor :items
  attr_accessor :status

  def initialize(items = nil, status = nil)
    @items = items
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFolderRequest
#   id - (any)
#   folderType - GroupWise::FolderType
#   types - (any)
#   source - (any)
#   view - (any)
class GetFolderRequest
  attr_accessor :id
  attr_accessor :folderType
  attr_accessor :types
  attr_accessor :source
  attr_accessor :view

  def initialize(id = nil, folderType = nil, types = nil, source = nil, view = nil)
    @id = id
    @folderType = folderType
    @types = types
    @source = source
    @view = view
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFolderResponse
#   folder - GroupWise::Folder
#   status - GroupWise::Status
class GetFolderResponse
  attr_accessor :folder
  attr_accessor :status

  def initialize(folder = nil, status = nil)
    @folder = folder
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFolderListRequest
#   parent - (any)
#   view - (any)
#   recurse - SOAP::SOAPBoolean
#   imap - SOAP::SOAPBoolean
#   nntp - SOAP::SOAPBoolean
class GetFolderListRequest
  attr_accessor :parent
  attr_accessor :view
  attr_accessor :recurse
  attr_accessor :imap
  attr_accessor :nntp

  def initialize(parent = nil, view = nil, recurse = nil, imap = nil, nntp = nil)
    @parent = parent
    @view = view
    @recurse = recurse
    @imap = imap
    @nntp = nntp
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFolderListResponse
#   folders - GroupWise::FolderList
#   status - GroupWise::Status
class GetFolderListResponse
  attr_accessor :folders
  attr_accessor :status

  def initialize(folders = nil, status = nil)
    @folders = folders
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFreeBusyRequest
#   freeBusySessionId - SOAP::SOAPString
class GetFreeBusyRequest
  attr_accessor :freeBusySessionId

  def initialize(freeBusySessionId = nil)
    @freeBusySessionId = freeBusySessionId
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getFreeBusyResponse
#   freeBusyStats - GroupWise::FreeBusyStats
#   freeBusyInfo - GroupWise::FreeBusyInfoList
#   status - GroupWise::Status
class GetFreeBusyResponse
  attr_accessor :freeBusyStats
  attr_accessor :freeBusyInfo
  attr_accessor :status

  def initialize(freeBusyStats = nil, freeBusyInfo = nil, status = nil)
    @freeBusyStats = freeBusyStats
    @freeBusyInfo = freeBusyInfo
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getItemRequest
#   id - (any)
#   view - (any)
class GetItemRequest
  attr_accessor :id
  attr_accessor :view

  def initialize(id = nil, view = nil)
    @id = id
    @view = view
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getItemResponse
#   item - GroupWise::Item
#   status - GroupWise::Status
class GetItemResponse
  attr_accessor :item
  attr_accessor :status

  def initialize(item = nil, status = nil)
    @item = item
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getItemsRequest
#   container - (any)
#   view - (any)
#   filter - GroupWise::Filter
#   items - GroupWise::ItemRefList
#   count - SOAP::SOAPInt
class GetItemsRequest
  attr_accessor :container
  attr_accessor :view
  attr_accessor :filter
  attr_accessor :items
  attr_accessor :count

  def initialize(container = nil, view = nil, filter = nil, items = nil, count = nil)
    @container = container
    @view = view
    @filter = filter
    @items = items
    @count = count
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getItemsResponse
#   items - GroupWise::Items
#   status - GroupWise::Status
class GetItemsResponse
  attr_accessor :items
  attr_accessor :status

  def initialize(items = nil, status = nil)
    @items = items
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getJunkEntriesRequest
#   container - GroupWise::JunkHandlingListType
class GetJunkEntriesRequest
  attr_accessor :container

  def initialize(container = nil)
    @container = container
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getJunkEntriesResponse
#   junk - GroupWise::JunkHandlingList
#   block - GroupWise::JunkHandlingList
#   trust - GroupWise::JunkHandlingList
#   status - GroupWise::Status
class GetJunkEntriesResponse
  attr_accessor :junk
  attr_accessor :block
  attr_accessor :trust
  attr_accessor :status

  def initialize(junk = nil, block = nil, trust = nil, status = nil)
    @junk = junk
    @block = block
    @trust = trust
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getJunkMailSettingsRequest
class GetJunkMailSettingsRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getJunkMailSettingsResponse
#   settings - GroupWise::SettingsList
#   status - GroupWise::Status
class GetJunkMailSettingsResponse
  attr_accessor :settings
  attr_accessor :status

  def initialize(settings = nil, status = nil)
    @settings = settings
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getLibraryItemRequest
#   library - (any)
#   documentNumber - SOAP::SOAPUnsignedInt
#   versionNumber - SOAP::SOAPString
class GetLibraryItemRequest
  attr_accessor :library
  attr_accessor :documentNumber
  attr_accessor :versionNumber

  def initialize(library = nil, documentNumber = nil, versionNumber = nil)
    @library = library
    @documentNumber = documentNumber
    @versionNumber = versionNumber
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getLibraryItemResponse
#   item - GroupWise::Item
#   status - GroupWise::Status
class GetLibraryItemResponse
  attr_accessor :item
  attr_accessor :status

  def initialize(item = nil, status = nil)
    @item = item
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getLibraryListRequest
class GetLibraryListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getLibraryListResponse
#   libraries - GroupWise::LibraryList
#   status - GroupWise::Status
class GetLibraryListResponse
  attr_accessor :libraries
  attr_accessor :status

  def initialize(libraries = nil, status = nil)
    @libraries = libraries
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getQuickMessagesRequest
#   list - GroupWise::MessageList
#   startDate - SOAP::SOAPDateTime
#   container - (any)
#   types - (any)
#   source - (any)
#   view - (any)
#   count - SOAP::SOAPInt
class GetQuickMessagesRequest
  attr_accessor :list
  attr_accessor :startDate
  attr_accessor :container
  attr_accessor :types
  attr_accessor :source
  attr_accessor :view
  attr_accessor :count

  def initialize(list = nil, startDate = nil, container = nil, types = nil, source = nil, view = nil, count = nil)
    @list = list
    @startDate = startDate
    @container = container
    @types = types
    @source = source
    @view = view
    @count = count
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getQuickMessagesResponse
#   startDate - SOAP::SOAPDateTime
#   items - GroupWise::Items
#   status - GroupWise::Status
class GetQuickMessagesResponse
  attr_accessor :startDate
  attr_accessor :items
  attr_accessor :status

  def initialize(startDate = nil, items = nil, status = nil)
    @startDate = startDate
    @items = items
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getProxyAccessListRequest
class GetProxyAccessListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getProxyAccessListResponse
#   accessRights - GroupWise::AccessRightList
#   status - GroupWise::Status
class GetProxyAccessListResponse
  attr_accessor :accessRights
  attr_accessor :status

  def initialize(accessRights = nil, status = nil)
    @accessRights = accessRights
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getProxyListRequest
class GetProxyListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getProxyListResponse
#   proxies - GroupWise::ProxyList
#   status - GroupWise::Status
class GetProxyListResponse
  attr_accessor :proxies
  attr_accessor :status

  def initialize(proxies = nil, status = nil)
    @proxies = proxies
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getRuleListRequest
class GetRuleListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getRuleListResponse
#   rules - GroupWise::RuleList
#   status - GroupWise::Status
class GetRuleListResponse
  attr_accessor :rules
  attr_accessor :status

  def initialize(rules = nil, status = nil)
    @rules = rules
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getSettingsRequest
#   id - SOAP::SOAPString
class GetSettingsRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getSettingsResponse
#   settings - GroupWise::Settings
#   status - GroupWise::Status
class GetSettingsResponse
  attr_accessor :settings
  attr_accessor :status

  def initialize(settings = nil, status = nil)
    @settings = settings
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getSignaturesRequest
#   global - SOAP::SOAPBoolean
class GetSignaturesRequest
  attr_accessor :global

  def initialize(global = nil)
    @global = global
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getSignaturesResponse
#   signatures - GroupWise::Signatures
#   status - GroupWise::Status
class GetSignaturesResponse
  attr_accessor :signatures
  attr_accessor :status

  def initialize(signatures = nil, status = nil)
    @signatures = signatures
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getTimestampRequest
#   backup - SOAP::SOAPBoolean
#   retention - SOAP::SOAPBoolean
#   noop - SOAP::SOAPBoolean
class GetTimestampRequest
  attr_accessor :backup
  attr_accessor :retention
  attr_accessor :noop

  def initialize(backup = nil, retention = nil, noop = nil)
    @backup = backup
    @retention = retention
    @noop = noop
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getTimestampResponse
#   backup - SOAP::SOAPDateTime
#   retention - SOAP::SOAPDateTime
#   status - GroupWise::Status
class GetTimestampResponse
  attr_accessor :backup
  attr_accessor :retention
  attr_accessor :status

  def initialize(backup = nil, retention = nil, status = nil)
    @backup = backup
    @retention = retention
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getTimezoneListRequest
class GetTimezoneListRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getTimezoneListResponse
#   timezones - GroupWise::TimezoneList
#   status - GroupWise::Status
class GetTimezoneListResponse
  attr_accessor :timezones
  attr_accessor :status

  def initialize(timezones = nil, status = nil)
    @timezones = timezones
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getUserListRequest
#   name - SOAP::SOAPString
#   key - SOAP::SOAPString
class GetUserListRequest
  attr_accessor :name
  attr_accessor :key

  def initialize(name = nil, key = nil)
    @name = name
    @key = key
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}getUserListResponse
#   users - GroupWise::UserList
#   status - GroupWise::Status
class GetUserListResponse
  attr_accessor :users
  attr_accessor :status

  def initialize(users = nil, status = nil)
    @users = users
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}loginRequest
#   auth - GroupWise::Authentication
#   language - SOAP::SOAPLanguage
#   version - SOAP::SOAPDecimal
#   application - SOAP::SOAPString
class LoginRequest
  attr_accessor :auth
  attr_accessor :language
  attr_accessor :version
  attr_accessor :application

  def initialize(auth = nil, language = nil, version = nil, application = nil)
    @auth = auth
    @language = language
    @version = version
    @application = application
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}loginResponse
#   session - SOAP::SOAPString
#   userinfo - GroupWise::UserInfo
#   entry - GroupWise::AccessRightEntry
#   gwVersion - SOAP::SOAPString
#   build - SOAP::SOAPString
#   redirectToHost - GroupWise::Host
#   serverUTCTime - SOAP::SOAPDateTime
#   status - GroupWise::Status
class LoginResponse
  attr_accessor :session
  attr_accessor :userinfo
  attr_accessor :entry
  attr_accessor :gwVersion
  attr_accessor :build
  attr_accessor :redirectToHost
  attr_accessor :serverUTCTime
  attr_accessor :status

  def initialize(session = nil, userinfo = nil, entry = nil, gwVersion = nil, build = nil, redirectToHost = [], serverUTCTime = nil, status = nil)
    @session = session
    @userinfo = userinfo
    @entry = entry
    @gwVersion = gwVersion
    @build = build
    @redirectToHost = redirectToHost
    @serverUTCTime = serverUTCTime
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}logoutRequest
class LogoutRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}logoutResponse
#   status - GroupWise::Status
class LogoutResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markPrivateRequest
#   items - GroupWise::ItemRefList
class MarkPrivateRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markPrivateResponse
#   status - GroupWise::Status
class MarkPrivateResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markReadRequest
#   items - GroupWise::ItemRefList
class MarkReadRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markReadResponse
#   status - GroupWise::Status
class MarkReadResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markUnPrivateRequest
#   items - GroupWise::ItemRefList
class MarkUnPrivateRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markUnPrivateResponse
#   status - GroupWise::Status
class MarkUnPrivateResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markUnReadRequest
#   items - GroupWise::ItemRefList
class MarkUnReadRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}markUnReadResponse
#   status - GroupWise::Status
class MarkUnReadResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyItemRequest
#   id - (any)
#   notification - GroupWise::SharedFolderNotification
#   updates - GroupWise::ItemChanges
#   recurrenceAllInstances - SOAP::SOAPUnsignedInt
class ModifyItemRequest
  attr_accessor :id
  attr_accessor :notification
  attr_accessor :updates
  attr_accessor :recurrenceAllInstances

  def initialize(id = nil, notification = nil, updates = nil, recurrenceAllInstances = nil)
    @id = id
    @notification = notification
    @updates = updates
    @recurrenceAllInstances = recurrenceAllInstances
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyItemResponse
#   modified - SOAP::SOAPDateTime
#   id - (any)
#   status - GroupWise::Status
class ModifyItemResponse
  attr_accessor :modified
  attr_accessor :id
  attr_accessor :status

  def initialize(modified = nil, id = [], status = nil)
    @modified = modified
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyItemsRequest
class ModifyItemsRequest < ::Array
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyItemsResponse
#   modified - SOAP::SOAPDateTime
#   id - (any)
#   status - GroupWise::Status
class ModifyItemsResponse
  attr_accessor :modified
  attr_accessor :id
  attr_accessor :status

  def initialize(modified = [], id = [], status = nil)
    @modified = modified
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyJunkEntryRequest
#   entry - GroupWise::JunkEntry
class ModifyJunkEntryRequest
  attr_accessor :entry

  def initialize(entry = nil)
    @entry = entry
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyJunkEntryResponse
#   status - GroupWise::Status
class ModifyJunkEntryResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyJunkMailSettingsRequest
#   settings - GroupWise::SettingsList
class ModifyJunkMailSettingsRequest
  attr_accessor :settings

  def initialize(settings = nil)
    @settings = settings
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyJunkMailSettingsResponse
#   status - GroupWise::Status
class ModifyJunkMailSettingsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyPasswordRequest
#   old - SOAP::SOAPString
#   new - SOAP::SOAPString
class ModifyPasswordRequest
  attr_accessor :old
  attr_accessor :new

  def initialize(old = nil, new = nil)
    @old = old
    @new = new
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyPasswordResponse
#   status - GroupWise::Status
class ModifyPasswordResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyProxyAccessRequest
#   id - (any)
#   updates - GroupWise::AccessRightChanges
class ModifyProxyAccessRequest
  attr_accessor :id
  attr_accessor :updates

  def initialize(id = nil, updates = nil)
    @id = id
    @updates = updates
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifyProxyAccessResponse
#   status - GroupWise::Status
class ModifyProxyAccessResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifySettingsRequest
#   settings - GroupWise::SettingsList
class ModifySettingsRequest
  attr_accessor :settings

  def initialize(settings = nil)
    @settings = settings
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifySettingsResponse
#   status - GroupWise::Status
class ModifySettingsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifySignaturesRequest
#   updates - GroupWise::Signatures
class ModifySignaturesRequest
  attr_accessor :updates

  def initialize(updates = nil)
    @updates = updates
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}modifySignaturesResponse
#   status - GroupWise::Status
class ModifySignaturesResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}moveItemRequest
#   id - (any)
#   container - (any)
#   from - (any)
class MoveItemRequest
  attr_accessor :id
  attr_accessor :container
  attr_accessor :from

  def initialize(id = nil, container = nil, from = nil)
    @id = id
    @container = container
    @from = from
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}moveItemResponse
#   status - GroupWise::Status
class MoveItemResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}positionCursorRequest
#   container - (any)
#   cursor - SOAP::SOAPInt
#   seek - GroupWise::CursorSeek
#   offset - SOAP::SOAPInt
class PositionCursorRequest
  attr_accessor :container
  attr_accessor :cursor
  attr_accessor :seek
  attr_accessor :offset

  def initialize(container = nil, cursor = nil, seek = nil, offset = nil)
    @container = container
    @cursor = cursor
    @seek = seek
    @offset = offset
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}positionCursorResponse
#   status - GroupWise::Status
class PositionCursorResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}purgeDeletedItemsRequest
class PurgeDeletedItemsRequest
  def initialize
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}purgeDeletedItemsResponse
#   status - GroupWise::Status
class PurgeDeletedItemsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}purgeRequest
#   items - GroupWise::ItemRefList
class PurgeRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}purgeResponse
#   status - GroupWise::Status
class PurgeResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}readCursorRequest
#   container - (any)
#   cursor - SOAP::SOAPInt
#   forward - SOAP::SOAPBoolean
#   position - GroupWise::CursorSeek
#   count - SOAP::SOAPInt
class ReadCursorRequest
  attr_accessor :container
  attr_accessor :cursor
  attr_accessor :forward
  attr_accessor :position
  attr_accessor :count

  def initialize(container = nil, cursor = nil, forward = nil, position = nil, count = nil)
    @container = container
    @cursor = cursor
    @forward = forward
    @position = position
    @count = count
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}readCursorResponse
#   items - GroupWise::ItemList
#   status - GroupWise::Status
class ReadCursorResponse
  attr_accessor :items
  attr_accessor :status

  def initialize(items = nil, status = nil)
    @items = items
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeCustomDefinitionRequest
#   customs - GroupWise::CustomList
#   books - SOAP::SOAPBoolean
#   doAsynchronous - SOAP::SOAPBoolean
class RemoveCustomDefinitionRequest
  attr_accessor :customs
  attr_accessor :books
  attr_accessor :doAsynchronous

  def initialize(customs = nil, books = nil, doAsynchronous = nil)
    @customs = customs
    @books = books
    @doAsynchronous = doAsynchronous
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeCustomDefinitionResponse
#   status - GroupWise::Status
class RemoveCustomDefinitionResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeItemRequest
#   container - (any)
#   id - (any)
class RemoveItemRequest
  attr_accessor :container
  attr_accessor :id

  def initialize(container = nil, id = nil)
    @container = container
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeItemResponse
#   status - GroupWise::Status
class RemoveItemResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeItemsRequest
#   container - (any)
#   items - GroupWise::ItemRefList
class RemoveItemsRequest
  attr_accessor :container
  attr_accessor :items

  def initialize(container = nil, items = nil)
    @container = container
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeItemsResponse
#   status - GroupWise::Status
class RemoveItemsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeJunkEntryRequest
#   id - (any)
class RemoveJunkEntryRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeJunkEntryResponse
#   status - GroupWise::Status
class RemoveJunkEntryResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeMembersRequest
#   container - (any)
#   members - GroupWise::GroupMemberList
class RemoveMembersRequest
  attr_accessor :container
  attr_accessor :members

  def initialize(container = nil, members = nil)
    @container = container
    @members = members
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeMembersResponse
#   status - GroupWise::Status
class RemoveMembersResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeProxyAccessRequest
#   id - (any)
class RemoveProxyAccessRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeProxyAccessResponse
#   status - GroupWise::Status
class RemoveProxyAccessResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeProxyUserRequest
#   id - (any)
class RemoveProxyUserRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeProxyUserResponse
#   status - GroupWise::Status
class RemoveProxyUserResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeSignatureRequest
#   id - (any)
#   all - SOAP::SOAPBoolean
#   global - SOAP::SOAPBoolean
class RemoveSignatureRequest
  attr_accessor :id
  attr_accessor :all
  attr_accessor :global

  def initialize(id = nil, all = nil, global = nil)
    @id = id
    @all = all
    @global = global
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}removeSignatureResponse
#   status - GroupWise::Status
class RemoveSignatureResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}replyRequest
#   id - (any)
#   view - (any)
class ReplyRequest
  attr_accessor :id
  attr_accessor :view

  def initialize(id = nil, view = nil)
    @id = id
    @view = view
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}replyResponse
#   item - GroupWise::Item
#   status - GroupWise::Status
class ReplyResponse
  attr_accessor :item
  attr_accessor :status

  def initialize(item = nil, status = nil)
    @item = item
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}retractRequest
#   items - GroupWise::ItemRefList
#   comment - SOAP::SOAPString
#   retractingAllInstances - SOAP::SOAPBoolean
#   retractCausedByResend - SOAP::SOAPBoolean
#   retractType - GroupWise::RetractType
class RetractRequest
  attr_accessor :items
  attr_accessor :comment
  attr_accessor :retractingAllInstances
  attr_accessor :retractCausedByResend
  attr_accessor :retractType

  def initialize(items = nil, comment = nil, retractingAllInstances = nil, retractCausedByResend = nil, retractType = nil)
    @items = items
    @comment = comment
    @retractingAllInstances = retractingAllInstances
    @retractCausedByResend = retractCausedByResend
    @retractType = retractType
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}retractResponse
#   status - GroupWise::Status
class RetractResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}sendItemRequest
#   item - GroupWise::Item
class SendItemRequest
  attr_accessor :item

  def initialize(item = nil)
    @item = item
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}sendItemResponse
#   id - (any)
#   status - GroupWise::Status
class SendItemResponse
  attr_accessor :id
  attr_accessor :status

  def initialize(id = [], status = nil)
    @id = id
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}setTimestampRequest
#   backup - SOAP::SOAPDateTime
#   retention - SOAP::SOAPDateTime
class SetTimestampRequest
  attr_accessor :backup
  attr_accessor :retention

  def initialize(backup = nil, retention = nil)
    @backup = backup
    @retention = retention
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}setTimestampResponse
#   status - GroupWise::Status
class SetTimestampResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}startFreeBusySessionRequest
#   users - GroupWise::FreeBusyUserList
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class StartFreeBusySessionRequest
  attr_accessor :users
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(users = nil, startDate = nil, endDate = nil)
    @users = users
    @startDate = startDate
    @endDate = endDate
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}startFreeBusySessionResponse
#   freeBusySessionId - SOAP::SOAPInt
#   status - GroupWise::Status
class StartFreeBusySessionResponse
  attr_accessor :freeBusySessionId
  attr_accessor :status

  def initialize(freeBusySessionId = nil, status = nil)
    @freeBusySessionId = freeBusySessionId
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}unacceptRequest
#   items - GroupWise::ItemRefList
class UnacceptRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}unacceptResponse
#   status - GroupWise::Status
class UnacceptResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}uncompleteRequest
#   items - GroupWise::ItemRefList
class UncompleteRequest
  attr_accessor :items

  def initialize(items = nil)
    @items = items
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}uncompleteResponse
#   status - GroupWise::Status
class UncompleteResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}updateVersionStatusRequest
#   id - (any)
#   event - GroupWise::VersionEventType
#   part - GroupWise::SignatureData
class UpdateVersionStatusRequest
  attr_accessor :id
  attr_accessor :event
  attr_accessor :part

  def initialize(id = nil, event = nil, part = nil)
    @id = id
    @event = event
    @part = part
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/methods}updateVersionStatusResponse
#   part - GroupWise::SignatureData
#   status - GroupWise::Status
class UpdateVersionStatusResponse
  attr_accessor :part
  attr_accessor :status

  def initialize(part = nil, status = nil)
    @part = part
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}cleanEventConfigurationRequest
#   all - SOAP::SOAPBoolean
class CleanEventConfigurationRequest
  attr_accessor :all

  def initialize(all = nil)
    @all = all
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}cleanEventConfigurationResponse
#   status - GroupWise::Status
class CleanEventConfigurationResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}configureEventsRequest
#   events - GroupWise::Events
class ConfigureEventsRequest
  attr_accessor :events

  def initialize(events = nil)
    @events = events
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}configureEventsResponse
#   status - GroupWise::Status
class ConfigureEventsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}getEventConfigurationRequest
#   key - SOAP::SOAPString
class GetEventConfigurationRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}getEventConfigurationResponse
#   events - GroupWise::EventsList
#   status - GroupWise::Status
class GetEventConfigurationResponse
  attr_accessor :events
  attr_accessor :status

  def initialize(events = nil, status = nil)
    @events = events
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}getEventsRequest
#   key - SOAP::SOAPString
#   from - SOAP::SOAPDateTime
#   m_until - SOAP::SOAPDateTime
#   uid - SOAP::SOAPUnsignedInt
#   count - SOAP::SOAPInt
#   remove - SOAP::SOAPBoolean
#   notify - SOAP::SOAPBoolean
class GetEventsRequest
  attr_accessor :key
  attr_accessor :from
  attr_accessor :uid
  attr_accessor :count
  attr_accessor :remove
  attr_accessor :notify

  def m_until
    @v_until
  end

  def m_until=(value)
    @v_until = value
  end

  def initialize(key = nil, from = nil, v_until = nil, uid = nil, count = nil, remove = nil, notify = nil)
    @key = key
    @from = from
    @v_until = v_until
    @uid = uid
    @count = count
    @remove = remove
    @notify = notify
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}getEventsResponse
#   events - GroupWise::EventList
#   status - GroupWise::Status
class GetEventsResponse
  attr_accessor :events
  attr_accessor :status

  def initialize(events = nil, status = nil)
    @events = events
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}removeEventConfigurationRequest
#   key - SOAP::SOAPString
class RemoveEventConfigurationRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}removeEventConfigurationResponse
#   status - GroupWise::Status
class RemoveEventConfigurationResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}removeEventsRequest
#   key - SOAP::SOAPString
#   from - SOAP::SOAPDateTime
#   m_until - SOAP::SOAPDateTime
class RemoveEventsRequest
  attr_accessor :key
  attr_accessor :from

  def m_until
    @v_until
  end

  def m_until=(value)
    @v_until = value
  end

  def initialize(key = nil, from = nil, v_until = nil)
    @key = key
    @from = from
    @v_until = v_until
  end
end

# {http://schemas.novell.com/2005/01/GroupWise/events}removeEventsResponse
#   status - GroupWise::Status
class RemoveEventsResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end


end
