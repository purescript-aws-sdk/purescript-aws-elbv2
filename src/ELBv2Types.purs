
module AWS.ELBv2.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Information about an action.</p>
newtype Action = Action 
  { "Type" :: (ActionTypeEnum)
  , "TargetGroupArn" :: (TargetGroupArn)
  }
derive instance newtypeAction :: Newtype Action _
derive instance repGenericAction :: Generic Action _
instance showAction :: Show Action where show = genericShow
instance decodeAction :: Decode Action where decode = genericDecode options
instance encodeAction :: Encode Action where encode = genericEncode options

-- | Constructs Action from required parameters
newAction :: TargetGroupArn -> ActionTypeEnum -> Action
newAction _TargetGroupArn _Type = Action { "TargetGroupArn": _TargetGroupArn, "Type": _Type }

-- | Constructs Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAction' :: TargetGroupArn -> ActionTypeEnum -> ( { "Type" :: (ActionTypeEnum) , "TargetGroupArn" :: (TargetGroupArn) } -> {"Type" :: (ActionTypeEnum) , "TargetGroupArn" :: (TargetGroupArn) } ) -> Action
newAction' _TargetGroupArn _Type customize = (Action <<< customize) { "TargetGroupArn": _TargetGroupArn, "Type": _Type }



newtype ActionTypeEnum = ActionTypeEnum String
derive instance newtypeActionTypeEnum :: Newtype ActionTypeEnum _
derive instance repGenericActionTypeEnum :: Generic ActionTypeEnum _
instance showActionTypeEnum :: Show ActionTypeEnum where show = genericShow
instance decodeActionTypeEnum :: Decode ActionTypeEnum where decode = genericDecode options
instance encodeActionTypeEnum :: Encode ActionTypeEnum where encode = genericEncode options



newtype Actions = Actions (Array Action)
derive instance newtypeActions :: Newtype Actions _
derive instance repGenericActions :: Generic Actions _
instance showActions :: Show Actions where show = genericShow
instance decodeActions :: Decode Actions where decode = genericDecode options
instance encodeActions :: Encode Actions where encode = genericEncode options



newtype AddListenerCertificatesInput = AddListenerCertificatesInput 
  { "ListenerArn" :: (ListenerArn)
  , "Certificates" :: (CertificateList)
  }
derive instance newtypeAddListenerCertificatesInput :: Newtype AddListenerCertificatesInput _
derive instance repGenericAddListenerCertificatesInput :: Generic AddListenerCertificatesInput _
instance showAddListenerCertificatesInput :: Show AddListenerCertificatesInput where show = genericShow
instance decodeAddListenerCertificatesInput :: Decode AddListenerCertificatesInput where decode = genericDecode options
instance encodeAddListenerCertificatesInput :: Encode AddListenerCertificatesInput where encode = genericEncode options

-- | Constructs AddListenerCertificatesInput from required parameters
newAddListenerCertificatesInput :: CertificateList -> ListenerArn -> AddListenerCertificatesInput
newAddListenerCertificatesInput _Certificates _ListenerArn = AddListenerCertificatesInput { "Certificates": _Certificates, "ListenerArn": _ListenerArn }

-- | Constructs AddListenerCertificatesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddListenerCertificatesInput' :: CertificateList -> ListenerArn -> ( { "ListenerArn" :: (ListenerArn) , "Certificates" :: (CertificateList) } -> {"ListenerArn" :: (ListenerArn) , "Certificates" :: (CertificateList) } ) -> AddListenerCertificatesInput
newAddListenerCertificatesInput' _Certificates _ListenerArn customize = (AddListenerCertificatesInput <<< customize) { "Certificates": _Certificates, "ListenerArn": _ListenerArn }



newtype AddListenerCertificatesOutput = AddListenerCertificatesOutput 
  { "Certificates" :: NullOrUndefined (CertificateList)
  }
derive instance newtypeAddListenerCertificatesOutput :: Newtype AddListenerCertificatesOutput _
derive instance repGenericAddListenerCertificatesOutput :: Generic AddListenerCertificatesOutput _
instance showAddListenerCertificatesOutput :: Show AddListenerCertificatesOutput where show = genericShow
instance decodeAddListenerCertificatesOutput :: Decode AddListenerCertificatesOutput where decode = genericDecode options
instance encodeAddListenerCertificatesOutput :: Encode AddListenerCertificatesOutput where encode = genericEncode options

-- | Constructs AddListenerCertificatesOutput from required parameters
newAddListenerCertificatesOutput :: AddListenerCertificatesOutput
newAddListenerCertificatesOutput  = AddListenerCertificatesOutput { "Certificates": (NullOrUndefined Nothing) }

-- | Constructs AddListenerCertificatesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddListenerCertificatesOutput' :: ( { "Certificates" :: NullOrUndefined (CertificateList) } -> {"Certificates" :: NullOrUndefined (CertificateList) } ) -> AddListenerCertificatesOutput
newAddListenerCertificatesOutput'  customize = (AddListenerCertificatesOutput <<< customize) { "Certificates": (NullOrUndefined Nothing) }



newtype AddTagsInput = AddTagsInput 
  { "ResourceArns" :: (ResourceArns)
  , "Tags" :: (TagList)
  }
derive instance newtypeAddTagsInput :: Newtype AddTagsInput _
derive instance repGenericAddTagsInput :: Generic AddTagsInput _
instance showAddTagsInput :: Show AddTagsInput where show = genericShow
instance decodeAddTagsInput :: Decode AddTagsInput where decode = genericDecode options
instance encodeAddTagsInput :: Encode AddTagsInput where encode = genericEncode options

-- | Constructs AddTagsInput from required parameters
newAddTagsInput :: ResourceArns -> TagList -> AddTagsInput
newAddTagsInput _ResourceArns _Tags = AddTagsInput { "ResourceArns": _ResourceArns, "Tags": _Tags }

-- | Constructs AddTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsInput' :: ResourceArns -> TagList -> ( { "ResourceArns" :: (ResourceArns) , "Tags" :: (TagList) } -> {"ResourceArns" :: (ResourceArns) , "Tags" :: (TagList) } ) -> AddTagsInput
newAddTagsInput' _ResourceArns _Tags customize = (AddTagsInput <<< customize) { "ResourceArns": _ResourceArns, "Tags": _Tags }



newtype AddTagsOutput = AddTagsOutput Types.NoArguments
derive instance newtypeAddTagsOutput :: Newtype AddTagsOutput _
derive instance repGenericAddTagsOutput :: Generic AddTagsOutput _
instance showAddTagsOutput :: Show AddTagsOutput where show = genericShow
instance decodeAddTagsOutput :: Decode AddTagsOutput where decode = genericDecode options
instance encodeAddTagsOutput :: Encode AddTagsOutput where encode = genericEncode options



newtype AllocationId = AllocationId String
derive instance newtypeAllocationId :: Newtype AllocationId _
derive instance repGenericAllocationId :: Generic AllocationId _
instance showAllocationId :: Show AllocationId where show = genericShow
instance decodeAllocationId :: Decode AllocationId where decode = genericDecode options
instance encodeAllocationId :: Encode AllocationId where encode = genericEncode options



-- | <p>The specified allocation ID does not exist.</p>
newtype AllocationIdNotFoundException = AllocationIdNotFoundException Types.NoArguments
derive instance newtypeAllocationIdNotFoundException :: Newtype AllocationIdNotFoundException _
derive instance repGenericAllocationIdNotFoundException :: Generic AllocationIdNotFoundException _
instance showAllocationIdNotFoundException :: Show AllocationIdNotFoundException where show = genericShow
instance decodeAllocationIdNotFoundException :: Decode AllocationIdNotFoundException where decode = genericDecode options
instance encodeAllocationIdNotFoundException :: Encode AllocationIdNotFoundException where encode = genericEncode options



-- | <p>Information about an Availability Zone.</p>
newtype AvailabilityZone = AvailabilityZone 
  { "ZoneName" :: NullOrUndefined (ZoneName)
  , "SubnetId" :: NullOrUndefined (SubnetId)
  , "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses)
  }
derive instance newtypeAvailabilityZone :: Newtype AvailabilityZone _
derive instance repGenericAvailabilityZone :: Generic AvailabilityZone _
instance showAvailabilityZone :: Show AvailabilityZone where show = genericShow
instance decodeAvailabilityZone :: Decode AvailabilityZone where decode = genericDecode options
instance encodeAvailabilityZone :: Encode AvailabilityZone where encode = genericEncode options

-- | Constructs AvailabilityZone from required parameters
newAvailabilityZone :: AvailabilityZone
newAvailabilityZone  = AvailabilityZone { "LoadBalancerAddresses": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "ZoneName": (NullOrUndefined Nothing) }

-- | Constructs AvailabilityZone's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAvailabilityZone' :: ( { "ZoneName" :: NullOrUndefined (ZoneName) , "SubnetId" :: NullOrUndefined (SubnetId) , "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses) } -> {"ZoneName" :: NullOrUndefined (ZoneName) , "SubnetId" :: NullOrUndefined (SubnetId) , "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses) } ) -> AvailabilityZone
newAvailabilityZone'  customize = (AvailabilityZone <<< customize) { "LoadBalancerAddresses": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "ZoneName": (NullOrUndefined Nothing) }



-- | <p>The specified Availability Zone is not supported.</p>
newtype AvailabilityZoneNotSupportedException = AvailabilityZoneNotSupportedException Types.NoArguments
derive instance newtypeAvailabilityZoneNotSupportedException :: Newtype AvailabilityZoneNotSupportedException _
derive instance repGenericAvailabilityZoneNotSupportedException :: Generic AvailabilityZoneNotSupportedException _
instance showAvailabilityZoneNotSupportedException :: Show AvailabilityZoneNotSupportedException where show = genericShow
instance decodeAvailabilityZoneNotSupportedException :: Decode AvailabilityZoneNotSupportedException where decode = genericDecode options
instance encodeAvailabilityZoneNotSupportedException :: Encode AvailabilityZoneNotSupportedException where encode = genericEncode options



newtype AvailabilityZones = AvailabilityZones (Array AvailabilityZone)
derive instance newtypeAvailabilityZones :: Newtype AvailabilityZones _
derive instance repGenericAvailabilityZones :: Generic AvailabilityZones _
instance showAvailabilityZones :: Show AvailabilityZones where show = genericShow
instance decodeAvailabilityZones :: Decode AvailabilityZones where decode = genericDecode options
instance encodeAvailabilityZones :: Encode AvailabilityZones where encode = genericEncode options



newtype CanonicalHostedZoneId = CanonicalHostedZoneId String
derive instance newtypeCanonicalHostedZoneId :: Newtype CanonicalHostedZoneId _
derive instance repGenericCanonicalHostedZoneId :: Generic CanonicalHostedZoneId _
instance showCanonicalHostedZoneId :: Show CanonicalHostedZoneId where show = genericShow
instance decodeCanonicalHostedZoneId :: Decode CanonicalHostedZoneId where decode = genericDecode options
instance encodeCanonicalHostedZoneId :: Encode CanonicalHostedZoneId where encode = genericEncode options



-- | <p>Information about an SSL server certificate.</p>
newtype Certificate = Certificate 
  { "CertificateArn" :: NullOrUndefined (CertificateArn)
  , "IsDefault" :: NullOrUndefined (Default)
  }
derive instance newtypeCertificate :: Newtype Certificate _
derive instance repGenericCertificate :: Generic Certificate _
instance showCertificate :: Show Certificate where show = genericShow
instance decodeCertificate :: Decode Certificate where decode = genericDecode options
instance encodeCertificate :: Encode Certificate where encode = genericEncode options

-- | Constructs Certificate from required parameters
newCertificate :: Certificate
newCertificate  = Certificate { "CertificateArn": (NullOrUndefined Nothing), "IsDefault": (NullOrUndefined Nothing) }

-- | Constructs Certificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificate' :: ( { "CertificateArn" :: NullOrUndefined (CertificateArn) , "IsDefault" :: NullOrUndefined (Default) } -> {"CertificateArn" :: NullOrUndefined (CertificateArn) , "IsDefault" :: NullOrUndefined (Default) } ) -> Certificate
newCertificate'  customize = (Certificate <<< customize) { "CertificateArn": (NullOrUndefined Nothing), "IsDefault": (NullOrUndefined Nothing) }



newtype CertificateArn = CertificateArn String
derive instance newtypeCertificateArn :: Newtype CertificateArn _
derive instance repGenericCertificateArn :: Generic CertificateArn _
instance showCertificateArn :: Show CertificateArn where show = genericShow
instance decodeCertificateArn :: Decode CertificateArn where decode = genericDecode options
instance encodeCertificateArn :: Encode CertificateArn where encode = genericEncode options



newtype CertificateList = CertificateList (Array Certificate)
derive instance newtypeCertificateList :: Newtype CertificateList _
derive instance repGenericCertificateList :: Generic CertificateList _
instance showCertificateList :: Show CertificateList where show = genericShow
instance decodeCertificateList :: Decode CertificateList where decode = genericDecode options
instance encodeCertificateList :: Encode CertificateList where encode = genericEncode options



-- | <p>The specified certificate does not exist.</p>
newtype CertificateNotFoundException = CertificateNotFoundException Types.NoArguments
derive instance newtypeCertificateNotFoundException :: Newtype CertificateNotFoundException _
derive instance repGenericCertificateNotFoundException :: Generic CertificateNotFoundException _
instance showCertificateNotFoundException :: Show CertificateNotFoundException where show = genericShow
instance decodeCertificateNotFoundException :: Decode CertificateNotFoundException where decode = genericDecode options
instance encodeCertificateNotFoundException :: Encode CertificateNotFoundException where encode = genericEncode options



-- | <p>Information about a cipher used in a policy.</p>
newtype Cipher = Cipher 
  { "Name" :: NullOrUndefined (CipherName)
  , "Priority" :: NullOrUndefined (CipherPriority)
  }
derive instance newtypeCipher :: Newtype Cipher _
derive instance repGenericCipher :: Generic Cipher _
instance showCipher :: Show Cipher where show = genericShow
instance decodeCipher :: Decode Cipher where decode = genericDecode options
instance encodeCipher :: Encode Cipher where encode = genericEncode options

-- | Constructs Cipher from required parameters
newCipher :: Cipher
newCipher  = Cipher { "Name": (NullOrUndefined Nothing), "Priority": (NullOrUndefined Nothing) }

-- | Constructs Cipher's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCipher' :: ( { "Name" :: NullOrUndefined (CipherName) , "Priority" :: NullOrUndefined (CipherPriority) } -> {"Name" :: NullOrUndefined (CipherName) , "Priority" :: NullOrUndefined (CipherPriority) } ) -> Cipher
newCipher'  customize = (Cipher <<< customize) { "Name": (NullOrUndefined Nothing), "Priority": (NullOrUndefined Nothing) }



newtype CipherName = CipherName String
derive instance newtypeCipherName :: Newtype CipherName _
derive instance repGenericCipherName :: Generic CipherName _
instance showCipherName :: Show CipherName where show = genericShow
instance decodeCipherName :: Decode CipherName where decode = genericDecode options
instance encodeCipherName :: Encode CipherName where encode = genericEncode options



newtype CipherPriority = CipherPriority Int
derive instance newtypeCipherPriority :: Newtype CipherPriority _
derive instance repGenericCipherPriority :: Generic CipherPriority _
instance showCipherPriority :: Show CipherPriority where show = genericShow
instance decodeCipherPriority :: Decode CipherPriority where decode = genericDecode options
instance encodeCipherPriority :: Encode CipherPriority where encode = genericEncode options



newtype Ciphers = Ciphers (Array Cipher)
derive instance newtypeCiphers :: Newtype Ciphers _
derive instance repGenericCiphers :: Generic Ciphers _
instance showCiphers :: Show Ciphers where show = genericShow
instance decodeCiphers :: Decode Ciphers where decode = genericDecode options
instance encodeCiphers :: Encode Ciphers where encode = genericEncode options



newtype ConditionFieldName = ConditionFieldName String
derive instance newtypeConditionFieldName :: Newtype ConditionFieldName _
derive instance repGenericConditionFieldName :: Generic ConditionFieldName _
instance showConditionFieldName :: Show ConditionFieldName where show = genericShow
instance decodeConditionFieldName :: Decode ConditionFieldName where decode = genericDecode options
instance encodeConditionFieldName :: Encode ConditionFieldName where encode = genericEncode options



newtype CreateListenerInput = CreateListenerInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  , "Protocol" :: (ProtocolEnum)
  , "Port" :: (Port)
  , "SslPolicy" :: NullOrUndefined (SslPolicyName)
  , "Certificates" :: NullOrUndefined (CertificateList)
  , "DefaultActions" :: (Actions)
  }
derive instance newtypeCreateListenerInput :: Newtype CreateListenerInput _
derive instance repGenericCreateListenerInput :: Generic CreateListenerInput _
instance showCreateListenerInput :: Show CreateListenerInput where show = genericShow
instance decodeCreateListenerInput :: Decode CreateListenerInput where decode = genericDecode options
instance encodeCreateListenerInput :: Encode CreateListenerInput where encode = genericEncode options

-- | Constructs CreateListenerInput from required parameters
newCreateListenerInput :: Actions -> LoadBalancerArn -> Port -> ProtocolEnum -> CreateListenerInput
newCreateListenerInput _DefaultActions _LoadBalancerArn _Port _Protocol = CreateListenerInput { "DefaultActions": _DefaultActions, "LoadBalancerArn": _LoadBalancerArn, "Port": _Port, "Protocol": _Protocol, "Certificates": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }

-- | Constructs CreateListenerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateListenerInput' :: Actions -> LoadBalancerArn -> Port -> ProtocolEnum -> ( { "LoadBalancerArn" :: (LoadBalancerArn) , "Protocol" :: (ProtocolEnum) , "Port" :: (Port) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "Certificates" :: NullOrUndefined (CertificateList) , "DefaultActions" :: (Actions) } -> {"LoadBalancerArn" :: (LoadBalancerArn) , "Protocol" :: (ProtocolEnum) , "Port" :: (Port) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "Certificates" :: NullOrUndefined (CertificateList) , "DefaultActions" :: (Actions) } ) -> CreateListenerInput
newCreateListenerInput' _DefaultActions _LoadBalancerArn _Port _Protocol customize = (CreateListenerInput <<< customize) { "DefaultActions": _DefaultActions, "LoadBalancerArn": _LoadBalancerArn, "Port": _Port, "Protocol": _Protocol, "Certificates": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }



newtype CreateListenerOutput = CreateListenerOutput 
  { "Listeners" :: NullOrUndefined (Listeners)
  }
derive instance newtypeCreateListenerOutput :: Newtype CreateListenerOutput _
derive instance repGenericCreateListenerOutput :: Generic CreateListenerOutput _
instance showCreateListenerOutput :: Show CreateListenerOutput where show = genericShow
instance decodeCreateListenerOutput :: Decode CreateListenerOutput where decode = genericDecode options
instance encodeCreateListenerOutput :: Encode CreateListenerOutput where encode = genericEncode options

-- | Constructs CreateListenerOutput from required parameters
newCreateListenerOutput :: CreateListenerOutput
newCreateListenerOutput  = CreateListenerOutput { "Listeners": (NullOrUndefined Nothing) }

-- | Constructs CreateListenerOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateListenerOutput' :: ( { "Listeners" :: NullOrUndefined (Listeners) } -> {"Listeners" :: NullOrUndefined (Listeners) } ) -> CreateListenerOutput
newCreateListenerOutput'  customize = (CreateListenerOutput <<< customize) { "Listeners": (NullOrUndefined Nothing) }



newtype CreateLoadBalancerInput = CreateLoadBalancerInput 
  { "Name" :: (LoadBalancerName)
  , "Subnets" :: NullOrUndefined (Subnets)
  , "SubnetMappings" :: NullOrUndefined (SubnetMappings)
  , "SecurityGroups" :: NullOrUndefined (SecurityGroups)
  , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum)
  , "Tags" :: NullOrUndefined (TagList)
  , "Type" :: NullOrUndefined (LoadBalancerTypeEnum)
  , "IpAddressType" :: NullOrUndefined (IpAddressType)
  }
derive instance newtypeCreateLoadBalancerInput :: Newtype CreateLoadBalancerInput _
derive instance repGenericCreateLoadBalancerInput :: Generic CreateLoadBalancerInput _
instance showCreateLoadBalancerInput :: Show CreateLoadBalancerInput where show = genericShow
instance decodeCreateLoadBalancerInput :: Decode CreateLoadBalancerInput where decode = genericDecode options
instance encodeCreateLoadBalancerInput :: Encode CreateLoadBalancerInput where encode = genericEncode options

-- | Constructs CreateLoadBalancerInput from required parameters
newCreateLoadBalancerInput :: LoadBalancerName -> CreateLoadBalancerInput
newCreateLoadBalancerInput _Name = CreateLoadBalancerInput { "Name": _Name, "IpAddressType": (NullOrUndefined Nothing), "Scheme": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "SubnetMappings": (NullOrUndefined Nothing), "Subnets": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs CreateLoadBalancerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoadBalancerInput' :: LoadBalancerName -> ( { "Name" :: (LoadBalancerName) , "Subnets" :: NullOrUndefined (Subnets) , "SubnetMappings" :: NullOrUndefined (SubnetMappings) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum) , "Tags" :: NullOrUndefined (TagList) , "Type" :: NullOrUndefined (LoadBalancerTypeEnum) , "IpAddressType" :: NullOrUndefined (IpAddressType) } -> {"Name" :: (LoadBalancerName) , "Subnets" :: NullOrUndefined (Subnets) , "SubnetMappings" :: NullOrUndefined (SubnetMappings) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum) , "Tags" :: NullOrUndefined (TagList) , "Type" :: NullOrUndefined (LoadBalancerTypeEnum) , "IpAddressType" :: NullOrUndefined (IpAddressType) } ) -> CreateLoadBalancerInput
newCreateLoadBalancerInput' _Name customize = (CreateLoadBalancerInput <<< customize) { "Name": _Name, "IpAddressType": (NullOrUndefined Nothing), "Scheme": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "SubnetMappings": (NullOrUndefined Nothing), "Subnets": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype CreateLoadBalancerOutput = CreateLoadBalancerOutput 
  { "LoadBalancers" :: NullOrUndefined (LoadBalancers)
  }
derive instance newtypeCreateLoadBalancerOutput :: Newtype CreateLoadBalancerOutput _
derive instance repGenericCreateLoadBalancerOutput :: Generic CreateLoadBalancerOutput _
instance showCreateLoadBalancerOutput :: Show CreateLoadBalancerOutput where show = genericShow
instance decodeCreateLoadBalancerOutput :: Decode CreateLoadBalancerOutput where decode = genericDecode options
instance encodeCreateLoadBalancerOutput :: Encode CreateLoadBalancerOutput where encode = genericEncode options

-- | Constructs CreateLoadBalancerOutput from required parameters
newCreateLoadBalancerOutput :: CreateLoadBalancerOutput
newCreateLoadBalancerOutput  = CreateLoadBalancerOutput { "LoadBalancers": (NullOrUndefined Nothing) }

-- | Constructs CreateLoadBalancerOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoadBalancerOutput' :: ( { "LoadBalancers" :: NullOrUndefined (LoadBalancers) } -> {"LoadBalancers" :: NullOrUndefined (LoadBalancers) } ) -> CreateLoadBalancerOutput
newCreateLoadBalancerOutput'  customize = (CreateLoadBalancerOutput <<< customize) { "LoadBalancers": (NullOrUndefined Nothing) }



newtype CreateRuleInput = CreateRuleInput 
  { "ListenerArn" :: (ListenerArn)
  , "Conditions" :: (RuleConditionList)
  , "Priority" :: (RulePriority)
  , "Actions" :: (Actions)
  }
derive instance newtypeCreateRuleInput :: Newtype CreateRuleInput _
derive instance repGenericCreateRuleInput :: Generic CreateRuleInput _
instance showCreateRuleInput :: Show CreateRuleInput where show = genericShow
instance decodeCreateRuleInput :: Decode CreateRuleInput where decode = genericDecode options
instance encodeCreateRuleInput :: Encode CreateRuleInput where encode = genericEncode options

-- | Constructs CreateRuleInput from required parameters
newCreateRuleInput :: Actions -> RuleConditionList -> ListenerArn -> RulePriority -> CreateRuleInput
newCreateRuleInput _Actions _Conditions _ListenerArn _Priority = CreateRuleInput { "Actions": _Actions, "Conditions": _Conditions, "ListenerArn": _ListenerArn, "Priority": _Priority }

-- | Constructs CreateRuleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleInput' :: Actions -> RuleConditionList -> ListenerArn -> RulePriority -> ( { "ListenerArn" :: (ListenerArn) , "Conditions" :: (RuleConditionList) , "Priority" :: (RulePriority) , "Actions" :: (Actions) } -> {"ListenerArn" :: (ListenerArn) , "Conditions" :: (RuleConditionList) , "Priority" :: (RulePriority) , "Actions" :: (Actions) } ) -> CreateRuleInput
newCreateRuleInput' _Actions _Conditions _ListenerArn _Priority customize = (CreateRuleInput <<< customize) { "Actions": _Actions, "Conditions": _Conditions, "ListenerArn": _ListenerArn, "Priority": _Priority }



newtype CreateRuleOutput = CreateRuleOutput 
  { "Rules" :: NullOrUndefined (Rules)
  }
derive instance newtypeCreateRuleOutput :: Newtype CreateRuleOutput _
derive instance repGenericCreateRuleOutput :: Generic CreateRuleOutput _
instance showCreateRuleOutput :: Show CreateRuleOutput where show = genericShow
instance decodeCreateRuleOutput :: Decode CreateRuleOutput where decode = genericDecode options
instance encodeCreateRuleOutput :: Encode CreateRuleOutput where encode = genericEncode options

-- | Constructs CreateRuleOutput from required parameters
newCreateRuleOutput :: CreateRuleOutput
newCreateRuleOutput  = CreateRuleOutput { "Rules": (NullOrUndefined Nothing) }

-- | Constructs CreateRuleOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleOutput' :: ( { "Rules" :: NullOrUndefined (Rules) } -> {"Rules" :: NullOrUndefined (Rules) } ) -> CreateRuleOutput
newCreateRuleOutput'  customize = (CreateRuleOutput <<< customize) { "Rules": (NullOrUndefined Nothing) }



newtype CreateTargetGroupInput = CreateTargetGroupInput 
  { "Name" :: (TargetGroupName)
  , "Protocol" :: (ProtocolEnum)
  , "Port" :: (Port)
  , "VpcId" :: (VpcId)
  , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum)
  , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort)
  , "HealthCheckPath" :: NullOrUndefined (Path)
  , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds)
  , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds)
  , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "Matcher" :: NullOrUndefined (Matcher)
  , "TargetType" :: NullOrUndefined (TargetTypeEnum)
  }
derive instance newtypeCreateTargetGroupInput :: Newtype CreateTargetGroupInput _
derive instance repGenericCreateTargetGroupInput :: Generic CreateTargetGroupInput _
instance showCreateTargetGroupInput :: Show CreateTargetGroupInput where show = genericShow
instance decodeCreateTargetGroupInput :: Decode CreateTargetGroupInput where decode = genericDecode options
instance encodeCreateTargetGroupInput :: Encode CreateTargetGroupInput where encode = genericEncode options

-- | Constructs CreateTargetGroupInput from required parameters
newCreateTargetGroupInput :: TargetGroupName -> Port -> ProtocolEnum -> VpcId -> CreateTargetGroupInput
newCreateTargetGroupInput _Name _Port _Protocol _VpcId = CreateTargetGroupInput { "Name": _Name, "Port": _Port, "Protocol": _Protocol, "VpcId": _VpcId, "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing) }

-- | Constructs CreateTargetGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTargetGroupInput' :: TargetGroupName -> Port -> ProtocolEnum -> VpcId -> ( { "Name" :: (TargetGroupName) , "Protocol" :: (ProtocolEnum) , "Port" :: (Port) , "VpcId" :: (VpcId) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckPath" :: NullOrUndefined (Path) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "Matcher" :: NullOrUndefined (Matcher) , "TargetType" :: NullOrUndefined (TargetTypeEnum) } -> {"Name" :: (TargetGroupName) , "Protocol" :: (ProtocolEnum) , "Port" :: (Port) , "VpcId" :: (VpcId) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckPath" :: NullOrUndefined (Path) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "Matcher" :: NullOrUndefined (Matcher) , "TargetType" :: NullOrUndefined (TargetTypeEnum) } ) -> CreateTargetGroupInput
newCreateTargetGroupInput' _Name _Port _Protocol _VpcId customize = (CreateTargetGroupInput <<< customize) { "Name": _Name, "Port": _Port, "Protocol": _Protocol, "VpcId": _VpcId, "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing) }



newtype CreateTargetGroupOutput = CreateTargetGroupOutput 
  { "TargetGroups" :: NullOrUndefined (TargetGroups)
  }
derive instance newtypeCreateTargetGroupOutput :: Newtype CreateTargetGroupOutput _
derive instance repGenericCreateTargetGroupOutput :: Generic CreateTargetGroupOutput _
instance showCreateTargetGroupOutput :: Show CreateTargetGroupOutput where show = genericShow
instance decodeCreateTargetGroupOutput :: Decode CreateTargetGroupOutput where decode = genericDecode options
instance encodeCreateTargetGroupOutput :: Encode CreateTargetGroupOutput where encode = genericEncode options

-- | Constructs CreateTargetGroupOutput from required parameters
newCreateTargetGroupOutput :: CreateTargetGroupOutput
newCreateTargetGroupOutput  = CreateTargetGroupOutput { "TargetGroups": (NullOrUndefined Nothing) }

-- | Constructs CreateTargetGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTargetGroupOutput' :: ( { "TargetGroups" :: NullOrUndefined (TargetGroups) } -> {"TargetGroups" :: NullOrUndefined (TargetGroups) } ) -> CreateTargetGroupOutput
newCreateTargetGroupOutput'  customize = (CreateTargetGroupOutput <<< customize) { "TargetGroups": (NullOrUndefined Nothing) }



newtype CreatedTime = CreatedTime Types.Timestamp
derive instance newtypeCreatedTime :: Newtype CreatedTime _
derive instance repGenericCreatedTime :: Generic CreatedTime _
instance showCreatedTime :: Show CreatedTime where show = genericShow
instance decodeCreatedTime :: Decode CreatedTime where decode = genericDecode options
instance encodeCreatedTime :: Encode CreatedTime where encode = genericEncode options



newtype DNSName = DNSName String
derive instance newtypeDNSName :: Newtype DNSName _
derive instance repGenericDNSName :: Generic DNSName _
instance showDNSName :: Show DNSName where show = genericShow
instance decodeDNSName :: Decode DNSName where decode = genericDecode options
instance encodeDNSName :: Encode DNSName where encode = genericEncode options



newtype Default = Default Boolean
derive instance newtypeDefault :: Newtype Default _
derive instance repGenericDefault :: Generic Default _
instance showDefault :: Show Default where show = genericShow
instance decodeDefault :: Decode Default where decode = genericDecode options
instance encodeDefault :: Encode Default where encode = genericEncode options



newtype DeleteListenerInput = DeleteListenerInput 
  { "ListenerArn" :: (ListenerArn)
  }
derive instance newtypeDeleteListenerInput :: Newtype DeleteListenerInput _
derive instance repGenericDeleteListenerInput :: Generic DeleteListenerInput _
instance showDeleteListenerInput :: Show DeleteListenerInput where show = genericShow
instance decodeDeleteListenerInput :: Decode DeleteListenerInput where decode = genericDecode options
instance encodeDeleteListenerInput :: Encode DeleteListenerInput where encode = genericEncode options

-- | Constructs DeleteListenerInput from required parameters
newDeleteListenerInput :: ListenerArn -> DeleteListenerInput
newDeleteListenerInput _ListenerArn = DeleteListenerInput { "ListenerArn": _ListenerArn }

-- | Constructs DeleteListenerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteListenerInput' :: ListenerArn -> ( { "ListenerArn" :: (ListenerArn) } -> {"ListenerArn" :: (ListenerArn) } ) -> DeleteListenerInput
newDeleteListenerInput' _ListenerArn customize = (DeleteListenerInput <<< customize) { "ListenerArn": _ListenerArn }



newtype DeleteListenerOutput = DeleteListenerOutput Types.NoArguments
derive instance newtypeDeleteListenerOutput :: Newtype DeleteListenerOutput _
derive instance repGenericDeleteListenerOutput :: Generic DeleteListenerOutput _
instance showDeleteListenerOutput :: Show DeleteListenerOutput where show = genericShow
instance decodeDeleteListenerOutput :: Decode DeleteListenerOutput where decode = genericDecode options
instance encodeDeleteListenerOutput :: Encode DeleteListenerOutput where encode = genericEncode options



newtype DeleteLoadBalancerInput = DeleteLoadBalancerInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  }
derive instance newtypeDeleteLoadBalancerInput :: Newtype DeleteLoadBalancerInput _
derive instance repGenericDeleteLoadBalancerInput :: Generic DeleteLoadBalancerInput _
instance showDeleteLoadBalancerInput :: Show DeleteLoadBalancerInput where show = genericShow
instance decodeDeleteLoadBalancerInput :: Decode DeleteLoadBalancerInput where decode = genericDecode options
instance encodeDeleteLoadBalancerInput :: Encode DeleteLoadBalancerInput where encode = genericEncode options

-- | Constructs DeleteLoadBalancerInput from required parameters
newDeleteLoadBalancerInput :: LoadBalancerArn -> DeleteLoadBalancerInput
newDeleteLoadBalancerInput _LoadBalancerArn = DeleteLoadBalancerInput { "LoadBalancerArn": _LoadBalancerArn }

-- | Constructs DeleteLoadBalancerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLoadBalancerInput' :: LoadBalancerArn -> ( { "LoadBalancerArn" :: (LoadBalancerArn) } -> {"LoadBalancerArn" :: (LoadBalancerArn) } ) -> DeleteLoadBalancerInput
newDeleteLoadBalancerInput' _LoadBalancerArn customize = (DeleteLoadBalancerInput <<< customize) { "LoadBalancerArn": _LoadBalancerArn }



newtype DeleteLoadBalancerOutput = DeleteLoadBalancerOutput Types.NoArguments
derive instance newtypeDeleteLoadBalancerOutput :: Newtype DeleteLoadBalancerOutput _
derive instance repGenericDeleteLoadBalancerOutput :: Generic DeleteLoadBalancerOutput _
instance showDeleteLoadBalancerOutput :: Show DeleteLoadBalancerOutput where show = genericShow
instance decodeDeleteLoadBalancerOutput :: Decode DeleteLoadBalancerOutput where decode = genericDecode options
instance encodeDeleteLoadBalancerOutput :: Encode DeleteLoadBalancerOutput where encode = genericEncode options



newtype DeleteRuleInput = DeleteRuleInput 
  { "RuleArn" :: (RuleArn)
  }
derive instance newtypeDeleteRuleInput :: Newtype DeleteRuleInput _
derive instance repGenericDeleteRuleInput :: Generic DeleteRuleInput _
instance showDeleteRuleInput :: Show DeleteRuleInput where show = genericShow
instance decodeDeleteRuleInput :: Decode DeleteRuleInput where decode = genericDecode options
instance encodeDeleteRuleInput :: Encode DeleteRuleInput where encode = genericEncode options

-- | Constructs DeleteRuleInput from required parameters
newDeleteRuleInput :: RuleArn -> DeleteRuleInput
newDeleteRuleInput _RuleArn = DeleteRuleInput { "RuleArn": _RuleArn }

-- | Constructs DeleteRuleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRuleInput' :: RuleArn -> ( { "RuleArn" :: (RuleArn) } -> {"RuleArn" :: (RuleArn) } ) -> DeleteRuleInput
newDeleteRuleInput' _RuleArn customize = (DeleteRuleInput <<< customize) { "RuleArn": _RuleArn }



newtype DeleteRuleOutput = DeleteRuleOutput Types.NoArguments
derive instance newtypeDeleteRuleOutput :: Newtype DeleteRuleOutput _
derive instance repGenericDeleteRuleOutput :: Generic DeleteRuleOutput _
instance showDeleteRuleOutput :: Show DeleteRuleOutput where show = genericShow
instance decodeDeleteRuleOutput :: Decode DeleteRuleOutput where decode = genericDecode options
instance encodeDeleteRuleOutput :: Encode DeleteRuleOutput where encode = genericEncode options



newtype DeleteTargetGroupInput = DeleteTargetGroupInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  }
derive instance newtypeDeleteTargetGroupInput :: Newtype DeleteTargetGroupInput _
derive instance repGenericDeleteTargetGroupInput :: Generic DeleteTargetGroupInput _
instance showDeleteTargetGroupInput :: Show DeleteTargetGroupInput where show = genericShow
instance decodeDeleteTargetGroupInput :: Decode DeleteTargetGroupInput where decode = genericDecode options
instance encodeDeleteTargetGroupInput :: Encode DeleteTargetGroupInput where encode = genericEncode options

-- | Constructs DeleteTargetGroupInput from required parameters
newDeleteTargetGroupInput :: TargetGroupArn -> DeleteTargetGroupInput
newDeleteTargetGroupInput _TargetGroupArn = DeleteTargetGroupInput { "TargetGroupArn": _TargetGroupArn }

-- | Constructs DeleteTargetGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTargetGroupInput' :: TargetGroupArn -> ( { "TargetGroupArn" :: (TargetGroupArn) } -> {"TargetGroupArn" :: (TargetGroupArn) } ) -> DeleteTargetGroupInput
newDeleteTargetGroupInput' _TargetGroupArn customize = (DeleteTargetGroupInput <<< customize) { "TargetGroupArn": _TargetGroupArn }



newtype DeleteTargetGroupOutput = DeleteTargetGroupOutput Types.NoArguments
derive instance newtypeDeleteTargetGroupOutput :: Newtype DeleteTargetGroupOutput _
derive instance repGenericDeleteTargetGroupOutput :: Generic DeleteTargetGroupOutput _
instance showDeleteTargetGroupOutput :: Show DeleteTargetGroupOutput where show = genericShow
instance decodeDeleteTargetGroupOutput :: Decode DeleteTargetGroupOutput where decode = genericDecode options
instance encodeDeleteTargetGroupOutput :: Encode DeleteTargetGroupOutput where encode = genericEncode options



newtype DeregisterTargetsInput = DeregisterTargetsInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  , "Targets" :: (TargetDescriptions)
  }
derive instance newtypeDeregisterTargetsInput :: Newtype DeregisterTargetsInput _
derive instance repGenericDeregisterTargetsInput :: Generic DeregisterTargetsInput _
instance showDeregisterTargetsInput :: Show DeregisterTargetsInput where show = genericShow
instance decodeDeregisterTargetsInput :: Decode DeregisterTargetsInput where decode = genericDecode options
instance encodeDeregisterTargetsInput :: Encode DeregisterTargetsInput where encode = genericEncode options

-- | Constructs DeregisterTargetsInput from required parameters
newDeregisterTargetsInput :: TargetGroupArn -> TargetDescriptions -> DeregisterTargetsInput
newDeregisterTargetsInput _TargetGroupArn _Targets = DeregisterTargetsInput { "TargetGroupArn": _TargetGroupArn, "Targets": _Targets }

-- | Constructs DeregisterTargetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterTargetsInput' :: TargetGroupArn -> TargetDescriptions -> ( { "TargetGroupArn" :: (TargetGroupArn) , "Targets" :: (TargetDescriptions) } -> {"TargetGroupArn" :: (TargetGroupArn) , "Targets" :: (TargetDescriptions) } ) -> DeregisterTargetsInput
newDeregisterTargetsInput' _TargetGroupArn _Targets customize = (DeregisterTargetsInput <<< customize) { "TargetGroupArn": _TargetGroupArn, "Targets": _Targets }



newtype DeregisterTargetsOutput = DeregisterTargetsOutput Types.NoArguments
derive instance newtypeDeregisterTargetsOutput :: Newtype DeregisterTargetsOutput _
derive instance repGenericDeregisterTargetsOutput :: Generic DeregisterTargetsOutput _
instance showDeregisterTargetsOutput :: Show DeregisterTargetsOutput where show = genericShow
instance decodeDeregisterTargetsOutput :: Decode DeregisterTargetsOutput where decode = genericDecode options
instance encodeDeregisterTargetsOutput :: Encode DeregisterTargetsOutput where encode = genericEncode options



newtype DescribeAccountLimitsInput = DescribeAccountLimitsInput 
  { "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeAccountLimitsInput :: Newtype DescribeAccountLimitsInput _
derive instance repGenericDescribeAccountLimitsInput :: Generic DescribeAccountLimitsInput _
instance showDescribeAccountLimitsInput :: Show DescribeAccountLimitsInput where show = genericShow
instance decodeDescribeAccountLimitsInput :: Decode DescribeAccountLimitsInput where decode = genericDecode options
instance encodeDescribeAccountLimitsInput :: Encode DescribeAccountLimitsInput where encode = genericEncode options

-- | Constructs DescribeAccountLimitsInput from required parameters
newDescribeAccountLimitsInput :: DescribeAccountLimitsInput
newDescribeAccountLimitsInput  = DescribeAccountLimitsInput { "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }

-- | Constructs DescribeAccountLimitsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountLimitsInput' :: ( { "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeAccountLimitsInput
newDescribeAccountLimitsInput'  customize = (DescribeAccountLimitsInput <<< customize) { "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }



newtype DescribeAccountLimitsOutput = DescribeAccountLimitsOutput 
  { "Limits" :: NullOrUndefined (Limits)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeAccountLimitsOutput :: Newtype DescribeAccountLimitsOutput _
derive instance repGenericDescribeAccountLimitsOutput :: Generic DescribeAccountLimitsOutput _
instance showDescribeAccountLimitsOutput :: Show DescribeAccountLimitsOutput where show = genericShow
instance decodeDescribeAccountLimitsOutput :: Decode DescribeAccountLimitsOutput where decode = genericDecode options
instance encodeDescribeAccountLimitsOutput :: Encode DescribeAccountLimitsOutput where encode = genericEncode options

-- | Constructs DescribeAccountLimitsOutput from required parameters
newDescribeAccountLimitsOutput :: DescribeAccountLimitsOutput
newDescribeAccountLimitsOutput  = DescribeAccountLimitsOutput { "Limits": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs DescribeAccountLimitsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountLimitsOutput' :: ( { "Limits" :: NullOrUndefined (Limits) , "NextMarker" :: NullOrUndefined (Marker) } -> {"Limits" :: NullOrUndefined (Limits) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeAccountLimitsOutput
newDescribeAccountLimitsOutput'  customize = (DescribeAccountLimitsOutput <<< customize) { "Limits": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype DescribeListenerCertificatesInput = DescribeListenerCertificatesInput 
  { "ListenerArn" :: (ListenerArn)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeListenerCertificatesInput :: Newtype DescribeListenerCertificatesInput _
derive instance repGenericDescribeListenerCertificatesInput :: Generic DescribeListenerCertificatesInput _
instance showDescribeListenerCertificatesInput :: Show DescribeListenerCertificatesInput where show = genericShow
instance decodeDescribeListenerCertificatesInput :: Decode DescribeListenerCertificatesInput where decode = genericDecode options
instance encodeDescribeListenerCertificatesInput :: Encode DescribeListenerCertificatesInput where encode = genericEncode options

-- | Constructs DescribeListenerCertificatesInput from required parameters
newDescribeListenerCertificatesInput :: ListenerArn -> DescribeListenerCertificatesInput
newDescribeListenerCertificatesInput _ListenerArn = DescribeListenerCertificatesInput { "ListenerArn": _ListenerArn, "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }

-- | Constructs DescribeListenerCertificatesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeListenerCertificatesInput' :: ListenerArn -> ( { "ListenerArn" :: (ListenerArn) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"ListenerArn" :: (ListenerArn) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeListenerCertificatesInput
newDescribeListenerCertificatesInput' _ListenerArn customize = (DescribeListenerCertificatesInput <<< customize) { "ListenerArn": _ListenerArn, "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }



newtype DescribeListenerCertificatesOutput = DescribeListenerCertificatesOutput 
  { "Certificates" :: NullOrUndefined (CertificateList)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeListenerCertificatesOutput :: Newtype DescribeListenerCertificatesOutput _
derive instance repGenericDescribeListenerCertificatesOutput :: Generic DescribeListenerCertificatesOutput _
instance showDescribeListenerCertificatesOutput :: Show DescribeListenerCertificatesOutput where show = genericShow
instance decodeDescribeListenerCertificatesOutput :: Decode DescribeListenerCertificatesOutput where decode = genericDecode options
instance encodeDescribeListenerCertificatesOutput :: Encode DescribeListenerCertificatesOutput where encode = genericEncode options

-- | Constructs DescribeListenerCertificatesOutput from required parameters
newDescribeListenerCertificatesOutput :: DescribeListenerCertificatesOutput
newDescribeListenerCertificatesOutput  = DescribeListenerCertificatesOutput { "Certificates": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs DescribeListenerCertificatesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeListenerCertificatesOutput' :: ( { "Certificates" :: NullOrUndefined (CertificateList) , "NextMarker" :: NullOrUndefined (Marker) } -> {"Certificates" :: NullOrUndefined (CertificateList) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeListenerCertificatesOutput
newDescribeListenerCertificatesOutput'  customize = (DescribeListenerCertificatesOutput <<< customize) { "Certificates": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype DescribeListenersInput = DescribeListenersInput 
  { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn)
  , "ListenerArns" :: NullOrUndefined (ListenerArns)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeListenersInput :: Newtype DescribeListenersInput _
derive instance repGenericDescribeListenersInput :: Generic DescribeListenersInput _
instance showDescribeListenersInput :: Show DescribeListenersInput where show = genericShow
instance decodeDescribeListenersInput :: Decode DescribeListenersInput where decode = genericDecode options
instance encodeDescribeListenersInput :: Encode DescribeListenersInput where encode = genericEncode options

-- | Constructs DescribeListenersInput from required parameters
newDescribeListenersInput :: DescribeListenersInput
newDescribeListenersInput  = DescribeListenersInput { "ListenerArns": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }

-- | Constructs DescribeListenersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeListenersInput' :: ( { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "ListenerArns" :: NullOrUndefined (ListenerArns) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "ListenerArns" :: NullOrUndefined (ListenerArns) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeListenersInput
newDescribeListenersInput'  customize = (DescribeListenersInput <<< customize) { "ListenerArns": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }



newtype DescribeListenersOutput = DescribeListenersOutput 
  { "Listeners" :: NullOrUndefined (Listeners)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeListenersOutput :: Newtype DescribeListenersOutput _
derive instance repGenericDescribeListenersOutput :: Generic DescribeListenersOutput _
instance showDescribeListenersOutput :: Show DescribeListenersOutput where show = genericShow
instance decodeDescribeListenersOutput :: Decode DescribeListenersOutput where decode = genericDecode options
instance encodeDescribeListenersOutput :: Encode DescribeListenersOutput where encode = genericEncode options

-- | Constructs DescribeListenersOutput from required parameters
newDescribeListenersOutput :: DescribeListenersOutput
newDescribeListenersOutput  = DescribeListenersOutput { "Listeners": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs DescribeListenersOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeListenersOutput' :: ( { "Listeners" :: NullOrUndefined (Listeners) , "NextMarker" :: NullOrUndefined (Marker) } -> {"Listeners" :: NullOrUndefined (Listeners) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeListenersOutput
newDescribeListenersOutput'  customize = (DescribeListenersOutput <<< customize) { "Listeners": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype DescribeLoadBalancerAttributesInput = DescribeLoadBalancerAttributesInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  }
derive instance newtypeDescribeLoadBalancerAttributesInput :: Newtype DescribeLoadBalancerAttributesInput _
derive instance repGenericDescribeLoadBalancerAttributesInput :: Generic DescribeLoadBalancerAttributesInput _
instance showDescribeLoadBalancerAttributesInput :: Show DescribeLoadBalancerAttributesInput where show = genericShow
instance decodeDescribeLoadBalancerAttributesInput :: Decode DescribeLoadBalancerAttributesInput where decode = genericDecode options
instance encodeDescribeLoadBalancerAttributesInput :: Encode DescribeLoadBalancerAttributesInput where encode = genericEncode options

-- | Constructs DescribeLoadBalancerAttributesInput from required parameters
newDescribeLoadBalancerAttributesInput :: LoadBalancerArn -> DescribeLoadBalancerAttributesInput
newDescribeLoadBalancerAttributesInput _LoadBalancerArn = DescribeLoadBalancerAttributesInput { "LoadBalancerArn": _LoadBalancerArn }

-- | Constructs DescribeLoadBalancerAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBalancerAttributesInput' :: LoadBalancerArn -> ( { "LoadBalancerArn" :: (LoadBalancerArn) } -> {"LoadBalancerArn" :: (LoadBalancerArn) } ) -> DescribeLoadBalancerAttributesInput
newDescribeLoadBalancerAttributesInput' _LoadBalancerArn customize = (DescribeLoadBalancerAttributesInput <<< customize) { "LoadBalancerArn": _LoadBalancerArn }



newtype DescribeLoadBalancerAttributesOutput = DescribeLoadBalancerAttributesOutput 
  { "Attributes" :: NullOrUndefined (LoadBalancerAttributes)
  }
derive instance newtypeDescribeLoadBalancerAttributesOutput :: Newtype DescribeLoadBalancerAttributesOutput _
derive instance repGenericDescribeLoadBalancerAttributesOutput :: Generic DescribeLoadBalancerAttributesOutput _
instance showDescribeLoadBalancerAttributesOutput :: Show DescribeLoadBalancerAttributesOutput where show = genericShow
instance decodeDescribeLoadBalancerAttributesOutput :: Decode DescribeLoadBalancerAttributesOutput where decode = genericDecode options
instance encodeDescribeLoadBalancerAttributesOutput :: Encode DescribeLoadBalancerAttributesOutput where encode = genericEncode options

-- | Constructs DescribeLoadBalancerAttributesOutput from required parameters
newDescribeLoadBalancerAttributesOutput :: DescribeLoadBalancerAttributesOutput
newDescribeLoadBalancerAttributesOutput  = DescribeLoadBalancerAttributesOutput { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs DescribeLoadBalancerAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBalancerAttributesOutput' :: ( { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) } -> {"Attributes" :: NullOrUndefined (LoadBalancerAttributes) } ) -> DescribeLoadBalancerAttributesOutput
newDescribeLoadBalancerAttributesOutput'  customize = (DescribeLoadBalancerAttributesOutput <<< customize) { "Attributes": (NullOrUndefined Nothing) }



newtype DescribeLoadBalancersInput = DescribeLoadBalancersInput 
  { "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns)
  , "Names" :: NullOrUndefined (LoadBalancerNames)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeLoadBalancersInput :: Newtype DescribeLoadBalancersInput _
derive instance repGenericDescribeLoadBalancersInput :: Generic DescribeLoadBalancersInput _
instance showDescribeLoadBalancersInput :: Show DescribeLoadBalancersInput where show = genericShow
instance decodeDescribeLoadBalancersInput :: Decode DescribeLoadBalancersInput where decode = genericDecode options
instance encodeDescribeLoadBalancersInput :: Encode DescribeLoadBalancersInput where encode = genericEncode options

-- | Constructs DescribeLoadBalancersInput from required parameters
newDescribeLoadBalancersInput :: DescribeLoadBalancersInput
newDescribeLoadBalancersInput  = DescribeLoadBalancersInput { "LoadBalancerArns": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }

-- | Constructs DescribeLoadBalancersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBalancersInput' :: ( { "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns) , "Names" :: NullOrUndefined (LoadBalancerNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns) , "Names" :: NullOrUndefined (LoadBalancerNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeLoadBalancersInput
newDescribeLoadBalancersInput'  customize = (DescribeLoadBalancersInput <<< customize) { "LoadBalancerArns": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }



newtype DescribeLoadBalancersOutput = DescribeLoadBalancersOutput 
  { "LoadBalancers" :: NullOrUndefined (LoadBalancers)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeLoadBalancersOutput :: Newtype DescribeLoadBalancersOutput _
derive instance repGenericDescribeLoadBalancersOutput :: Generic DescribeLoadBalancersOutput _
instance showDescribeLoadBalancersOutput :: Show DescribeLoadBalancersOutput where show = genericShow
instance decodeDescribeLoadBalancersOutput :: Decode DescribeLoadBalancersOutput where decode = genericDecode options
instance encodeDescribeLoadBalancersOutput :: Encode DescribeLoadBalancersOutput where encode = genericEncode options

-- | Constructs DescribeLoadBalancersOutput from required parameters
newDescribeLoadBalancersOutput :: DescribeLoadBalancersOutput
newDescribeLoadBalancersOutput  = DescribeLoadBalancersOutput { "LoadBalancers": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs DescribeLoadBalancersOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBalancersOutput' :: ( { "LoadBalancers" :: NullOrUndefined (LoadBalancers) , "NextMarker" :: NullOrUndefined (Marker) } -> {"LoadBalancers" :: NullOrUndefined (LoadBalancers) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeLoadBalancersOutput
newDescribeLoadBalancersOutput'  customize = (DescribeLoadBalancersOutput <<< customize) { "LoadBalancers": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype DescribeRulesInput = DescribeRulesInput 
  { "ListenerArn" :: NullOrUndefined (ListenerArn)
  , "RuleArns" :: NullOrUndefined (RuleArns)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeRulesInput :: Newtype DescribeRulesInput _
derive instance repGenericDescribeRulesInput :: Generic DescribeRulesInput _
instance showDescribeRulesInput :: Show DescribeRulesInput where show = genericShow
instance decodeDescribeRulesInput :: Decode DescribeRulesInput where decode = genericDecode options
instance encodeDescribeRulesInput :: Encode DescribeRulesInput where encode = genericEncode options

-- | Constructs DescribeRulesInput from required parameters
newDescribeRulesInput :: DescribeRulesInput
newDescribeRulesInput  = DescribeRulesInput { "ListenerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing), "RuleArns": (NullOrUndefined Nothing) }

-- | Constructs DescribeRulesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRulesInput' :: ( { "ListenerArn" :: NullOrUndefined (ListenerArn) , "RuleArns" :: NullOrUndefined (RuleArns) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"ListenerArn" :: NullOrUndefined (ListenerArn) , "RuleArns" :: NullOrUndefined (RuleArns) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeRulesInput
newDescribeRulesInput'  customize = (DescribeRulesInput <<< customize) { "ListenerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing), "RuleArns": (NullOrUndefined Nothing) }



newtype DescribeRulesOutput = DescribeRulesOutput 
  { "Rules" :: NullOrUndefined (Rules)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeRulesOutput :: Newtype DescribeRulesOutput _
derive instance repGenericDescribeRulesOutput :: Generic DescribeRulesOutput _
instance showDescribeRulesOutput :: Show DescribeRulesOutput where show = genericShow
instance decodeDescribeRulesOutput :: Decode DescribeRulesOutput where decode = genericDecode options
instance encodeDescribeRulesOutput :: Encode DescribeRulesOutput where encode = genericEncode options

-- | Constructs DescribeRulesOutput from required parameters
newDescribeRulesOutput :: DescribeRulesOutput
newDescribeRulesOutput  = DescribeRulesOutput { "NextMarker": (NullOrUndefined Nothing), "Rules": (NullOrUndefined Nothing) }

-- | Constructs DescribeRulesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRulesOutput' :: ( { "Rules" :: NullOrUndefined (Rules) , "NextMarker" :: NullOrUndefined (Marker) } -> {"Rules" :: NullOrUndefined (Rules) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeRulesOutput
newDescribeRulesOutput'  customize = (DescribeRulesOutput <<< customize) { "NextMarker": (NullOrUndefined Nothing), "Rules": (NullOrUndefined Nothing) }



newtype DescribeSSLPoliciesInput = DescribeSSLPoliciesInput 
  { "Names" :: NullOrUndefined (SslPolicyNames)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeSSLPoliciesInput :: Newtype DescribeSSLPoliciesInput _
derive instance repGenericDescribeSSLPoliciesInput :: Generic DescribeSSLPoliciesInput _
instance showDescribeSSLPoliciesInput :: Show DescribeSSLPoliciesInput where show = genericShow
instance decodeDescribeSSLPoliciesInput :: Decode DescribeSSLPoliciesInput where decode = genericDecode options
instance encodeDescribeSSLPoliciesInput :: Encode DescribeSSLPoliciesInput where encode = genericEncode options

-- | Constructs DescribeSSLPoliciesInput from required parameters
newDescribeSSLPoliciesInput :: DescribeSSLPoliciesInput
newDescribeSSLPoliciesInput  = DescribeSSLPoliciesInput { "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }

-- | Constructs DescribeSSLPoliciesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSSLPoliciesInput' :: ( { "Names" :: NullOrUndefined (SslPolicyNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"Names" :: NullOrUndefined (SslPolicyNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeSSLPoliciesInput
newDescribeSSLPoliciesInput'  customize = (DescribeSSLPoliciesInput <<< customize) { "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing) }



newtype DescribeSSLPoliciesOutput = DescribeSSLPoliciesOutput 
  { "SslPolicies" :: NullOrUndefined (SslPolicies)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeSSLPoliciesOutput :: Newtype DescribeSSLPoliciesOutput _
derive instance repGenericDescribeSSLPoliciesOutput :: Generic DescribeSSLPoliciesOutput _
instance showDescribeSSLPoliciesOutput :: Show DescribeSSLPoliciesOutput where show = genericShow
instance decodeDescribeSSLPoliciesOutput :: Decode DescribeSSLPoliciesOutput where decode = genericDecode options
instance encodeDescribeSSLPoliciesOutput :: Encode DescribeSSLPoliciesOutput where encode = genericEncode options

-- | Constructs DescribeSSLPoliciesOutput from required parameters
newDescribeSSLPoliciesOutput :: DescribeSSLPoliciesOutput
newDescribeSSLPoliciesOutput  = DescribeSSLPoliciesOutput { "NextMarker": (NullOrUndefined Nothing), "SslPolicies": (NullOrUndefined Nothing) }

-- | Constructs DescribeSSLPoliciesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSSLPoliciesOutput' :: ( { "SslPolicies" :: NullOrUndefined (SslPolicies) , "NextMarker" :: NullOrUndefined (Marker) } -> {"SslPolicies" :: NullOrUndefined (SslPolicies) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeSSLPoliciesOutput
newDescribeSSLPoliciesOutput'  customize = (DescribeSSLPoliciesOutput <<< customize) { "NextMarker": (NullOrUndefined Nothing), "SslPolicies": (NullOrUndefined Nothing) }



newtype DescribeTagsInput = DescribeTagsInput 
  { "ResourceArns" :: (ResourceArns)
  }
derive instance newtypeDescribeTagsInput :: Newtype DescribeTagsInput _
derive instance repGenericDescribeTagsInput :: Generic DescribeTagsInput _
instance showDescribeTagsInput :: Show DescribeTagsInput where show = genericShow
instance decodeDescribeTagsInput :: Decode DescribeTagsInput where decode = genericDecode options
instance encodeDescribeTagsInput :: Encode DescribeTagsInput where encode = genericEncode options

-- | Constructs DescribeTagsInput from required parameters
newDescribeTagsInput :: ResourceArns -> DescribeTagsInput
newDescribeTagsInput _ResourceArns = DescribeTagsInput { "ResourceArns": _ResourceArns }

-- | Constructs DescribeTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsInput' :: ResourceArns -> ( { "ResourceArns" :: (ResourceArns) } -> {"ResourceArns" :: (ResourceArns) } ) -> DescribeTagsInput
newDescribeTagsInput' _ResourceArns customize = (DescribeTagsInput <<< customize) { "ResourceArns": _ResourceArns }



newtype DescribeTagsOutput = DescribeTagsOutput 
  { "TagDescriptions" :: NullOrUndefined (TagDescriptions)
  }
derive instance newtypeDescribeTagsOutput :: Newtype DescribeTagsOutput _
derive instance repGenericDescribeTagsOutput :: Generic DescribeTagsOutput _
instance showDescribeTagsOutput :: Show DescribeTagsOutput where show = genericShow
instance decodeDescribeTagsOutput :: Decode DescribeTagsOutput where decode = genericDecode options
instance encodeDescribeTagsOutput :: Encode DescribeTagsOutput where encode = genericEncode options

-- | Constructs DescribeTagsOutput from required parameters
newDescribeTagsOutput :: DescribeTagsOutput
newDescribeTagsOutput  = DescribeTagsOutput { "TagDescriptions": (NullOrUndefined Nothing) }

-- | Constructs DescribeTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsOutput' :: ( { "TagDescriptions" :: NullOrUndefined (TagDescriptions) } -> {"TagDescriptions" :: NullOrUndefined (TagDescriptions) } ) -> DescribeTagsOutput
newDescribeTagsOutput'  customize = (DescribeTagsOutput <<< customize) { "TagDescriptions": (NullOrUndefined Nothing) }



newtype DescribeTargetGroupAttributesInput = DescribeTargetGroupAttributesInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  }
derive instance newtypeDescribeTargetGroupAttributesInput :: Newtype DescribeTargetGroupAttributesInput _
derive instance repGenericDescribeTargetGroupAttributesInput :: Generic DescribeTargetGroupAttributesInput _
instance showDescribeTargetGroupAttributesInput :: Show DescribeTargetGroupAttributesInput where show = genericShow
instance decodeDescribeTargetGroupAttributesInput :: Decode DescribeTargetGroupAttributesInput where decode = genericDecode options
instance encodeDescribeTargetGroupAttributesInput :: Encode DescribeTargetGroupAttributesInput where encode = genericEncode options

-- | Constructs DescribeTargetGroupAttributesInput from required parameters
newDescribeTargetGroupAttributesInput :: TargetGroupArn -> DescribeTargetGroupAttributesInput
newDescribeTargetGroupAttributesInput _TargetGroupArn = DescribeTargetGroupAttributesInput { "TargetGroupArn": _TargetGroupArn }

-- | Constructs DescribeTargetGroupAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetGroupAttributesInput' :: TargetGroupArn -> ( { "TargetGroupArn" :: (TargetGroupArn) } -> {"TargetGroupArn" :: (TargetGroupArn) } ) -> DescribeTargetGroupAttributesInput
newDescribeTargetGroupAttributesInput' _TargetGroupArn customize = (DescribeTargetGroupAttributesInput <<< customize) { "TargetGroupArn": _TargetGroupArn }



newtype DescribeTargetGroupAttributesOutput = DescribeTargetGroupAttributesOutput 
  { "Attributes" :: NullOrUndefined (TargetGroupAttributes)
  }
derive instance newtypeDescribeTargetGroupAttributesOutput :: Newtype DescribeTargetGroupAttributesOutput _
derive instance repGenericDescribeTargetGroupAttributesOutput :: Generic DescribeTargetGroupAttributesOutput _
instance showDescribeTargetGroupAttributesOutput :: Show DescribeTargetGroupAttributesOutput where show = genericShow
instance decodeDescribeTargetGroupAttributesOutput :: Decode DescribeTargetGroupAttributesOutput where decode = genericDecode options
instance encodeDescribeTargetGroupAttributesOutput :: Encode DescribeTargetGroupAttributesOutput where encode = genericEncode options

-- | Constructs DescribeTargetGroupAttributesOutput from required parameters
newDescribeTargetGroupAttributesOutput :: DescribeTargetGroupAttributesOutput
newDescribeTargetGroupAttributesOutput  = DescribeTargetGroupAttributesOutput { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs DescribeTargetGroupAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetGroupAttributesOutput' :: ( { "Attributes" :: NullOrUndefined (TargetGroupAttributes) } -> {"Attributes" :: NullOrUndefined (TargetGroupAttributes) } ) -> DescribeTargetGroupAttributesOutput
newDescribeTargetGroupAttributesOutput'  customize = (DescribeTargetGroupAttributesOutput <<< customize) { "Attributes": (NullOrUndefined Nothing) }



newtype DescribeTargetGroupsInput = DescribeTargetGroupsInput 
  { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn)
  , "TargetGroupArns" :: NullOrUndefined (TargetGroupArns)
  , "Names" :: NullOrUndefined (TargetGroupNames)
  , "Marker" :: NullOrUndefined (Marker)
  , "PageSize" :: NullOrUndefined (PageSize)
  }
derive instance newtypeDescribeTargetGroupsInput :: Newtype DescribeTargetGroupsInput _
derive instance repGenericDescribeTargetGroupsInput :: Generic DescribeTargetGroupsInput _
instance showDescribeTargetGroupsInput :: Show DescribeTargetGroupsInput where show = genericShow
instance decodeDescribeTargetGroupsInput :: Decode DescribeTargetGroupsInput where decode = genericDecode options
instance encodeDescribeTargetGroupsInput :: Encode DescribeTargetGroupsInput where encode = genericEncode options

-- | Constructs DescribeTargetGroupsInput from required parameters
newDescribeTargetGroupsInput :: DescribeTargetGroupsInput
newDescribeTargetGroupsInput  = DescribeTargetGroupsInput { "LoadBalancerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing), "TargetGroupArns": (NullOrUndefined Nothing) }

-- | Constructs DescribeTargetGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetGroupsInput' :: ( { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "TargetGroupArns" :: NullOrUndefined (TargetGroupArns) , "Names" :: NullOrUndefined (TargetGroupNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } -> {"LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "TargetGroupArns" :: NullOrUndefined (TargetGroupArns) , "Names" :: NullOrUndefined (TargetGroupNames) , "Marker" :: NullOrUndefined (Marker) , "PageSize" :: NullOrUndefined (PageSize) } ) -> DescribeTargetGroupsInput
newDescribeTargetGroupsInput'  customize = (DescribeTargetGroupsInput <<< customize) { "LoadBalancerArn": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "PageSize": (NullOrUndefined Nothing), "TargetGroupArns": (NullOrUndefined Nothing) }



newtype DescribeTargetGroupsOutput = DescribeTargetGroupsOutput 
  { "TargetGroups" :: NullOrUndefined (TargetGroups)
  , "NextMarker" :: NullOrUndefined (Marker)
  }
derive instance newtypeDescribeTargetGroupsOutput :: Newtype DescribeTargetGroupsOutput _
derive instance repGenericDescribeTargetGroupsOutput :: Generic DescribeTargetGroupsOutput _
instance showDescribeTargetGroupsOutput :: Show DescribeTargetGroupsOutput where show = genericShow
instance decodeDescribeTargetGroupsOutput :: Decode DescribeTargetGroupsOutput where decode = genericDecode options
instance encodeDescribeTargetGroupsOutput :: Encode DescribeTargetGroupsOutput where encode = genericEncode options

-- | Constructs DescribeTargetGroupsOutput from required parameters
newDescribeTargetGroupsOutput :: DescribeTargetGroupsOutput
newDescribeTargetGroupsOutput  = DescribeTargetGroupsOutput { "NextMarker": (NullOrUndefined Nothing), "TargetGroups": (NullOrUndefined Nothing) }

-- | Constructs DescribeTargetGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetGroupsOutput' :: ( { "TargetGroups" :: NullOrUndefined (TargetGroups) , "NextMarker" :: NullOrUndefined (Marker) } -> {"TargetGroups" :: NullOrUndefined (TargetGroups) , "NextMarker" :: NullOrUndefined (Marker) } ) -> DescribeTargetGroupsOutput
newDescribeTargetGroupsOutput'  customize = (DescribeTargetGroupsOutput <<< customize) { "NextMarker": (NullOrUndefined Nothing), "TargetGroups": (NullOrUndefined Nothing) }



newtype DescribeTargetHealthInput = DescribeTargetHealthInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  , "Targets" :: NullOrUndefined (TargetDescriptions)
  }
derive instance newtypeDescribeTargetHealthInput :: Newtype DescribeTargetHealthInput _
derive instance repGenericDescribeTargetHealthInput :: Generic DescribeTargetHealthInput _
instance showDescribeTargetHealthInput :: Show DescribeTargetHealthInput where show = genericShow
instance decodeDescribeTargetHealthInput :: Decode DescribeTargetHealthInput where decode = genericDecode options
instance encodeDescribeTargetHealthInput :: Encode DescribeTargetHealthInput where encode = genericEncode options

-- | Constructs DescribeTargetHealthInput from required parameters
newDescribeTargetHealthInput :: TargetGroupArn -> DescribeTargetHealthInput
newDescribeTargetHealthInput _TargetGroupArn = DescribeTargetHealthInput { "TargetGroupArn": _TargetGroupArn, "Targets": (NullOrUndefined Nothing) }

-- | Constructs DescribeTargetHealthInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetHealthInput' :: TargetGroupArn -> ( { "TargetGroupArn" :: (TargetGroupArn) , "Targets" :: NullOrUndefined (TargetDescriptions) } -> {"TargetGroupArn" :: (TargetGroupArn) , "Targets" :: NullOrUndefined (TargetDescriptions) } ) -> DescribeTargetHealthInput
newDescribeTargetHealthInput' _TargetGroupArn customize = (DescribeTargetHealthInput <<< customize) { "TargetGroupArn": _TargetGroupArn, "Targets": (NullOrUndefined Nothing) }



newtype DescribeTargetHealthOutput = DescribeTargetHealthOutput 
  { "TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions)
  }
derive instance newtypeDescribeTargetHealthOutput :: Newtype DescribeTargetHealthOutput _
derive instance repGenericDescribeTargetHealthOutput :: Generic DescribeTargetHealthOutput _
instance showDescribeTargetHealthOutput :: Show DescribeTargetHealthOutput where show = genericShow
instance decodeDescribeTargetHealthOutput :: Decode DescribeTargetHealthOutput where decode = genericDecode options
instance encodeDescribeTargetHealthOutput :: Encode DescribeTargetHealthOutput where encode = genericEncode options

-- | Constructs DescribeTargetHealthOutput from required parameters
newDescribeTargetHealthOutput :: DescribeTargetHealthOutput
newDescribeTargetHealthOutput  = DescribeTargetHealthOutput { "TargetHealthDescriptions": (NullOrUndefined Nothing) }

-- | Constructs DescribeTargetHealthOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTargetHealthOutput' :: ( { "TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions) } -> {"TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions) } ) -> DescribeTargetHealthOutput
newDescribeTargetHealthOutput'  customize = (DescribeTargetHealthOutput <<< customize) { "TargetHealthDescriptions": (NullOrUndefined Nothing) }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



-- | <p>A listener with the specified port already exists.</p>
newtype DuplicateListenerException = DuplicateListenerException Types.NoArguments
derive instance newtypeDuplicateListenerException :: Newtype DuplicateListenerException _
derive instance repGenericDuplicateListenerException :: Generic DuplicateListenerException _
instance showDuplicateListenerException :: Show DuplicateListenerException where show = genericShow
instance decodeDuplicateListenerException :: Decode DuplicateListenerException where decode = genericDecode options
instance encodeDuplicateListenerException :: Encode DuplicateListenerException where encode = genericEncode options



-- | <p>A load balancer with the specified name already exists.</p>
newtype DuplicateLoadBalancerNameException = DuplicateLoadBalancerNameException Types.NoArguments
derive instance newtypeDuplicateLoadBalancerNameException :: Newtype DuplicateLoadBalancerNameException _
derive instance repGenericDuplicateLoadBalancerNameException :: Generic DuplicateLoadBalancerNameException _
instance showDuplicateLoadBalancerNameException :: Show DuplicateLoadBalancerNameException where show = genericShow
instance decodeDuplicateLoadBalancerNameException :: Decode DuplicateLoadBalancerNameException where decode = genericDecode options
instance encodeDuplicateLoadBalancerNameException :: Encode DuplicateLoadBalancerNameException where encode = genericEncode options



-- | <p>A tag key was specified more than once.</p>
newtype DuplicateTagKeysException = DuplicateTagKeysException Types.NoArguments
derive instance newtypeDuplicateTagKeysException :: Newtype DuplicateTagKeysException _
derive instance repGenericDuplicateTagKeysException :: Generic DuplicateTagKeysException _
instance showDuplicateTagKeysException :: Show DuplicateTagKeysException where show = genericShow
instance decodeDuplicateTagKeysException :: Decode DuplicateTagKeysException where decode = genericDecode options
instance encodeDuplicateTagKeysException :: Encode DuplicateTagKeysException where encode = genericEncode options



-- | <p>A target group with the specified name already exists.</p>
newtype DuplicateTargetGroupNameException = DuplicateTargetGroupNameException Types.NoArguments
derive instance newtypeDuplicateTargetGroupNameException :: Newtype DuplicateTargetGroupNameException _
derive instance repGenericDuplicateTargetGroupNameException :: Generic DuplicateTargetGroupNameException _
instance showDuplicateTargetGroupNameException :: Show DuplicateTargetGroupNameException where show = genericShow
instance decodeDuplicateTargetGroupNameException :: Decode DuplicateTargetGroupNameException where decode = genericDecode options
instance encodeDuplicateTargetGroupNameException :: Encode DuplicateTargetGroupNameException where encode = genericEncode options



newtype HealthCheckIntervalSeconds = HealthCheckIntervalSeconds Int
derive instance newtypeHealthCheckIntervalSeconds :: Newtype HealthCheckIntervalSeconds _
derive instance repGenericHealthCheckIntervalSeconds :: Generic HealthCheckIntervalSeconds _
instance showHealthCheckIntervalSeconds :: Show HealthCheckIntervalSeconds where show = genericShow
instance decodeHealthCheckIntervalSeconds :: Decode HealthCheckIntervalSeconds where decode = genericDecode options
instance encodeHealthCheckIntervalSeconds :: Encode HealthCheckIntervalSeconds where encode = genericEncode options



newtype HealthCheckPort = HealthCheckPort String
derive instance newtypeHealthCheckPort :: Newtype HealthCheckPort _
derive instance repGenericHealthCheckPort :: Generic HealthCheckPort _
instance showHealthCheckPort :: Show HealthCheckPort where show = genericShow
instance decodeHealthCheckPort :: Decode HealthCheckPort where decode = genericDecode options
instance encodeHealthCheckPort :: Encode HealthCheckPort where encode = genericEncode options



newtype HealthCheckThresholdCount = HealthCheckThresholdCount Int
derive instance newtypeHealthCheckThresholdCount :: Newtype HealthCheckThresholdCount _
derive instance repGenericHealthCheckThresholdCount :: Generic HealthCheckThresholdCount _
instance showHealthCheckThresholdCount :: Show HealthCheckThresholdCount where show = genericShow
instance decodeHealthCheckThresholdCount :: Decode HealthCheckThresholdCount where decode = genericDecode options
instance encodeHealthCheckThresholdCount :: Encode HealthCheckThresholdCount where encode = genericEncode options



newtype HealthCheckTimeoutSeconds = HealthCheckTimeoutSeconds Int
derive instance newtypeHealthCheckTimeoutSeconds :: Newtype HealthCheckTimeoutSeconds _
derive instance repGenericHealthCheckTimeoutSeconds :: Generic HealthCheckTimeoutSeconds _
instance showHealthCheckTimeoutSeconds :: Show HealthCheckTimeoutSeconds where show = genericShow
instance decodeHealthCheckTimeoutSeconds :: Decode HealthCheckTimeoutSeconds where decode = genericDecode options
instance encodeHealthCheckTimeoutSeconds :: Encode HealthCheckTimeoutSeconds where encode = genericEncode options



-- | <p>The health of the specified targets could not be retrieved due to an internal error.</p>
newtype HealthUnavailableException = HealthUnavailableException Types.NoArguments
derive instance newtypeHealthUnavailableException :: Newtype HealthUnavailableException _
derive instance repGenericHealthUnavailableException :: Generic HealthUnavailableException _
instance showHealthUnavailableException :: Show HealthUnavailableException where show = genericShow
instance decodeHealthUnavailableException :: Decode HealthUnavailableException where decode = genericDecode options
instance encodeHealthUnavailableException :: Encode HealthUnavailableException where encode = genericEncode options



newtype HttpCode = HttpCode String
derive instance newtypeHttpCode :: Newtype HttpCode _
derive instance repGenericHttpCode :: Generic HttpCode _
instance showHttpCode :: Show HttpCode where show = genericShow
instance decodeHttpCode :: Decode HttpCode where decode = genericDecode options
instance encodeHttpCode :: Encode HttpCode where encode = genericEncode options



-- | <p>The specified configuration is not valid with this protocol.</p>
newtype IncompatibleProtocolsException = IncompatibleProtocolsException Types.NoArguments
derive instance newtypeIncompatibleProtocolsException :: Newtype IncompatibleProtocolsException _
derive instance repGenericIncompatibleProtocolsException :: Generic IncompatibleProtocolsException _
instance showIncompatibleProtocolsException :: Show IncompatibleProtocolsException where show = genericShow
instance decodeIncompatibleProtocolsException :: Decode IncompatibleProtocolsException where decode = genericDecode options
instance encodeIncompatibleProtocolsException :: Encode IncompatibleProtocolsException where encode = genericEncode options



-- | <p>The requested configuration is not valid.</p>
newtype InvalidConfigurationRequestException = InvalidConfigurationRequestException Types.NoArguments
derive instance newtypeInvalidConfigurationRequestException :: Newtype InvalidConfigurationRequestException _
derive instance repGenericInvalidConfigurationRequestException :: Generic InvalidConfigurationRequestException _
instance showInvalidConfigurationRequestException :: Show InvalidConfigurationRequestException where show = genericShow
instance decodeInvalidConfigurationRequestException :: Decode InvalidConfigurationRequestException where decode = genericDecode options
instance encodeInvalidConfigurationRequestException :: Encode InvalidConfigurationRequestException where encode = genericEncode options



-- | <p>The requested scheme is not valid.</p>
newtype InvalidSchemeException = InvalidSchemeException Types.NoArguments
derive instance newtypeInvalidSchemeException :: Newtype InvalidSchemeException _
derive instance repGenericInvalidSchemeException :: Generic InvalidSchemeException _
instance showInvalidSchemeException :: Show InvalidSchemeException where show = genericShow
instance decodeInvalidSchemeException :: Decode InvalidSchemeException where decode = genericDecode options
instance encodeInvalidSchemeException :: Encode InvalidSchemeException where encode = genericEncode options



-- | <p>The specified security group does not exist.</p>
newtype InvalidSecurityGroupException = InvalidSecurityGroupException Types.NoArguments
derive instance newtypeInvalidSecurityGroupException :: Newtype InvalidSecurityGroupException _
derive instance repGenericInvalidSecurityGroupException :: Generic InvalidSecurityGroupException _
instance showInvalidSecurityGroupException :: Show InvalidSecurityGroupException where show = genericShow
instance decodeInvalidSecurityGroupException :: Decode InvalidSecurityGroupException where decode = genericDecode options
instance encodeInvalidSecurityGroupException :: Encode InvalidSecurityGroupException where encode = genericEncode options



-- | <p>The specified subnet is out of available addresses.</p>
newtype InvalidSubnetException = InvalidSubnetException Types.NoArguments
derive instance newtypeInvalidSubnetException :: Newtype InvalidSubnetException _
derive instance repGenericInvalidSubnetException :: Generic InvalidSubnetException _
instance showInvalidSubnetException :: Show InvalidSubnetException where show = genericShow
instance decodeInvalidSubnetException :: Decode InvalidSubnetException where decode = genericDecode options
instance encodeInvalidSubnetException :: Encode InvalidSubnetException where encode = genericEncode options



-- | <p>The specified target does not exist, is not in the same VPC as the target group, or has an unsupported instance type.</p>
newtype InvalidTargetException = InvalidTargetException Types.NoArguments
derive instance newtypeInvalidTargetException :: Newtype InvalidTargetException _
derive instance repGenericInvalidTargetException :: Generic InvalidTargetException _
instance showInvalidTargetException :: Show InvalidTargetException where show = genericShow
instance decodeInvalidTargetException :: Decode InvalidTargetException where decode = genericDecode options
instance encodeInvalidTargetException :: Encode InvalidTargetException where encode = genericEncode options



newtype IpAddress = IpAddress String
derive instance newtypeIpAddress :: Newtype IpAddress _
derive instance repGenericIpAddress :: Generic IpAddress _
instance showIpAddress :: Show IpAddress where show = genericShow
instance decodeIpAddress :: Decode IpAddress where decode = genericDecode options
instance encodeIpAddress :: Encode IpAddress where encode = genericEncode options



newtype IpAddressType = IpAddressType String
derive instance newtypeIpAddressType :: Newtype IpAddressType _
derive instance repGenericIpAddressType :: Generic IpAddressType _
instance showIpAddressType :: Show IpAddressType where show = genericShow
instance decodeIpAddressType :: Decode IpAddressType where decode = genericDecode options
instance encodeIpAddressType :: Encode IpAddressType where encode = genericEncode options



newtype IsDefault = IsDefault Boolean
derive instance newtypeIsDefault :: Newtype IsDefault _
derive instance repGenericIsDefault :: Generic IsDefault _
instance showIsDefault :: Show IsDefault where show = genericShow
instance decodeIsDefault :: Decode IsDefault where decode = genericDecode options
instance encodeIsDefault :: Encode IsDefault where encode = genericEncode options



-- | <p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>
newtype Limit = Limit 
  { "Name" :: NullOrUndefined (Name)
  , "Max" :: NullOrUndefined (Max)
  }
derive instance newtypeLimit :: Newtype Limit _
derive instance repGenericLimit :: Generic Limit _
instance showLimit :: Show Limit where show = genericShow
instance decodeLimit :: Decode Limit where decode = genericDecode options
instance encodeLimit :: Encode Limit where encode = genericEncode options

-- | Constructs Limit from required parameters
newLimit :: Limit
newLimit  = Limit { "Max": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs Limit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimit' :: ( { "Name" :: NullOrUndefined (Name) , "Max" :: NullOrUndefined (Max) } -> {"Name" :: NullOrUndefined (Name) , "Max" :: NullOrUndefined (Max) } ) -> Limit
newLimit'  customize = (Limit <<< customize) { "Max": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype Limits = Limits (Array Limit)
derive instance newtypeLimits :: Newtype Limits _
derive instance repGenericLimits :: Generic Limits _
instance showLimits :: Show Limits where show = genericShow
instance decodeLimits :: Decode Limits where decode = genericDecode options
instance encodeLimits :: Encode Limits where encode = genericEncode options



newtype ListOfString = ListOfString (Array StringValue)
derive instance newtypeListOfString :: Newtype ListOfString _
derive instance repGenericListOfString :: Generic ListOfString _
instance showListOfString :: Show ListOfString where show = genericShow
instance decodeListOfString :: Decode ListOfString where decode = genericDecode options
instance encodeListOfString :: Encode ListOfString where encode = genericEncode options



-- | <p>Information about a listener.</p>
newtype Listener = Listener 
  { "ListenerArn" :: NullOrUndefined (ListenerArn)
  , "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn)
  , "Port" :: NullOrUndefined (Port)
  , "Protocol" :: NullOrUndefined (ProtocolEnum)
  , "Certificates" :: NullOrUndefined (CertificateList)
  , "SslPolicy" :: NullOrUndefined (SslPolicyName)
  , "DefaultActions" :: NullOrUndefined (Actions)
  }
derive instance newtypeListener :: Newtype Listener _
derive instance repGenericListener :: Generic Listener _
instance showListener :: Show Listener where show = genericShow
instance decodeListener :: Decode Listener where decode = genericDecode options
instance encodeListener :: Encode Listener where encode = genericEncode options

-- | Constructs Listener from required parameters
newListener :: Listener
newListener  = Listener { "Certificates": (NullOrUndefined Nothing), "DefaultActions": (NullOrUndefined Nothing), "ListenerArn": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }

-- | Constructs Listener's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListener' :: ( { "ListenerArn" :: NullOrUndefined (ListenerArn) , "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "Port" :: NullOrUndefined (Port) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "Certificates" :: NullOrUndefined (CertificateList) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "DefaultActions" :: NullOrUndefined (Actions) } -> {"ListenerArn" :: NullOrUndefined (ListenerArn) , "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "Port" :: NullOrUndefined (Port) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "Certificates" :: NullOrUndefined (CertificateList) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "DefaultActions" :: NullOrUndefined (Actions) } ) -> Listener
newListener'  customize = (Listener <<< customize) { "Certificates": (NullOrUndefined Nothing), "DefaultActions": (NullOrUndefined Nothing), "ListenerArn": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }



newtype ListenerArn = ListenerArn String
derive instance newtypeListenerArn :: Newtype ListenerArn _
derive instance repGenericListenerArn :: Generic ListenerArn _
instance showListenerArn :: Show ListenerArn where show = genericShow
instance decodeListenerArn :: Decode ListenerArn where decode = genericDecode options
instance encodeListenerArn :: Encode ListenerArn where encode = genericEncode options



newtype ListenerArns = ListenerArns (Array ListenerArn)
derive instance newtypeListenerArns :: Newtype ListenerArns _
derive instance repGenericListenerArns :: Generic ListenerArns _
instance showListenerArns :: Show ListenerArns where show = genericShow
instance decodeListenerArns :: Decode ListenerArns where decode = genericDecode options
instance encodeListenerArns :: Encode ListenerArns where encode = genericEncode options



-- | <p>The specified listener does not exist.</p>
newtype ListenerNotFoundException = ListenerNotFoundException Types.NoArguments
derive instance newtypeListenerNotFoundException :: Newtype ListenerNotFoundException _
derive instance repGenericListenerNotFoundException :: Generic ListenerNotFoundException _
instance showListenerNotFoundException :: Show ListenerNotFoundException where show = genericShow
instance decodeListenerNotFoundException :: Decode ListenerNotFoundException where decode = genericDecode options
instance encodeListenerNotFoundException :: Encode ListenerNotFoundException where encode = genericEncode options



newtype Listeners = Listeners (Array Listener)
derive instance newtypeListeners :: Newtype Listeners _
derive instance repGenericListeners :: Generic Listeners _
instance showListeners :: Show Listeners where show = genericShow
instance decodeListeners :: Decode Listeners where decode = genericDecode options
instance encodeListeners :: Encode Listeners where encode = genericEncode options



-- | <p>Information about a load balancer.</p>
newtype LoadBalancer = LoadBalancer 
  { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn)
  , "DNSName" :: NullOrUndefined (DNSName)
  , "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId)
  , "CreatedTime" :: NullOrUndefined (CreatedTime)
  , "LoadBalancerName" :: NullOrUndefined (LoadBalancerName)
  , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum)
  , "VpcId" :: NullOrUndefined (VpcId)
  , "State" :: NullOrUndefined (LoadBalancerState)
  , "Type" :: NullOrUndefined (LoadBalancerTypeEnum)
  , "AvailabilityZones" :: NullOrUndefined (AvailabilityZones)
  , "SecurityGroups" :: NullOrUndefined (SecurityGroups)
  , "IpAddressType" :: NullOrUndefined (IpAddressType)
  }
derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive instance repGenericLoadBalancer :: Generic LoadBalancer _
instance showLoadBalancer :: Show LoadBalancer where show = genericShow
instance decodeLoadBalancer :: Decode LoadBalancer where decode = genericDecode options
instance encodeLoadBalancer :: Encode LoadBalancer where encode = genericEncode options

-- | Constructs LoadBalancer from required parameters
newLoadBalancer :: LoadBalancer
newLoadBalancer  = LoadBalancer { "AvailabilityZones": (NullOrUndefined Nothing), "CanonicalHostedZoneId": (NullOrUndefined Nothing), "CreatedTime": (NullOrUndefined Nothing), "DNSName": (NullOrUndefined Nothing), "IpAddressType": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "LoadBalancerName": (NullOrUndefined Nothing), "Scheme": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancer' :: ( { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "DNSName" :: NullOrUndefined (DNSName) , "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId) , "CreatedTime" :: NullOrUndefined (CreatedTime) , "LoadBalancerName" :: NullOrUndefined (LoadBalancerName) , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum) , "VpcId" :: NullOrUndefined (VpcId) , "State" :: NullOrUndefined (LoadBalancerState) , "Type" :: NullOrUndefined (LoadBalancerTypeEnum) , "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "IpAddressType" :: NullOrUndefined (IpAddressType) } -> {"LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn) , "DNSName" :: NullOrUndefined (DNSName) , "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId) , "CreatedTime" :: NullOrUndefined (CreatedTime) , "LoadBalancerName" :: NullOrUndefined (LoadBalancerName) , "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum) , "VpcId" :: NullOrUndefined (VpcId) , "State" :: NullOrUndefined (LoadBalancerState) , "Type" :: NullOrUndefined (LoadBalancerTypeEnum) , "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "IpAddressType" :: NullOrUndefined (IpAddressType) } ) -> LoadBalancer
newLoadBalancer'  customize = (LoadBalancer <<< customize) { "AvailabilityZones": (NullOrUndefined Nothing), "CanonicalHostedZoneId": (NullOrUndefined Nothing), "CreatedTime": (NullOrUndefined Nothing), "DNSName": (NullOrUndefined Nothing), "IpAddressType": (NullOrUndefined Nothing), "LoadBalancerArn": (NullOrUndefined Nothing), "LoadBalancerName": (NullOrUndefined Nothing), "Scheme": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



-- | <p>Information about a static IP address for a load balancer.</p>
newtype LoadBalancerAddress = LoadBalancerAddress 
  { "IpAddress" :: NullOrUndefined (IpAddress)
  , "AllocationId" :: NullOrUndefined (AllocationId)
  }
derive instance newtypeLoadBalancerAddress :: Newtype LoadBalancerAddress _
derive instance repGenericLoadBalancerAddress :: Generic LoadBalancerAddress _
instance showLoadBalancerAddress :: Show LoadBalancerAddress where show = genericShow
instance decodeLoadBalancerAddress :: Decode LoadBalancerAddress where decode = genericDecode options
instance encodeLoadBalancerAddress :: Encode LoadBalancerAddress where encode = genericEncode options

-- | Constructs LoadBalancerAddress from required parameters
newLoadBalancerAddress :: LoadBalancerAddress
newLoadBalancerAddress  = LoadBalancerAddress { "AllocationId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancerAddress's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancerAddress' :: ( { "IpAddress" :: NullOrUndefined (IpAddress) , "AllocationId" :: NullOrUndefined (AllocationId) } -> {"IpAddress" :: NullOrUndefined (IpAddress) , "AllocationId" :: NullOrUndefined (AllocationId) } ) -> LoadBalancerAddress
newLoadBalancerAddress'  customize = (LoadBalancerAddress <<< customize) { "AllocationId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing) }



newtype LoadBalancerAddresses = LoadBalancerAddresses (Array LoadBalancerAddress)
derive instance newtypeLoadBalancerAddresses :: Newtype LoadBalancerAddresses _
derive instance repGenericLoadBalancerAddresses :: Generic LoadBalancerAddresses _
instance showLoadBalancerAddresses :: Show LoadBalancerAddresses where show = genericShow
instance decodeLoadBalancerAddresses :: Decode LoadBalancerAddresses where decode = genericDecode options
instance encodeLoadBalancerAddresses :: Encode LoadBalancerAddresses where encode = genericEncode options



newtype LoadBalancerArn = LoadBalancerArn String
derive instance newtypeLoadBalancerArn :: Newtype LoadBalancerArn _
derive instance repGenericLoadBalancerArn :: Generic LoadBalancerArn _
instance showLoadBalancerArn :: Show LoadBalancerArn where show = genericShow
instance decodeLoadBalancerArn :: Decode LoadBalancerArn where decode = genericDecode options
instance encodeLoadBalancerArn :: Encode LoadBalancerArn where encode = genericEncode options



newtype LoadBalancerArns = LoadBalancerArns (Array LoadBalancerArn)
derive instance newtypeLoadBalancerArns :: Newtype LoadBalancerArns _
derive instance repGenericLoadBalancerArns :: Generic LoadBalancerArns _
instance showLoadBalancerArns :: Show LoadBalancerArns where show = genericShow
instance decodeLoadBalancerArns :: Decode LoadBalancerArns where decode = genericDecode options
instance encodeLoadBalancerArns :: Encode LoadBalancerArns where encode = genericEncode options



-- | <p>Information about a load balancer attribute.</p>
newtype LoadBalancerAttribute = LoadBalancerAttribute 
  { "Key" :: NullOrUndefined (LoadBalancerAttributeKey)
  , "Value" :: NullOrUndefined (LoadBalancerAttributeValue)
  }
derive instance newtypeLoadBalancerAttribute :: Newtype LoadBalancerAttribute _
derive instance repGenericLoadBalancerAttribute :: Generic LoadBalancerAttribute _
instance showLoadBalancerAttribute :: Show LoadBalancerAttribute where show = genericShow
instance decodeLoadBalancerAttribute :: Decode LoadBalancerAttribute where decode = genericDecode options
instance encodeLoadBalancerAttribute :: Encode LoadBalancerAttribute where encode = genericEncode options

-- | Constructs LoadBalancerAttribute from required parameters
newLoadBalancerAttribute :: LoadBalancerAttribute
newLoadBalancerAttribute  = LoadBalancerAttribute { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancerAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancerAttribute' :: ( { "Key" :: NullOrUndefined (LoadBalancerAttributeKey) , "Value" :: NullOrUndefined (LoadBalancerAttributeValue) } -> {"Key" :: NullOrUndefined (LoadBalancerAttributeKey) , "Value" :: NullOrUndefined (LoadBalancerAttributeValue) } ) -> LoadBalancerAttribute
newLoadBalancerAttribute'  customize = (LoadBalancerAttribute <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype LoadBalancerAttributeKey = LoadBalancerAttributeKey String
derive instance newtypeLoadBalancerAttributeKey :: Newtype LoadBalancerAttributeKey _
derive instance repGenericLoadBalancerAttributeKey :: Generic LoadBalancerAttributeKey _
instance showLoadBalancerAttributeKey :: Show LoadBalancerAttributeKey where show = genericShow
instance decodeLoadBalancerAttributeKey :: Decode LoadBalancerAttributeKey where decode = genericDecode options
instance encodeLoadBalancerAttributeKey :: Encode LoadBalancerAttributeKey where encode = genericEncode options



newtype LoadBalancerAttributeValue = LoadBalancerAttributeValue String
derive instance newtypeLoadBalancerAttributeValue :: Newtype LoadBalancerAttributeValue _
derive instance repGenericLoadBalancerAttributeValue :: Generic LoadBalancerAttributeValue _
instance showLoadBalancerAttributeValue :: Show LoadBalancerAttributeValue where show = genericShow
instance decodeLoadBalancerAttributeValue :: Decode LoadBalancerAttributeValue where decode = genericDecode options
instance encodeLoadBalancerAttributeValue :: Encode LoadBalancerAttributeValue where encode = genericEncode options



newtype LoadBalancerAttributes = LoadBalancerAttributes (Array LoadBalancerAttribute)
derive instance newtypeLoadBalancerAttributes :: Newtype LoadBalancerAttributes _
derive instance repGenericLoadBalancerAttributes :: Generic LoadBalancerAttributes _
instance showLoadBalancerAttributes :: Show LoadBalancerAttributes where show = genericShow
instance decodeLoadBalancerAttributes :: Decode LoadBalancerAttributes where decode = genericDecode options
instance encodeLoadBalancerAttributes :: Encode LoadBalancerAttributes where encode = genericEncode options



newtype LoadBalancerName = LoadBalancerName String
derive instance newtypeLoadBalancerName :: Newtype LoadBalancerName _
derive instance repGenericLoadBalancerName :: Generic LoadBalancerName _
instance showLoadBalancerName :: Show LoadBalancerName where show = genericShow
instance decodeLoadBalancerName :: Decode LoadBalancerName where decode = genericDecode options
instance encodeLoadBalancerName :: Encode LoadBalancerName where encode = genericEncode options



newtype LoadBalancerNames = LoadBalancerNames (Array LoadBalancerName)
derive instance newtypeLoadBalancerNames :: Newtype LoadBalancerNames _
derive instance repGenericLoadBalancerNames :: Generic LoadBalancerNames _
instance showLoadBalancerNames :: Show LoadBalancerNames where show = genericShow
instance decodeLoadBalancerNames :: Decode LoadBalancerNames where decode = genericDecode options
instance encodeLoadBalancerNames :: Encode LoadBalancerNames where encode = genericEncode options



-- | <p>The specified load balancer does not exist.</p>
newtype LoadBalancerNotFoundException = LoadBalancerNotFoundException Types.NoArguments
derive instance newtypeLoadBalancerNotFoundException :: Newtype LoadBalancerNotFoundException _
derive instance repGenericLoadBalancerNotFoundException :: Generic LoadBalancerNotFoundException _
instance showLoadBalancerNotFoundException :: Show LoadBalancerNotFoundException where show = genericShow
instance decodeLoadBalancerNotFoundException :: Decode LoadBalancerNotFoundException where decode = genericDecode options
instance encodeLoadBalancerNotFoundException :: Encode LoadBalancerNotFoundException where encode = genericEncode options



newtype LoadBalancerSchemeEnum = LoadBalancerSchemeEnum String
derive instance newtypeLoadBalancerSchemeEnum :: Newtype LoadBalancerSchemeEnum _
derive instance repGenericLoadBalancerSchemeEnum :: Generic LoadBalancerSchemeEnum _
instance showLoadBalancerSchemeEnum :: Show LoadBalancerSchemeEnum where show = genericShow
instance decodeLoadBalancerSchemeEnum :: Decode LoadBalancerSchemeEnum where decode = genericDecode options
instance encodeLoadBalancerSchemeEnum :: Encode LoadBalancerSchemeEnum where encode = genericEncode options



-- | <p>Information about the state of the load balancer.</p>
newtype LoadBalancerState = LoadBalancerState 
  { "Code" :: NullOrUndefined (LoadBalancerStateEnum)
  , "Reason" :: NullOrUndefined (StateReason)
  }
derive instance newtypeLoadBalancerState :: Newtype LoadBalancerState _
derive instance repGenericLoadBalancerState :: Generic LoadBalancerState _
instance showLoadBalancerState :: Show LoadBalancerState where show = genericShow
instance decodeLoadBalancerState :: Decode LoadBalancerState where decode = genericDecode options
instance encodeLoadBalancerState :: Encode LoadBalancerState where encode = genericEncode options

-- | Constructs LoadBalancerState from required parameters
newLoadBalancerState :: LoadBalancerState
newLoadBalancerState  = LoadBalancerState { "Code": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancerState's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancerState' :: ( { "Code" :: NullOrUndefined (LoadBalancerStateEnum) , "Reason" :: NullOrUndefined (StateReason) } -> {"Code" :: NullOrUndefined (LoadBalancerStateEnum) , "Reason" :: NullOrUndefined (StateReason) } ) -> LoadBalancerState
newLoadBalancerState'  customize = (LoadBalancerState <<< customize) { "Code": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



newtype LoadBalancerStateEnum = LoadBalancerStateEnum String
derive instance newtypeLoadBalancerStateEnum :: Newtype LoadBalancerStateEnum _
derive instance repGenericLoadBalancerStateEnum :: Generic LoadBalancerStateEnum _
instance showLoadBalancerStateEnum :: Show LoadBalancerStateEnum where show = genericShow
instance decodeLoadBalancerStateEnum :: Decode LoadBalancerStateEnum where decode = genericDecode options
instance encodeLoadBalancerStateEnum :: Encode LoadBalancerStateEnum where encode = genericEncode options



newtype LoadBalancerTypeEnum = LoadBalancerTypeEnum String
derive instance newtypeLoadBalancerTypeEnum :: Newtype LoadBalancerTypeEnum _
derive instance repGenericLoadBalancerTypeEnum :: Generic LoadBalancerTypeEnum _
instance showLoadBalancerTypeEnum :: Show LoadBalancerTypeEnum where show = genericShow
instance decodeLoadBalancerTypeEnum :: Decode LoadBalancerTypeEnum where decode = genericDecode options
instance encodeLoadBalancerTypeEnum :: Encode LoadBalancerTypeEnum where encode = genericEncode options



newtype LoadBalancers = LoadBalancers (Array LoadBalancer)
derive instance newtypeLoadBalancers :: Newtype LoadBalancers _
derive instance repGenericLoadBalancers :: Generic LoadBalancers _
instance showLoadBalancers :: Show LoadBalancers where show = genericShow
instance decodeLoadBalancers :: Decode LoadBalancers where decode = genericDecode options
instance encodeLoadBalancers :: Encode LoadBalancers where encode = genericEncode options



newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where show = genericShow
instance decodeMarker :: Decode Marker where decode = genericDecode options
instance encodeMarker :: Encode Marker where encode = genericEncode options



-- | <p>Information to use when checking for a successful response from a target.</p>
newtype Matcher = Matcher 
  { "HttpCode" :: (HttpCode)
  }
derive instance newtypeMatcher :: Newtype Matcher _
derive instance repGenericMatcher :: Generic Matcher _
instance showMatcher :: Show Matcher where show = genericShow
instance decodeMatcher :: Decode Matcher where decode = genericDecode options
instance encodeMatcher :: Encode Matcher where encode = genericEncode options

-- | Constructs Matcher from required parameters
newMatcher :: HttpCode -> Matcher
newMatcher _HttpCode = Matcher { "HttpCode": _HttpCode }

-- | Constructs Matcher's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMatcher' :: HttpCode -> ( { "HttpCode" :: (HttpCode) } -> {"HttpCode" :: (HttpCode) } ) -> Matcher
newMatcher' _HttpCode customize = (Matcher <<< customize) { "HttpCode": _HttpCode }



newtype Max = Max String
derive instance newtypeMax :: Newtype Max _
derive instance repGenericMax :: Generic Max _
instance showMax :: Show Max where show = genericShow
instance decodeMax :: Decode Max where decode = genericDecode options
instance encodeMax :: Encode Max where encode = genericEncode options



newtype ModifyListenerInput = ModifyListenerInput 
  { "ListenerArn" :: (ListenerArn)
  , "Port" :: NullOrUndefined (Port)
  , "Protocol" :: NullOrUndefined (ProtocolEnum)
  , "SslPolicy" :: NullOrUndefined (SslPolicyName)
  , "Certificates" :: NullOrUndefined (CertificateList)
  , "DefaultActions" :: NullOrUndefined (Actions)
  }
derive instance newtypeModifyListenerInput :: Newtype ModifyListenerInput _
derive instance repGenericModifyListenerInput :: Generic ModifyListenerInput _
instance showModifyListenerInput :: Show ModifyListenerInput where show = genericShow
instance decodeModifyListenerInput :: Decode ModifyListenerInput where decode = genericDecode options
instance encodeModifyListenerInput :: Encode ModifyListenerInput where encode = genericEncode options

-- | Constructs ModifyListenerInput from required parameters
newModifyListenerInput :: ListenerArn -> ModifyListenerInput
newModifyListenerInput _ListenerArn = ModifyListenerInput { "ListenerArn": _ListenerArn, "Certificates": (NullOrUndefined Nothing), "DefaultActions": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }

-- | Constructs ModifyListenerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyListenerInput' :: ListenerArn -> ( { "ListenerArn" :: (ListenerArn) , "Port" :: NullOrUndefined (Port) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "Certificates" :: NullOrUndefined (CertificateList) , "DefaultActions" :: NullOrUndefined (Actions) } -> {"ListenerArn" :: (ListenerArn) , "Port" :: NullOrUndefined (Port) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "SslPolicy" :: NullOrUndefined (SslPolicyName) , "Certificates" :: NullOrUndefined (CertificateList) , "DefaultActions" :: NullOrUndefined (Actions) } ) -> ModifyListenerInput
newModifyListenerInput' _ListenerArn customize = (ModifyListenerInput <<< customize) { "ListenerArn": _ListenerArn, "Certificates": (NullOrUndefined Nothing), "DefaultActions": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SslPolicy": (NullOrUndefined Nothing) }



newtype ModifyListenerOutput = ModifyListenerOutput 
  { "Listeners" :: NullOrUndefined (Listeners)
  }
derive instance newtypeModifyListenerOutput :: Newtype ModifyListenerOutput _
derive instance repGenericModifyListenerOutput :: Generic ModifyListenerOutput _
instance showModifyListenerOutput :: Show ModifyListenerOutput where show = genericShow
instance decodeModifyListenerOutput :: Decode ModifyListenerOutput where decode = genericDecode options
instance encodeModifyListenerOutput :: Encode ModifyListenerOutput where encode = genericEncode options

-- | Constructs ModifyListenerOutput from required parameters
newModifyListenerOutput :: ModifyListenerOutput
newModifyListenerOutput  = ModifyListenerOutput { "Listeners": (NullOrUndefined Nothing) }

-- | Constructs ModifyListenerOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyListenerOutput' :: ( { "Listeners" :: NullOrUndefined (Listeners) } -> {"Listeners" :: NullOrUndefined (Listeners) } ) -> ModifyListenerOutput
newModifyListenerOutput'  customize = (ModifyListenerOutput <<< customize) { "Listeners": (NullOrUndefined Nothing) }



newtype ModifyLoadBalancerAttributesInput = ModifyLoadBalancerAttributesInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  , "Attributes" :: (LoadBalancerAttributes)
  }
derive instance newtypeModifyLoadBalancerAttributesInput :: Newtype ModifyLoadBalancerAttributesInput _
derive instance repGenericModifyLoadBalancerAttributesInput :: Generic ModifyLoadBalancerAttributesInput _
instance showModifyLoadBalancerAttributesInput :: Show ModifyLoadBalancerAttributesInput where show = genericShow
instance decodeModifyLoadBalancerAttributesInput :: Decode ModifyLoadBalancerAttributesInput where decode = genericDecode options
instance encodeModifyLoadBalancerAttributesInput :: Encode ModifyLoadBalancerAttributesInput where encode = genericEncode options

-- | Constructs ModifyLoadBalancerAttributesInput from required parameters
newModifyLoadBalancerAttributesInput :: LoadBalancerAttributes -> LoadBalancerArn -> ModifyLoadBalancerAttributesInput
newModifyLoadBalancerAttributesInput _Attributes _LoadBalancerArn = ModifyLoadBalancerAttributesInput { "Attributes": _Attributes, "LoadBalancerArn": _LoadBalancerArn }

-- | Constructs ModifyLoadBalancerAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyLoadBalancerAttributesInput' :: LoadBalancerAttributes -> LoadBalancerArn -> ( { "LoadBalancerArn" :: (LoadBalancerArn) , "Attributes" :: (LoadBalancerAttributes) } -> {"LoadBalancerArn" :: (LoadBalancerArn) , "Attributes" :: (LoadBalancerAttributes) } ) -> ModifyLoadBalancerAttributesInput
newModifyLoadBalancerAttributesInput' _Attributes _LoadBalancerArn customize = (ModifyLoadBalancerAttributesInput <<< customize) { "Attributes": _Attributes, "LoadBalancerArn": _LoadBalancerArn }



newtype ModifyLoadBalancerAttributesOutput = ModifyLoadBalancerAttributesOutput 
  { "Attributes" :: NullOrUndefined (LoadBalancerAttributes)
  }
derive instance newtypeModifyLoadBalancerAttributesOutput :: Newtype ModifyLoadBalancerAttributesOutput _
derive instance repGenericModifyLoadBalancerAttributesOutput :: Generic ModifyLoadBalancerAttributesOutput _
instance showModifyLoadBalancerAttributesOutput :: Show ModifyLoadBalancerAttributesOutput where show = genericShow
instance decodeModifyLoadBalancerAttributesOutput :: Decode ModifyLoadBalancerAttributesOutput where decode = genericDecode options
instance encodeModifyLoadBalancerAttributesOutput :: Encode ModifyLoadBalancerAttributesOutput where encode = genericEncode options

-- | Constructs ModifyLoadBalancerAttributesOutput from required parameters
newModifyLoadBalancerAttributesOutput :: ModifyLoadBalancerAttributesOutput
newModifyLoadBalancerAttributesOutput  = ModifyLoadBalancerAttributesOutput { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs ModifyLoadBalancerAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyLoadBalancerAttributesOutput' :: ( { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) } -> {"Attributes" :: NullOrUndefined (LoadBalancerAttributes) } ) -> ModifyLoadBalancerAttributesOutput
newModifyLoadBalancerAttributesOutput'  customize = (ModifyLoadBalancerAttributesOutput <<< customize) { "Attributes": (NullOrUndefined Nothing) }



newtype ModifyRuleInput = ModifyRuleInput 
  { "RuleArn" :: (RuleArn)
  , "Conditions" :: NullOrUndefined (RuleConditionList)
  , "Actions" :: NullOrUndefined (Actions)
  }
derive instance newtypeModifyRuleInput :: Newtype ModifyRuleInput _
derive instance repGenericModifyRuleInput :: Generic ModifyRuleInput _
instance showModifyRuleInput :: Show ModifyRuleInput where show = genericShow
instance decodeModifyRuleInput :: Decode ModifyRuleInput where decode = genericDecode options
instance encodeModifyRuleInput :: Encode ModifyRuleInput where encode = genericEncode options

-- | Constructs ModifyRuleInput from required parameters
newModifyRuleInput :: RuleArn -> ModifyRuleInput
newModifyRuleInput _RuleArn = ModifyRuleInput { "RuleArn": _RuleArn, "Actions": (NullOrUndefined Nothing), "Conditions": (NullOrUndefined Nothing) }

-- | Constructs ModifyRuleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyRuleInput' :: RuleArn -> ( { "RuleArn" :: (RuleArn) , "Conditions" :: NullOrUndefined (RuleConditionList) , "Actions" :: NullOrUndefined (Actions) } -> {"RuleArn" :: (RuleArn) , "Conditions" :: NullOrUndefined (RuleConditionList) , "Actions" :: NullOrUndefined (Actions) } ) -> ModifyRuleInput
newModifyRuleInput' _RuleArn customize = (ModifyRuleInput <<< customize) { "RuleArn": _RuleArn, "Actions": (NullOrUndefined Nothing), "Conditions": (NullOrUndefined Nothing) }



newtype ModifyRuleOutput = ModifyRuleOutput 
  { "Rules" :: NullOrUndefined (Rules)
  }
derive instance newtypeModifyRuleOutput :: Newtype ModifyRuleOutput _
derive instance repGenericModifyRuleOutput :: Generic ModifyRuleOutput _
instance showModifyRuleOutput :: Show ModifyRuleOutput where show = genericShow
instance decodeModifyRuleOutput :: Decode ModifyRuleOutput where decode = genericDecode options
instance encodeModifyRuleOutput :: Encode ModifyRuleOutput where encode = genericEncode options

-- | Constructs ModifyRuleOutput from required parameters
newModifyRuleOutput :: ModifyRuleOutput
newModifyRuleOutput  = ModifyRuleOutput { "Rules": (NullOrUndefined Nothing) }

-- | Constructs ModifyRuleOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyRuleOutput' :: ( { "Rules" :: NullOrUndefined (Rules) } -> {"Rules" :: NullOrUndefined (Rules) } ) -> ModifyRuleOutput
newModifyRuleOutput'  customize = (ModifyRuleOutput <<< customize) { "Rules": (NullOrUndefined Nothing) }



newtype ModifyTargetGroupAttributesInput = ModifyTargetGroupAttributesInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  , "Attributes" :: (TargetGroupAttributes)
  }
derive instance newtypeModifyTargetGroupAttributesInput :: Newtype ModifyTargetGroupAttributesInput _
derive instance repGenericModifyTargetGroupAttributesInput :: Generic ModifyTargetGroupAttributesInput _
instance showModifyTargetGroupAttributesInput :: Show ModifyTargetGroupAttributesInput where show = genericShow
instance decodeModifyTargetGroupAttributesInput :: Decode ModifyTargetGroupAttributesInput where decode = genericDecode options
instance encodeModifyTargetGroupAttributesInput :: Encode ModifyTargetGroupAttributesInput where encode = genericEncode options

-- | Constructs ModifyTargetGroupAttributesInput from required parameters
newModifyTargetGroupAttributesInput :: TargetGroupAttributes -> TargetGroupArn -> ModifyTargetGroupAttributesInput
newModifyTargetGroupAttributesInput _Attributes _TargetGroupArn = ModifyTargetGroupAttributesInput { "Attributes": _Attributes, "TargetGroupArn": _TargetGroupArn }

-- | Constructs ModifyTargetGroupAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyTargetGroupAttributesInput' :: TargetGroupAttributes -> TargetGroupArn -> ( { "TargetGroupArn" :: (TargetGroupArn) , "Attributes" :: (TargetGroupAttributes) } -> {"TargetGroupArn" :: (TargetGroupArn) , "Attributes" :: (TargetGroupAttributes) } ) -> ModifyTargetGroupAttributesInput
newModifyTargetGroupAttributesInput' _Attributes _TargetGroupArn customize = (ModifyTargetGroupAttributesInput <<< customize) { "Attributes": _Attributes, "TargetGroupArn": _TargetGroupArn }



newtype ModifyTargetGroupAttributesOutput = ModifyTargetGroupAttributesOutput 
  { "Attributes" :: NullOrUndefined (TargetGroupAttributes)
  }
derive instance newtypeModifyTargetGroupAttributesOutput :: Newtype ModifyTargetGroupAttributesOutput _
derive instance repGenericModifyTargetGroupAttributesOutput :: Generic ModifyTargetGroupAttributesOutput _
instance showModifyTargetGroupAttributesOutput :: Show ModifyTargetGroupAttributesOutput where show = genericShow
instance decodeModifyTargetGroupAttributesOutput :: Decode ModifyTargetGroupAttributesOutput where decode = genericDecode options
instance encodeModifyTargetGroupAttributesOutput :: Encode ModifyTargetGroupAttributesOutput where encode = genericEncode options

-- | Constructs ModifyTargetGroupAttributesOutput from required parameters
newModifyTargetGroupAttributesOutput :: ModifyTargetGroupAttributesOutput
newModifyTargetGroupAttributesOutput  = ModifyTargetGroupAttributesOutput { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs ModifyTargetGroupAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyTargetGroupAttributesOutput' :: ( { "Attributes" :: NullOrUndefined (TargetGroupAttributes) } -> {"Attributes" :: NullOrUndefined (TargetGroupAttributes) } ) -> ModifyTargetGroupAttributesOutput
newModifyTargetGroupAttributesOutput'  customize = (ModifyTargetGroupAttributesOutput <<< customize) { "Attributes": (NullOrUndefined Nothing) }



newtype ModifyTargetGroupInput = ModifyTargetGroupInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum)
  , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort)
  , "HealthCheckPath" :: NullOrUndefined (Path)
  , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds)
  , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds)
  , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "Matcher" :: NullOrUndefined (Matcher)
  }
derive instance newtypeModifyTargetGroupInput :: Newtype ModifyTargetGroupInput _
derive instance repGenericModifyTargetGroupInput :: Generic ModifyTargetGroupInput _
instance showModifyTargetGroupInput :: Show ModifyTargetGroupInput where show = genericShow
instance decodeModifyTargetGroupInput :: Decode ModifyTargetGroupInput where decode = genericDecode options
instance encodeModifyTargetGroupInput :: Encode ModifyTargetGroupInput where encode = genericEncode options

-- | Constructs ModifyTargetGroupInput from required parameters
newModifyTargetGroupInput :: TargetGroupArn -> ModifyTargetGroupInput
newModifyTargetGroupInput _TargetGroupArn = ModifyTargetGroupInput { "TargetGroupArn": _TargetGroupArn, "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing) }

-- | Constructs ModifyTargetGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyTargetGroupInput' :: TargetGroupArn -> ( { "TargetGroupArn" :: (TargetGroupArn) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckPath" :: NullOrUndefined (Path) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "Matcher" :: NullOrUndefined (Matcher) } -> {"TargetGroupArn" :: (TargetGroupArn) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckPath" :: NullOrUndefined (Path) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "Matcher" :: NullOrUndefined (Matcher) } ) -> ModifyTargetGroupInput
newModifyTargetGroupInput' _TargetGroupArn customize = (ModifyTargetGroupInput <<< customize) { "TargetGroupArn": _TargetGroupArn, "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing) }



newtype ModifyTargetGroupOutput = ModifyTargetGroupOutput 
  { "TargetGroups" :: NullOrUndefined (TargetGroups)
  }
derive instance newtypeModifyTargetGroupOutput :: Newtype ModifyTargetGroupOutput _
derive instance repGenericModifyTargetGroupOutput :: Generic ModifyTargetGroupOutput _
instance showModifyTargetGroupOutput :: Show ModifyTargetGroupOutput where show = genericShow
instance decodeModifyTargetGroupOutput :: Decode ModifyTargetGroupOutput where decode = genericDecode options
instance encodeModifyTargetGroupOutput :: Encode ModifyTargetGroupOutput where encode = genericEncode options

-- | Constructs ModifyTargetGroupOutput from required parameters
newModifyTargetGroupOutput :: ModifyTargetGroupOutput
newModifyTargetGroupOutput  = ModifyTargetGroupOutput { "TargetGroups": (NullOrUndefined Nothing) }

-- | Constructs ModifyTargetGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyTargetGroupOutput' :: ( { "TargetGroups" :: NullOrUndefined (TargetGroups) } -> {"TargetGroups" :: NullOrUndefined (TargetGroups) } ) -> ModifyTargetGroupOutput
newModifyTargetGroupOutput'  customize = (ModifyTargetGroupOutput <<< customize) { "TargetGroups": (NullOrUndefined Nothing) }



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



-- | <p>This operation is not allowed.</p>
newtype OperationNotPermittedException = OperationNotPermittedException Types.NoArguments
derive instance newtypeOperationNotPermittedException :: Newtype OperationNotPermittedException _
derive instance repGenericOperationNotPermittedException :: Generic OperationNotPermittedException _
instance showOperationNotPermittedException :: Show OperationNotPermittedException where show = genericShow
instance decodeOperationNotPermittedException :: Decode OperationNotPermittedException where decode = genericDecode options
instance encodeOperationNotPermittedException :: Encode OperationNotPermittedException where encode = genericEncode options



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype Path = Path String
derive instance newtypePath :: Newtype Path _
derive instance repGenericPath :: Generic Path _
instance showPath :: Show Path where show = genericShow
instance decodePath :: Decode Path where decode = genericDecode options
instance encodePath :: Encode Path where encode = genericEncode options



newtype Port = Port Int
derive instance newtypePort :: Newtype Port _
derive instance repGenericPort :: Generic Port _
instance showPort :: Show Port where show = genericShow
instance decodePort :: Decode Port where decode = genericDecode options
instance encodePort :: Encode Port where encode = genericEncode options



-- | <p>The specified priority is in use.</p>
newtype PriorityInUseException = PriorityInUseException Types.NoArguments
derive instance newtypePriorityInUseException :: Newtype PriorityInUseException _
derive instance repGenericPriorityInUseException :: Generic PriorityInUseException _
instance showPriorityInUseException :: Show PriorityInUseException where show = genericShow
instance decodePriorityInUseException :: Decode PriorityInUseException where decode = genericDecode options
instance encodePriorityInUseException :: Encode PriorityInUseException where encode = genericEncode options



newtype ProtocolEnum = ProtocolEnum String
derive instance newtypeProtocolEnum :: Newtype ProtocolEnum _
derive instance repGenericProtocolEnum :: Generic ProtocolEnum _
instance showProtocolEnum :: Show ProtocolEnum where show = genericShow
instance decodeProtocolEnum :: Decode ProtocolEnum where decode = genericDecode options
instance encodeProtocolEnum :: Encode ProtocolEnum where encode = genericEncode options



newtype RegisterTargetsInput = RegisterTargetsInput 
  { "TargetGroupArn" :: (TargetGroupArn)
  , "Targets" :: (TargetDescriptions)
  }
derive instance newtypeRegisterTargetsInput :: Newtype RegisterTargetsInput _
derive instance repGenericRegisterTargetsInput :: Generic RegisterTargetsInput _
instance showRegisterTargetsInput :: Show RegisterTargetsInput where show = genericShow
instance decodeRegisterTargetsInput :: Decode RegisterTargetsInput where decode = genericDecode options
instance encodeRegisterTargetsInput :: Encode RegisterTargetsInput where encode = genericEncode options

-- | Constructs RegisterTargetsInput from required parameters
newRegisterTargetsInput :: TargetGroupArn -> TargetDescriptions -> RegisterTargetsInput
newRegisterTargetsInput _TargetGroupArn _Targets = RegisterTargetsInput { "TargetGroupArn": _TargetGroupArn, "Targets": _Targets }

-- | Constructs RegisterTargetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterTargetsInput' :: TargetGroupArn -> TargetDescriptions -> ( { "TargetGroupArn" :: (TargetGroupArn) , "Targets" :: (TargetDescriptions) } -> {"TargetGroupArn" :: (TargetGroupArn) , "Targets" :: (TargetDescriptions) } ) -> RegisterTargetsInput
newRegisterTargetsInput' _TargetGroupArn _Targets customize = (RegisterTargetsInput <<< customize) { "TargetGroupArn": _TargetGroupArn, "Targets": _Targets }



newtype RegisterTargetsOutput = RegisterTargetsOutput Types.NoArguments
derive instance newtypeRegisterTargetsOutput :: Newtype RegisterTargetsOutput _
derive instance repGenericRegisterTargetsOutput :: Generic RegisterTargetsOutput _
instance showRegisterTargetsOutput :: Show RegisterTargetsOutput where show = genericShow
instance decodeRegisterTargetsOutput :: Decode RegisterTargetsOutput where decode = genericDecode options
instance encodeRegisterTargetsOutput :: Encode RegisterTargetsOutput where encode = genericEncode options



newtype RemoveListenerCertificatesInput = RemoveListenerCertificatesInput 
  { "ListenerArn" :: (ListenerArn)
  , "Certificates" :: (CertificateList)
  }
derive instance newtypeRemoveListenerCertificatesInput :: Newtype RemoveListenerCertificatesInput _
derive instance repGenericRemoveListenerCertificatesInput :: Generic RemoveListenerCertificatesInput _
instance showRemoveListenerCertificatesInput :: Show RemoveListenerCertificatesInput where show = genericShow
instance decodeRemoveListenerCertificatesInput :: Decode RemoveListenerCertificatesInput where decode = genericDecode options
instance encodeRemoveListenerCertificatesInput :: Encode RemoveListenerCertificatesInput where encode = genericEncode options

-- | Constructs RemoveListenerCertificatesInput from required parameters
newRemoveListenerCertificatesInput :: CertificateList -> ListenerArn -> RemoveListenerCertificatesInput
newRemoveListenerCertificatesInput _Certificates _ListenerArn = RemoveListenerCertificatesInput { "Certificates": _Certificates, "ListenerArn": _ListenerArn }

-- | Constructs RemoveListenerCertificatesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveListenerCertificatesInput' :: CertificateList -> ListenerArn -> ( { "ListenerArn" :: (ListenerArn) , "Certificates" :: (CertificateList) } -> {"ListenerArn" :: (ListenerArn) , "Certificates" :: (CertificateList) } ) -> RemoveListenerCertificatesInput
newRemoveListenerCertificatesInput' _Certificates _ListenerArn customize = (RemoveListenerCertificatesInput <<< customize) { "Certificates": _Certificates, "ListenerArn": _ListenerArn }



newtype RemoveListenerCertificatesOutput = RemoveListenerCertificatesOutput Types.NoArguments
derive instance newtypeRemoveListenerCertificatesOutput :: Newtype RemoveListenerCertificatesOutput _
derive instance repGenericRemoveListenerCertificatesOutput :: Generic RemoveListenerCertificatesOutput _
instance showRemoveListenerCertificatesOutput :: Show RemoveListenerCertificatesOutput where show = genericShow
instance decodeRemoveListenerCertificatesOutput :: Decode RemoveListenerCertificatesOutput where decode = genericDecode options
instance encodeRemoveListenerCertificatesOutput :: Encode RemoveListenerCertificatesOutput where encode = genericEncode options



newtype RemoveTagsInput = RemoveTagsInput 
  { "ResourceArns" :: (ResourceArns)
  , "TagKeys" :: (TagKeys)
  }
derive instance newtypeRemoveTagsInput :: Newtype RemoveTagsInput _
derive instance repGenericRemoveTagsInput :: Generic RemoveTagsInput _
instance showRemoveTagsInput :: Show RemoveTagsInput where show = genericShow
instance decodeRemoveTagsInput :: Decode RemoveTagsInput where decode = genericDecode options
instance encodeRemoveTagsInput :: Encode RemoveTagsInput where encode = genericEncode options

-- | Constructs RemoveTagsInput from required parameters
newRemoveTagsInput :: ResourceArns -> TagKeys -> RemoveTagsInput
newRemoveTagsInput _ResourceArns _TagKeys = RemoveTagsInput { "ResourceArns": _ResourceArns, "TagKeys": _TagKeys }

-- | Constructs RemoveTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsInput' :: ResourceArns -> TagKeys -> ( { "ResourceArns" :: (ResourceArns) , "TagKeys" :: (TagKeys) } -> {"ResourceArns" :: (ResourceArns) , "TagKeys" :: (TagKeys) } ) -> RemoveTagsInput
newRemoveTagsInput' _ResourceArns _TagKeys customize = (RemoveTagsInput <<< customize) { "ResourceArns": _ResourceArns, "TagKeys": _TagKeys }



newtype RemoveTagsOutput = RemoveTagsOutput Types.NoArguments
derive instance newtypeRemoveTagsOutput :: Newtype RemoveTagsOutput _
derive instance repGenericRemoveTagsOutput :: Generic RemoveTagsOutput _
instance showRemoveTagsOutput :: Show RemoveTagsOutput where show = genericShow
instance decodeRemoveTagsOutput :: Decode RemoveTagsOutput where decode = genericDecode options
instance encodeRemoveTagsOutput :: Encode RemoveTagsOutput where encode = genericEncode options



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



newtype ResourceArns = ResourceArns (Array ResourceArn)
derive instance newtypeResourceArns :: Newtype ResourceArns _
derive instance repGenericResourceArns :: Generic ResourceArns _
instance showResourceArns :: Show ResourceArns where show = genericShow
instance decodeResourceArns :: Decode ResourceArns where decode = genericDecode options
instance encodeResourceArns :: Encode ResourceArns where encode = genericEncode options



-- | <p>A specified resource is in use.</p>
newtype ResourceInUseException = ResourceInUseException Types.NoArguments
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where decode = genericDecode options
instance encodeResourceInUseException :: Encode ResourceInUseException where encode = genericEncode options



-- | <p>Information about a rule.</p>
newtype Rule = Rule 
  { "RuleArn" :: NullOrUndefined (RuleArn)
  , "Priority" :: NullOrUndefined (String)
  , "Conditions" :: NullOrUndefined (RuleConditionList)
  , "Actions" :: NullOrUndefined (Actions)
  , "IsDefault" :: NullOrUndefined (IsDefault)
  }
derive instance newtypeRule :: Newtype Rule _
derive instance repGenericRule :: Generic Rule _
instance showRule :: Show Rule where show = genericShow
instance decodeRule :: Decode Rule where decode = genericDecode options
instance encodeRule :: Encode Rule where encode = genericEncode options

-- | Constructs Rule from required parameters
newRule :: Rule
newRule  = Rule { "Actions": (NullOrUndefined Nothing), "Conditions": (NullOrUndefined Nothing), "IsDefault": (NullOrUndefined Nothing), "Priority": (NullOrUndefined Nothing), "RuleArn": (NullOrUndefined Nothing) }

-- | Constructs Rule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRule' :: ( { "RuleArn" :: NullOrUndefined (RuleArn) , "Priority" :: NullOrUndefined (String) , "Conditions" :: NullOrUndefined (RuleConditionList) , "Actions" :: NullOrUndefined (Actions) , "IsDefault" :: NullOrUndefined (IsDefault) } -> {"RuleArn" :: NullOrUndefined (RuleArn) , "Priority" :: NullOrUndefined (String) , "Conditions" :: NullOrUndefined (RuleConditionList) , "Actions" :: NullOrUndefined (Actions) , "IsDefault" :: NullOrUndefined (IsDefault) } ) -> Rule
newRule'  customize = (Rule <<< customize) { "Actions": (NullOrUndefined Nothing), "Conditions": (NullOrUndefined Nothing), "IsDefault": (NullOrUndefined Nothing), "Priority": (NullOrUndefined Nothing), "RuleArn": (NullOrUndefined Nothing) }



newtype RuleArn = RuleArn String
derive instance newtypeRuleArn :: Newtype RuleArn _
derive instance repGenericRuleArn :: Generic RuleArn _
instance showRuleArn :: Show RuleArn where show = genericShow
instance decodeRuleArn :: Decode RuleArn where decode = genericDecode options
instance encodeRuleArn :: Encode RuleArn where encode = genericEncode options



newtype RuleArns = RuleArns (Array RuleArn)
derive instance newtypeRuleArns :: Newtype RuleArns _
derive instance repGenericRuleArns :: Generic RuleArns _
instance showRuleArns :: Show RuleArns where show = genericShow
instance decodeRuleArns :: Decode RuleArns where decode = genericDecode options
instance encodeRuleArns :: Encode RuleArns where encode = genericEncode options



-- | <p>Information about a condition for a rule.</p>
newtype RuleCondition = RuleCondition 
  { "Field" :: NullOrUndefined (ConditionFieldName)
  , "Values" :: NullOrUndefined (ListOfString)
  }
derive instance newtypeRuleCondition :: Newtype RuleCondition _
derive instance repGenericRuleCondition :: Generic RuleCondition _
instance showRuleCondition :: Show RuleCondition where show = genericShow
instance decodeRuleCondition :: Decode RuleCondition where decode = genericDecode options
instance encodeRuleCondition :: Encode RuleCondition where encode = genericEncode options

-- | Constructs RuleCondition from required parameters
newRuleCondition :: RuleCondition
newRuleCondition  = RuleCondition { "Field": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs RuleCondition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleCondition' :: ( { "Field" :: NullOrUndefined (ConditionFieldName) , "Values" :: NullOrUndefined (ListOfString) } -> {"Field" :: NullOrUndefined (ConditionFieldName) , "Values" :: NullOrUndefined (ListOfString) } ) -> RuleCondition
newRuleCondition'  customize = (RuleCondition <<< customize) { "Field": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



newtype RuleConditionList = RuleConditionList (Array RuleCondition)
derive instance newtypeRuleConditionList :: Newtype RuleConditionList _
derive instance repGenericRuleConditionList :: Generic RuleConditionList _
instance showRuleConditionList :: Show RuleConditionList where show = genericShow
instance decodeRuleConditionList :: Decode RuleConditionList where decode = genericDecode options
instance encodeRuleConditionList :: Encode RuleConditionList where encode = genericEncode options



-- | <p>The specified rule does not exist.</p>
newtype RuleNotFoundException = RuleNotFoundException Types.NoArguments
derive instance newtypeRuleNotFoundException :: Newtype RuleNotFoundException _
derive instance repGenericRuleNotFoundException :: Generic RuleNotFoundException _
instance showRuleNotFoundException :: Show RuleNotFoundException where show = genericShow
instance decodeRuleNotFoundException :: Decode RuleNotFoundException where decode = genericDecode options
instance encodeRuleNotFoundException :: Encode RuleNotFoundException where encode = genericEncode options



newtype RulePriority = RulePriority Int
derive instance newtypeRulePriority :: Newtype RulePriority _
derive instance repGenericRulePriority :: Generic RulePriority _
instance showRulePriority :: Show RulePriority where show = genericShow
instance decodeRulePriority :: Decode RulePriority where decode = genericDecode options
instance encodeRulePriority :: Encode RulePriority where encode = genericEncode options



newtype RulePriorityList = RulePriorityList (Array RulePriorityPair)
derive instance newtypeRulePriorityList :: Newtype RulePriorityList _
derive instance repGenericRulePriorityList :: Generic RulePriorityList _
instance showRulePriorityList :: Show RulePriorityList where show = genericShow
instance decodeRulePriorityList :: Decode RulePriorityList where decode = genericDecode options
instance encodeRulePriorityList :: Encode RulePriorityList where encode = genericEncode options



-- | <p>Information about the priorities for the rules for a listener.</p>
newtype RulePriorityPair = RulePriorityPair 
  { "RuleArn" :: NullOrUndefined (RuleArn)
  , "Priority" :: NullOrUndefined (RulePriority)
  }
derive instance newtypeRulePriorityPair :: Newtype RulePriorityPair _
derive instance repGenericRulePriorityPair :: Generic RulePriorityPair _
instance showRulePriorityPair :: Show RulePriorityPair where show = genericShow
instance decodeRulePriorityPair :: Decode RulePriorityPair where decode = genericDecode options
instance encodeRulePriorityPair :: Encode RulePriorityPair where encode = genericEncode options

-- | Constructs RulePriorityPair from required parameters
newRulePriorityPair :: RulePriorityPair
newRulePriorityPair  = RulePriorityPair { "Priority": (NullOrUndefined Nothing), "RuleArn": (NullOrUndefined Nothing) }

-- | Constructs RulePriorityPair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRulePriorityPair' :: ( { "RuleArn" :: NullOrUndefined (RuleArn) , "Priority" :: NullOrUndefined (RulePriority) } -> {"RuleArn" :: NullOrUndefined (RuleArn) , "Priority" :: NullOrUndefined (RulePriority) } ) -> RulePriorityPair
newRulePriorityPair'  customize = (RulePriorityPair <<< customize) { "Priority": (NullOrUndefined Nothing), "RuleArn": (NullOrUndefined Nothing) }



newtype Rules = Rules (Array Rule)
derive instance newtypeRules :: Newtype Rules _
derive instance repGenericRules :: Generic Rules _
instance showRules :: Show Rules where show = genericShow
instance decodeRules :: Decode Rules where decode = genericDecode options
instance encodeRules :: Encode Rules where encode = genericEncode options



-- | <p>The specified SSL policy does not exist.</p>
newtype SSLPolicyNotFoundException = SSLPolicyNotFoundException Types.NoArguments
derive instance newtypeSSLPolicyNotFoundException :: Newtype SSLPolicyNotFoundException _
derive instance repGenericSSLPolicyNotFoundException :: Generic SSLPolicyNotFoundException _
instance showSSLPolicyNotFoundException :: Show SSLPolicyNotFoundException where show = genericShow
instance decodeSSLPolicyNotFoundException :: Decode SSLPolicyNotFoundException where decode = genericDecode options
instance encodeSSLPolicyNotFoundException :: Encode SSLPolicyNotFoundException where encode = genericEncode options



newtype SecurityGroupId = SecurityGroupId String
derive instance newtypeSecurityGroupId :: Newtype SecurityGroupId _
derive instance repGenericSecurityGroupId :: Generic SecurityGroupId _
instance showSecurityGroupId :: Show SecurityGroupId where show = genericShow
instance decodeSecurityGroupId :: Decode SecurityGroupId where decode = genericDecode options
instance encodeSecurityGroupId :: Encode SecurityGroupId where encode = genericEncode options



newtype SecurityGroups = SecurityGroups (Array SecurityGroupId)
derive instance newtypeSecurityGroups :: Newtype SecurityGroups _
derive instance repGenericSecurityGroups :: Generic SecurityGroups _
instance showSecurityGroups :: Show SecurityGroups where show = genericShow
instance decodeSecurityGroups :: Decode SecurityGroups where decode = genericDecode options
instance encodeSecurityGroups :: Encode SecurityGroups where encode = genericEncode options



newtype SetIpAddressTypeInput = SetIpAddressTypeInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  , "IpAddressType" :: (IpAddressType)
  }
derive instance newtypeSetIpAddressTypeInput :: Newtype SetIpAddressTypeInput _
derive instance repGenericSetIpAddressTypeInput :: Generic SetIpAddressTypeInput _
instance showSetIpAddressTypeInput :: Show SetIpAddressTypeInput where show = genericShow
instance decodeSetIpAddressTypeInput :: Decode SetIpAddressTypeInput where decode = genericDecode options
instance encodeSetIpAddressTypeInput :: Encode SetIpAddressTypeInput where encode = genericEncode options

-- | Constructs SetIpAddressTypeInput from required parameters
newSetIpAddressTypeInput :: IpAddressType -> LoadBalancerArn -> SetIpAddressTypeInput
newSetIpAddressTypeInput _IpAddressType _LoadBalancerArn = SetIpAddressTypeInput { "IpAddressType": _IpAddressType, "LoadBalancerArn": _LoadBalancerArn }

-- | Constructs SetIpAddressTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIpAddressTypeInput' :: IpAddressType -> LoadBalancerArn -> ( { "LoadBalancerArn" :: (LoadBalancerArn) , "IpAddressType" :: (IpAddressType) } -> {"LoadBalancerArn" :: (LoadBalancerArn) , "IpAddressType" :: (IpAddressType) } ) -> SetIpAddressTypeInput
newSetIpAddressTypeInput' _IpAddressType _LoadBalancerArn customize = (SetIpAddressTypeInput <<< customize) { "IpAddressType": _IpAddressType, "LoadBalancerArn": _LoadBalancerArn }



newtype SetIpAddressTypeOutput = SetIpAddressTypeOutput 
  { "IpAddressType" :: NullOrUndefined (IpAddressType)
  }
derive instance newtypeSetIpAddressTypeOutput :: Newtype SetIpAddressTypeOutput _
derive instance repGenericSetIpAddressTypeOutput :: Generic SetIpAddressTypeOutput _
instance showSetIpAddressTypeOutput :: Show SetIpAddressTypeOutput where show = genericShow
instance decodeSetIpAddressTypeOutput :: Decode SetIpAddressTypeOutput where decode = genericDecode options
instance encodeSetIpAddressTypeOutput :: Encode SetIpAddressTypeOutput where encode = genericEncode options

-- | Constructs SetIpAddressTypeOutput from required parameters
newSetIpAddressTypeOutput :: SetIpAddressTypeOutput
newSetIpAddressTypeOutput  = SetIpAddressTypeOutput { "IpAddressType": (NullOrUndefined Nothing) }

-- | Constructs SetIpAddressTypeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIpAddressTypeOutput' :: ( { "IpAddressType" :: NullOrUndefined (IpAddressType) } -> {"IpAddressType" :: NullOrUndefined (IpAddressType) } ) -> SetIpAddressTypeOutput
newSetIpAddressTypeOutput'  customize = (SetIpAddressTypeOutput <<< customize) { "IpAddressType": (NullOrUndefined Nothing) }



newtype SetRulePrioritiesInput = SetRulePrioritiesInput 
  { "RulePriorities" :: (RulePriorityList)
  }
derive instance newtypeSetRulePrioritiesInput :: Newtype SetRulePrioritiesInput _
derive instance repGenericSetRulePrioritiesInput :: Generic SetRulePrioritiesInput _
instance showSetRulePrioritiesInput :: Show SetRulePrioritiesInput where show = genericShow
instance decodeSetRulePrioritiesInput :: Decode SetRulePrioritiesInput where decode = genericDecode options
instance encodeSetRulePrioritiesInput :: Encode SetRulePrioritiesInput where encode = genericEncode options

-- | Constructs SetRulePrioritiesInput from required parameters
newSetRulePrioritiesInput :: RulePriorityList -> SetRulePrioritiesInput
newSetRulePrioritiesInput _RulePriorities = SetRulePrioritiesInput { "RulePriorities": _RulePriorities }

-- | Constructs SetRulePrioritiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRulePrioritiesInput' :: RulePriorityList -> ( { "RulePriorities" :: (RulePriorityList) } -> {"RulePriorities" :: (RulePriorityList) } ) -> SetRulePrioritiesInput
newSetRulePrioritiesInput' _RulePriorities customize = (SetRulePrioritiesInput <<< customize) { "RulePriorities": _RulePriorities }



newtype SetRulePrioritiesOutput = SetRulePrioritiesOutput 
  { "Rules" :: NullOrUndefined (Rules)
  }
derive instance newtypeSetRulePrioritiesOutput :: Newtype SetRulePrioritiesOutput _
derive instance repGenericSetRulePrioritiesOutput :: Generic SetRulePrioritiesOutput _
instance showSetRulePrioritiesOutput :: Show SetRulePrioritiesOutput where show = genericShow
instance decodeSetRulePrioritiesOutput :: Decode SetRulePrioritiesOutput where decode = genericDecode options
instance encodeSetRulePrioritiesOutput :: Encode SetRulePrioritiesOutput where encode = genericEncode options

-- | Constructs SetRulePrioritiesOutput from required parameters
newSetRulePrioritiesOutput :: SetRulePrioritiesOutput
newSetRulePrioritiesOutput  = SetRulePrioritiesOutput { "Rules": (NullOrUndefined Nothing) }

-- | Constructs SetRulePrioritiesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRulePrioritiesOutput' :: ( { "Rules" :: NullOrUndefined (Rules) } -> {"Rules" :: NullOrUndefined (Rules) } ) -> SetRulePrioritiesOutput
newSetRulePrioritiesOutput'  customize = (SetRulePrioritiesOutput <<< customize) { "Rules": (NullOrUndefined Nothing) }



newtype SetSecurityGroupsInput = SetSecurityGroupsInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  , "SecurityGroups" :: (SecurityGroups)
  }
derive instance newtypeSetSecurityGroupsInput :: Newtype SetSecurityGroupsInput _
derive instance repGenericSetSecurityGroupsInput :: Generic SetSecurityGroupsInput _
instance showSetSecurityGroupsInput :: Show SetSecurityGroupsInput where show = genericShow
instance decodeSetSecurityGroupsInput :: Decode SetSecurityGroupsInput where decode = genericDecode options
instance encodeSetSecurityGroupsInput :: Encode SetSecurityGroupsInput where encode = genericEncode options

-- | Constructs SetSecurityGroupsInput from required parameters
newSetSecurityGroupsInput :: LoadBalancerArn -> SecurityGroups -> SetSecurityGroupsInput
newSetSecurityGroupsInput _LoadBalancerArn _SecurityGroups = SetSecurityGroupsInput { "LoadBalancerArn": _LoadBalancerArn, "SecurityGroups": _SecurityGroups }

-- | Constructs SetSecurityGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSecurityGroupsInput' :: LoadBalancerArn -> SecurityGroups -> ( { "LoadBalancerArn" :: (LoadBalancerArn) , "SecurityGroups" :: (SecurityGroups) } -> {"LoadBalancerArn" :: (LoadBalancerArn) , "SecurityGroups" :: (SecurityGroups) } ) -> SetSecurityGroupsInput
newSetSecurityGroupsInput' _LoadBalancerArn _SecurityGroups customize = (SetSecurityGroupsInput <<< customize) { "LoadBalancerArn": _LoadBalancerArn, "SecurityGroups": _SecurityGroups }



newtype SetSecurityGroupsOutput = SetSecurityGroupsOutput 
  { "SecurityGroupIds" :: NullOrUndefined (SecurityGroups)
  }
derive instance newtypeSetSecurityGroupsOutput :: Newtype SetSecurityGroupsOutput _
derive instance repGenericSetSecurityGroupsOutput :: Generic SetSecurityGroupsOutput _
instance showSetSecurityGroupsOutput :: Show SetSecurityGroupsOutput where show = genericShow
instance decodeSetSecurityGroupsOutput :: Decode SetSecurityGroupsOutput where decode = genericDecode options
instance encodeSetSecurityGroupsOutput :: Encode SetSecurityGroupsOutput where encode = genericEncode options

-- | Constructs SetSecurityGroupsOutput from required parameters
newSetSecurityGroupsOutput :: SetSecurityGroupsOutput
newSetSecurityGroupsOutput  = SetSecurityGroupsOutput { "SecurityGroupIds": (NullOrUndefined Nothing) }

-- | Constructs SetSecurityGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSecurityGroupsOutput' :: ( { "SecurityGroupIds" :: NullOrUndefined (SecurityGroups) } -> {"SecurityGroupIds" :: NullOrUndefined (SecurityGroups) } ) -> SetSecurityGroupsOutput
newSetSecurityGroupsOutput'  customize = (SetSecurityGroupsOutput <<< customize) { "SecurityGroupIds": (NullOrUndefined Nothing) }



newtype SetSubnetsInput = SetSubnetsInput 
  { "LoadBalancerArn" :: (LoadBalancerArn)
  , "Subnets" :: (Subnets)
  , "SubnetMappings" :: NullOrUndefined (SubnetMappings)
  }
derive instance newtypeSetSubnetsInput :: Newtype SetSubnetsInput _
derive instance repGenericSetSubnetsInput :: Generic SetSubnetsInput _
instance showSetSubnetsInput :: Show SetSubnetsInput where show = genericShow
instance decodeSetSubnetsInput :: Decode SetSubnetsInput where decode = genericDecode options
instance encodeSetSubnetsInput :: Encode SetSubnetsInput where encode = genericEncode options

-- | Constructs SetSubnetsInput from required parameters
newSetSubnetsInput :: LoadBalancerArn -> Subnets -> SetSubnetsInput
newSetSubnetsInput _LoadBalancerArn _Subnets = SetSubnetsInput { "LoadBalancerArn": _LoadBalancerArn, "Subnets": _Subnets, "SubnetMappings": (NullOrUndefined Nothing) }

-- | Constructs SetSubnetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSubnetsInput' :: LoadBalancerArn -> Subnets -> ( { "LoadBalancerArn" :: (LoadBalancerArn) , "Subnets" :: (Subnets) , "SubnetMappings" :: NullOrUndefined (SubnetMappings) } -> {"LoadBalancerArn" :: (LoadBalancerArn) , "Subnets" :: (Subnets) , "SubnetMappings" :: NullOrUndefined (SubnetMappings) } ) -> SetSubnetsInput
newSetSubnetsInput' _LoadBalancerArn _Subnets customize = (SetSubnetsInput <<< customize) { "LoadBalancerArn": _LoadBalancerArn, "Subnets": _Subnets, "SubnetMappings": (NullOrUndefined Nothing) }



newtype SetSubnetsOutput = SetSubnetsOutput 
  { "AvailabilityZones" :: NullOrUndefined (AvailabilityZones)
  }
derive instance newtypeSetSubnetsOutput :: Newtype SetSubnetsOutput _
derive instance repGenericSetSubnetsOutput :: Generic SetSubnetsOutput _
instance showSetSubnetsOutput :: Show SetSubnetsOutput where show = genericShow
instance decodeSetSubnetsOutput :: Decode SetSubnetsOutput where decode = genericDecode options
instance encodeSetSubnetsOutput :: Encode SetSubnetsOutput where encode = genericEncode options

-- | Constructs SetSubnetsOutput from required parameters
newSetSubnetsOutput :: SetSubnetsOutput
newSetSubnetsOutput  = SetSubnetsOutput { "AvailabilityZones": (NullOrUndefined Nothing) }

-- | Constructs SetSubnetsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSubnetsOutput' :: ( { "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) } -> {"AvailabilityZones" :: NullOrUndefined (AvailabilityZones) } ) -> SetSubnetsOutput
newSetSubnetsOutput'  customize = (SetSubnetsOutput <<< customize) { "AvailabilityZones": (NullOrUndefined Nothing) }



newtype SslPolicies = SslPolicies (Array SslPolicy)
derive instance newtypeSslPolicies :: Newtype SslPolicies _
derive instance repGenericSslPolicies :: Generic SslPolicies _
instance showSslPolicies :: Show SslPolicies where show = genericShow
instance decodeSslPolicies :: Decode SslPolicies where decode = genericDecode options
instance encodeSslPolicies :: Encode SslPolicies where encode = genericEncode options



-- | <p>Information about a policy used for SSL negotiation.</p>
newtype SslPolicy = SslPolicy 
  { "SslProtocols" :: NullOrUndefined (SslProtocols)
  , "Ciphers" :: NullOrUndefined (Ciphers)
  , "Name" :: NullOrUndefined (SslPolicyName)
  }
derive instance newtypeSslPolicy :: Newtype SslPolicy _
derive instance repGenericSslPolicy :: Generic SslPolicy _
instance showSslPolicy :: Show SslPolicy where show = genericShow
instance decodeSslPolicy :: Decode SslPolicy where decode = genericDecode options
instance encodeSslPolicy :: Encode SslPolicy where encode = genericEncode options

-- | Constructs SslPolicy from required parameters
newSslPolicy :: SslPolicy
newSslPolicy  = SslPolicy { "Ciphers": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SslProtocols": (NullOrUndefined Nothing) }

-- | Constructs SslPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSslPolicy' :: ( { "SslProtocols" :: NullOrUndefined (SslProtocols) , "Ciphers" :: NullOrUndefined (Ciphers) , "Name" :: NullOrUndefined (SslPolicyName) } -> {"SslProtocols" :: NullOrUndefined (SslProtocols) , "Ciphers" :: NullOrUndefined (Ciphers) , "Name" :: NullOrUndefined (SslPolicyName) } ) -> SslPolicy
newSslPolicy'  customize = (SslPolicy <<< customize) { "Ciphers": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SslProtocols": (NullOrUndefined Nothing) }



newtype SslPolicyName = SslPolicyName String
derive instance newtypeSslPolicyName :: Newtype SslPolicyName _
derive instance repGenericSslPolicyName :: Generic SslPolicyName _
instance showSslPolicyName :: Show SslPolicyName where show = genericShow
instance decodeSslPolicyName :: Decode SslPolicyName where decode = genericDecode options
instance encodeSslPolicyName :: Encode SslPolicyName where encode = genericEncode options



newtype SslPolicyNames = SslPolicyNames (Array SslPolicyName)
derive instance newtypeSslPolicyNames :: Newtype SslPolicyNames _
derive instance repGenericSslPolicyNames :: Generic SslPolicyNames _
instance showSslPolicyNames :: Show SslPolicyNames where show = genericShow
instance decodeSslPolicyNames :: Decode SslPolicyNames where decode = genericDecode options
instance encodeSslPolicyNames :: Encode SslPolicyNames where encode = genericEncode options



newtype SslProtocol = SslProtocol String
derive instance newtypeSslProtocol :: Newtype SslProtocol _
derive instance repGenericSslProtocol :: Generic SslProtocol _
instance showSslProtocol :: Show SslProtocol where show = genericShow
instance decodeSslProtocol :: Decode SslProtocol where decode = genericDecode options
instance encodeSslProtocol :: Encode SslProtocol where encode = genericEncode options



newtype SslProtocols = SslProtocols (Array SslProtocol)
derive instance newtypeSslProtocols :: Newtype SslProtocols _
derive instance repGenericSslProtocols :: Generic SslProtocols _
instance showSslProtocols :: Show SslProtocols where show = genericShow
instance decodeSslProtocols :: Decode SslProtocols where decode = genericDecode options
instance encodeSslProtocols :: Encode SslProtocols where encode = genericEncode options



newtype StateReason = StateReason String
derive instance newtypeStateReason :: Newtype StateReason _
derive instance repGenericStateReason :: Generic StateReason _
instance showStateReason :: Show StateReason where show = genericShow
instance decodeStateReason :: Decode StateReason where decode = genericDecode options
instance encodeStateReason :: Encode StateReason where encode = genericEncode options



newtype StringValue = StringValue String
derive instance newtypeStringValue :: Newtype StringValue _
derive instance repGenericStringValue :: Generic StringValue _
instance showStringValue :: Show StringValue where show = genericShow
instance decodeStringValue :: Decode StringValue where decode = genericDecode options
instance encodeStringValue :: Encode StringValue where encode = genericEncode options



newtype SubnetId = SubnetId String
derive instance newtypeSubnetId :: Newtype SubnetId _
derive instance repGenericSubnetId :: Generic SubnetId _
instance showSubnetId :: Show SubnetId where show = genericShow
instance decodeSubnetId :: Decode SubnetId where decode = genericDecode options
instance encodeSubnetId :: Encode SubnetId where encode = genericEncode options



-- | <p>Information about a subnet mapping.</p>
newtype SubnetMapping = SubnetMapping 
  { "SubnetId" :: NullOrUndefined (SubnetId)
  , "AllocationId" :: NullOrUndefined (AllocationId)
  }
derive instance newtypeSubnetMapping :: Newtype SubnetMapping _
derive instance repGenericSubnetMapping :: Generic SubnetMapping _
instance showSubnetMapping :: Show SubnetMapping where show = genericShow
instance decodeSubnetMapping :: Decode SubnetMapping where decode = genericDecode options
instance encodeSubnetMapping :: Encode SubnetMapping where encode = genericEncode options

-- | Constructs SubnetMapping from required parameters
newSubnetMapping :: SubnetMapping
newSubnetMapping  = SubnetMapping { "AllocationId": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing) }

-- | Constructs SubnetMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubnetMapping' :: ( { "SubnetId" :: NullOrUndefined (SubnetId) , "AllocationId" :: NullOrUndefined (AllocationId) } -> {"SubnetId" :: NullOrUndefined (SubnetId) , "AllocationId" :: NullOrUndefined (AllocationId) } ) -> SubnetMapping
newSubnetMapping'  customize = (SubnetMapping <<< customize) { "AllocationId": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing) }



newtype SubnetMappings = SubnetMappings (Array SubnetMapping)
derive instance newtypeSubnetMappings :: Newtype SubnetMappings _
derive instance repGenericSubnetMappings :: Generic SubnetMappings _
instance showSubnetMappings :: Show SubnetMappings where show = genericShow
instance decodeSubnetMappings :: Decode SubnetMappings where decode = genericDecode options
instance encodeSubnetMappings :: Encode SubnetMappings where encode = genericEncode options



-- | <p>The specified subnet does not exist.</p>
newtype SubnetNotFoundException = SubnetNotFoundException Types.NoArguments
derive instance newtypeSubnetNotFoundException :: Newtype SubnetNotFoundException _
derive instance repGenericSubnetNotFoundException :: Generic SubnetNotFoundException _
instance showSubnetNotFoundException :: Show SubnetNotFoundException where show = genericShow
instance decodeSubnetNotFoundException :: Decode SubnetNotFoundException where decode = genericDecode options
instance encodeSubnetNotFoundException :: Encode SubnetNotFoundException where encode = genericEncode options



newtype Subnets = Subnets (Array SubnetId)
derive instance newtypeSubnets :: Newtype Subnets _
derive instance repGenericSubnets :: Generic Subnets _
instance showSubnets :: Show Subnets where show = genericShow
instance decodeSubnets :: Decode Subnets where decode = genericDecode options
instance encodeSubnets :: Encode Subnets where encode = genericEncode options



-- | <p>Information about a tag.</p>
newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: NullOrUndefined (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> Tag
newTag _Key = Tag { "Key": _Key, "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> ( { "Key" :: (TagKey) , "Value" :: NullOrUndefined (TagValue) } -> {"Key" :: (TagKey) , "Value" :: NullOrUndefined (TagValue) } ) -> Tag
newTag' _Key customize = (Tag <<< customize) { "Key": _Key, "Value": (NullOrUndefined Nothing) }



-- | <p>The tags associated with a resource.</p>
newtype TagDescription = TagDescription 
  { "ResourceArn" :: NullOrUndefined (ResourceArn)
  , "Tags" :: NullOrUndefined (TagList)
  }
derive instance newtypeTagDescription :: Newtype TagDescription _
derive instance repGenericTagDescription :: Generic TagDescription _
instance showTagDescription :: Show TagDescription where show = genericShow
instance decodeTagDescription :: Decode TagDescription where decode = genericDecode options
instance encodeTagDescription :: Encode TagDescription where encode = genericEncode options

-- | Constructs TagDescription from required parameters
newTagDescription :: TagDescription
newTagDescription  = TagDescription { "ResourceArn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs TagDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagDescription' :: ( { "ResourceArn" :: NullOrUndefined (ResourceArn) , "Tags" :: NullOrUndefined (TagList) } -> {"ResourceArn" :: NullOrUndefined (ResourceArn) , "Tags" :: NullOrUndefined (TagList) } ) -> TagDescription
newTagDescription'  customize = (TagDescription <<< customize) { "ResourceArn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype TagDescriptions = TagDescriptions (Array TagDescription)
derive instance newtypeTagDescriptions :: Newtype TagDescriptions _
derive instance repGenericTagDescriptions :: Generic TagDescriptions _
instance showTagDescriptions :: Show TagDescriptions where show = genericShow
instance decodeTagDescriptions :: Decode TagDescriptions where decode = genericDecode options
instance encodeTagDescriptions :: Encode TagDescriptions where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeys = TagKeys (Array TagKey)
derive instance newtypeTagKeys :: Newtype TagKeys _
derive instance repGenericTagKeys :: Generic TagKeys _
instance showTagKeys :: Show TagKeys where show = genericShow
instance decodeTagKeys :: Decode TagKeys where decode = genericDecode options
instance encodeTagKeys :: Encode TagKeys where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p>Information about a target.</p>
newtype TargetDescription = TargetDescription 
  { "Id" :: (TargetId)
  , "Port" :: NullOrUndefined (Port)
  , "AvailabilityZone" :: NullOrUndefined (ZoneName)
  }
derive instance newtypeTargetDescription :: Newtype TargetDescription _
derive instance repGenericTargetDescription :: Generic TargetDescription _
instance showTargetDescription :: Show TargetDescription where show = genericShow
instance decodeTargetDescription :: Decode TargetDescription where decode = genericDecode options
instance encodeTargetDescription :: Encode TargetDescription where encode = genericEncode options

-- | Constructs TargetDescription from required parameters
newTargetDescription :: TargetId -> TargetDescription
newTargetDescription _Id = TargetDescription { "Id": _Id, "AvailabilityZone": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing) }

-- | Constructs TargetDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetDescription' :: TargetId -> ( { "Id" :: (TargetId) , "Port" :: NullOrUndefined (Port) , "AvailabilityZone" :: NullOrUndefined (ZoneName) } -> {"Id" :: (TargetId) , "Port" :: NullOrUndefined (Port) , "AvailabilityZone" :: NullOrUndefined (ZoneName) } ) -> TargetDescription
newTargetDescription' _Id customize = (TargetDescription <<< customize) { "Id": _Id, "AvailabilityZone": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing) }



newtype TargetDescriptions = TargetDescriptions (Array TargetDescription)
derive instance newtypeTargetDescriptions :: Newtype TargetDescriptions _
derive instance repGenericTargetDescriptions :: Generic TargetDescriptions _
instance showTargetDescriptions :: Show TargetDescriptions where show = genericShow
instance decodeTargetDescriptions :: Decode TargetDescriptions where decode = genericDecode options
instance encodeTargetDescriptions :: Encode TargetDescriptions where encode = genericEncode options



-- | <p>Information about a target group.</p>
newtype TargetGroup = TargetGroup 
  { "TargetGroupArn" :: NullOrUndefined (TargetGroupArn)
  , "TargetGroupName" :: NullOrUndefined (TargetGroupName)
  , "Protocol" :: NullOrUndefined (ProtocolEnum)
  , "Port" :: NullOrUndefined (Port)
  , "VpcId" :: NullOrUndefined (VpcId)
  , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum)
  , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort)
  , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds)
  , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds)
  , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount)
  , "HealthCheckPath" :: NullOrUndefined (Path)
  , "Matcher" :: NullOrUndefined (Matcher)
  , "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns)
  , "TargetType" :: NullOrUndefined (TargetTypeEnum)
  }
derive instance newtypeTargetGroup :: Newtype TargetGroup _
derive instance repGenericTargetGroup :: Generic TargetGroup _
instance showTargetGroup :: Show TargetGroup where show = genericShow
instance decodeTargetGroup :: Decode TargetGroup where decode = genericDecode options
instance encodeTargetGroup :: Encode TargetGroup where encode = genericEncode options

-- | Constructs TargetGroup from required parameters
newTargetGroup :: TargetGroup
newTargetGroup  = TargetGroup { "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "LoadBalancerArns": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "TargetGroupArn": (NullOrUndefined Nothing), "TargetGroupName": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs TargetGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetGroup' :: ( { "TargetGroupArn" :: NullOrUndefined (TargetGroupArn) , "TargetGroupName" :: NullOrUndefined (TargetGroupName) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "Port" :: NullOrUndefined (Port) , "VpcId" :: NullOrUndefined (VpcId) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "HealthCheckPath" :: NullOrUndefined (Path) , "Matcher" :: NullOrUndefined (Matcher) , "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns) , "TargetType" :: NullOrUndefined (TargetTypeEnum) } -> {"TargetGroupArn" :: NullOrUndefined (TargetGroupArn) , "TargetGroupName" :: NullOrUndefined (TargetGroupName) , "Protocol" :: NullOrUndefined (ProtocolEnum) , "Port" :: NullOrUndefined (Port) , "VpcId" :: NullOrUndefined (VpcId) , "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds) , "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds) , "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount) , "HealthCheckPath" :: NullOrUndefined (Path) , "Matcher" :: NullOrUndefined (Matcher) , "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns) , "TargetType" :: NullOrUndefined (TargetTypeEnum) } ) -> TargetGroup
newTargetGroup'  customize = (TargetGroup <<< customize) { "HealthCheckIntervalSeconds": (NullOrUndefined Nothing), "HealthCheckPath": (NullOrUndefined Nothing), "HealthCheckPort": (NullOrUndefined Nothing), "HealthCheckProtocol": (NullOrUndefined Nothing), "HealthCheckTimeoutSeconds": (NullOrUndefined Nothing), "HealthyThresholdCount": (NullOrUndefined Nothing), "LoadBalancerArns": (NullOrUndefined Nothing), "Matcher": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "TargetGroupArn": (NullOrUndefined Nothing), "TargetGroupName": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing), "UnhealthyThresholdCount": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



newtype TargetGroupArn = TargetGroupArn String
derive instance newtypeTargetGroupArn :: Newtype TargetGroupArn _
derive instance repGenericTargetGroupArn :: Generic TargetGroupArn _
instance showTargetGroupArn :: Show TargetGroupArn where show = genericShow
instance decodeTargetGroupArn :: Decode TargetGroupArn where decode = genericDecode options
instance encodeTargetGroupArn :: Encode TargetGroupArn where encode = genericEncode options



newtype TargetGroupArns = TargetGroupArns (Array TargetGroupArn)
derive instance newtypeTargetGroupArns :: Newtype TargetGroupArns _
derive instance repGenericTargetGroupArns :: Generic TargetGroupArns _
instance showTargetGroupArns :: Show TargetGroupArns where show = genericShow
instance decodeTargetGroupArns :: Decode TargetGroupArns where decode = genericDecode options
instance encodeTargetGroupArns :: Encode TargetGroupArns where encode = genericEncode options



-- | <p>You've reached the limit on the number of load balancers per target group.</p>
newtype TargetGroupAssociationLimitException = TargetGroupAssociationLimitException Types.NoArguments
derive instance newtypeTargetGroupAssociationLimitException :: Newtype TargetGroupAssociationLimitException _
derive instance repGenericTargetGroupAssociationLimitException :: Generic TargetGroupAssociationLimitException _
instance showTargetGroupAssociationLimitException :: Show TargetGroupAssociationLimitException where show = genericShow
instance decodeTargetGroupAssociationLimitException :: Decode TargetGroupAssociationLimitException where decode = genericDecode options
instance encodeTargetGroupAssociationLimitException :: Encode TargetGroupAssociationLimitException where encode = genericEncode options



-- | <p>Information about a target group attribute.</p>
newtype TargetGroupAttribute = TargetGroupAttribute 
  { "Key" :: NullOrUndefined (TargetGroupAttributeKey)
  , "Value" :: NullOrUndefined (TargetGroupAttributeValue)
  }
derive instance newtypeTargetGroupAttribute :: Newtype TargetGroupAttribute _
derive instance repGenericTargetGroupAttribute :: Generic TargetGroupAttribute _
instance showTargetGroupAttribute :: Show TargetGroupAttribute where show = genericShow
instance decodeTargetGroupAttribute :: Decode TargetGroupAttribute where decode = genericDecode options
instance encodeTargetGroupAttribute :: Encode TargetGroupAttribute where encode = genericEncode options

-- | Constructs TargetGroupAttribute from required parameters
newTargetGroupAttribute :: TargetGroupAttribute
newTargetGroupAttribute  = TargetGroupAttribute { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs TargetGroupAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetGroupAttribute' :: ( { "Key" :: NullOrUndefined (TargetGroupAttributeKey) , "Value" :: NullOrUndefined (TargetGroupAttributeValue) } -> {"Key" :: NullOrUndefined (TargetGroupAttributeKey) , "Value" :: NullOrUndefined (TargetGroupAttributeValue) } ) -> TargetGroupAttribute
newTargetGroupAttribute'  customize = (TargetGroupAttribute <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype TargetGroupAttributeKey = TargetGroupAttributeKey String
derive instance newtypeTargetGroupAttributeKey :: Newtype TargetGroupAttributeKey _
derive instance repGenericTargetGroupAttributeKey :: Generic TargetGroupAttributeKey _
instance showTargetGroupAttributeKey :: Show TargetGroupAttributeKey where show = genericShow
instance decodeTargetGroupAttributeKey :: Decode TargetGroupAttributeKey where decode = genericDecode options
instance encodeTargetGroupAttributeKey :: Encode TargetGroupAttributeKey where encode = genericEncode options



newtype TargetGroupAttributeValue = TargetGroupAttributeValue String
derive instance newtypeTargetGroupAttributeValue :: Newtype TargetGroupAttributeValue _
derive instance repGenericTargetGroupAttributeValue :: Generic TargetGroupAttributeValue _
instance showTargetGroupAttributeValue :: Show TargetGroupAttributeValue where show = genericShow
instance decodeTargetGroupAttributeValue :: Decode TargetGroupAttributeValue where decode = genericDecode options
instance encodeTargetGroupAttributeValue :: Encode TargetGroupAttributeValue where encode = genericEncode options



newtype TargetGroupAttributes = TargetGroupAttributes (Array TargetGroupAttribute)
derive instance newtypeTargetGroupAttributes :: Newtype TargetGroupAttributes _
derive instance repGenericTargetGroupAttributes :: Generic TargetGroupAttributes _
instance showTargetGroupAttributes :: Show TargetGroupAttributes where show = genericShow
instance decodeTargetGroupAttributes :: Decode TargetGroupAttributes where decode = genericDecode options
instance encodeTargetGroupAttributes :: Encode TargetGroupAttributes where encode = genericEncode options



newtype TargetGroupName = TargetGroupName String
derive instance newtypeTargetGroupName :: Newtype TargetGroupName _
derive instance repGenericTargetGroupName :: Generic TargetGroupName _
instance showTargetGroupName :: Show TargetGroupName where show = genericShow
instance decodeTargetGroupName :: Decode TargetGroupName where decode = genericDecode options
instance encodeTargetGroupName :: Encode TargetGroupName where encode = genericEncode options



newtype TargetGroupNames = TargetGroupNames (Array TargetGroupName)
derive instance newtypeTargetGroupNames :: Newtype TargetGroupNames _
derive instance repGenericTargetGroupNames :: Generic TargetGroupNames _
instance showTargetGroupNames :: Show TargetGroupNames where show = genericShow
instance decodeTargetGroupNames :: Decode TargetGroupNames where decode = genericDecode options
instance encodeTargetGroupNames :: Encode TargetGroupNames where encode = genericEncode options



-- | <p>The specified target group does not exist.</p>
newtype TargetGroupNotFoundException = TargetGroupNotFoundException Types.NoArguments
derive instance newtypeTargetGroupNotFoundException :: Newtype TargetGroupNotFoundException _
derive instance repGenericTargetGroupNotFoundException :: Generic TargetGroupNotFoundException _
instance showTargetGroupNotFoundException :: Show TargetGroupNotFoundException where show = genericShow
instance decodeTargetGroupNotFoundException :: Decode TargetGroupNotFoundException where decode = genericDecode options
instance encodeTargetGroupNotFoundException :: Encode TargetGroupNotFoundException where encode = genericEncode options



newtype TargetGroups = TargetGroups (Array TargetGroup)
derive instance newtypeTargetGroups :: Newtype TargetGroups _
derive instance repGenericTargetGroups :: Generic TargetGroups _
instance showTargetGroups :: Show TargetGroups where show = genericShow
instance decodeTargetGroups :: Decode TargetGroups where decode = genericDecode options
instance encodeTargetGroups :: Encode TargetGroups where encode = genericEncode options



-- | <p>Information about the current health of a target.</p>
newtype TargetHealth = TargetHealth 
  { "State" :: NullOrUndefined (TargetHealthStateEnum)
  , "Reason" :: NullOrUndefined (TargetHealthReasonEnum)
  , "Description" :: NullOrUndefined (Description)
  }
derive instance newtypeTargetHealth :: Newtype TargetHealth _
derive instance repGenericTargetHealth :: Generic TargetHealth _
instance showTargetHealth :: Show TargetHealth where show = genericShow
instance decodeTargetHealth :: Decode TargetHealth where decode = genericDecode options
instance encodeTargetHealth :: Encode TargetHealth where encode = genericEncode options

-- | Constructs TargetHealth from required parameters
newTargetHealth :: TargetHealth
newTargetHealth  = TargetHealth { "Description": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }

-- | Constructs TargetHealth's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetHealth' :: ( { "State" :: NullOrUndefined (TargetHealthStateEnum) , "Reason" :: NullOrUndefined (TargetHealthReasonEnum) , "Description" :: NullOrUndefined (Description) } -> {"State" :: NullOrUndefined (TargetHealthStateEnum) , "Reason" :: NullOrUndefined (TargetHealthReasonEnum) , "Description" :: NullOrUndefined (Description) } ) -> TargetHealth
newTargetHealth'  customize = (TargetHealth <<< customize) { "Description": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }



-- | <p>Information about the health of a target.</p>
newtype TargetHealthDescription = TargetHealthDescription 
  { "Target" :: NullOrUndefined (TargetDescription)
  , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort)
  , "TargetHealth" :: NullOrUndefined (TargetHealth)
  }
derive instance newtypeTargetHealthDescription :: Newtype TargetHealthDescription _
derive instance repGenericTargetHealthDescription :: Generic TargetHealthDescription _
instance showTargetHealthDescription :: Show TargetHealthDescription where show = genericShow
instance decodeTargetHealthDescription :: Decode TargetHealthDescription where decode = genericDecode options
instance encodeTargetHealthDescription :: Encode TargetHealthDescription where encode = genericEncode options

-- | Constructs TargetHealthDescription from required parameters
newTargetHealthDescription :: TargetHealthDescription
newTargetHealthDescription  = TargetHealthDescription { "HealthCheckPort": (NullOrUndefined Nothing), "Target": (NullOrUndefined Nothing), "TargetHealth": (NullOrUndefined Nothing) }

-- | Constructs TargetHealthDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetHealthDescription' :: ( { "Target" :: NullOrUndefined (TargetDescription) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "TargetHealth" :: NullOrUndefined (TargetHealth) } -> {"Target" :: NullOrUndefined (TargetDescription) , "HealthCheckPort" :: NullOrUndefined (HealthCheckPort) , "TargetHealth" :: NullOrUndefined (TargetHealth) } ) -> TargetHealthDescription
newTargetHealthDescription'  customize = (TargetHealthDescription <<< customize) { "HealthCheckPort": (NullOrUndefined Nothing), "Target": (NullOrUndefined Nothing), "TargetHealth": (NullOrUndefined Nothing) }



newtype TargetHealthDescriptions = TargetHealthDescriptions (Array TargetHealthDescription)
derive instance newtypeTargetHealthDescriptions :: Newtype TargetHealthDescriptions _
derive instance repGenericTargetHealthDescriptions :: Generic TargetHealthDescriptions _
instance showTargetHealthDescriptions :: Show TargetHealthDescriptions where show = genericShow
instance decodeTargetHealthDescriptions :: Decode TargetHealthDescriptions where decode = genericDecode options
instance encodeTargetHealthDescriptions :: Encode TargetHealthDescriptions where encode = genericEncode options



newtype TargetHealthReasonEnum = TargetHealthReasonEnum String
derive instance newtypeTargetHealthReasonEnum :: Newtype TargetHealthReasonEnum _
derive instance repGenericTargetHealthReasonEnum :: Generic TargetHealthReasonEnum _
instance showTargetHealthReasonEnum :: Show TargetHealthReasonEnum where show = genericShow
instance decodeTargetHealthReasonEnum :: Decode TargetHealthReasonEnum where decode = genericDecode options
instance encodeTargetHealthReasonEnum :: Encode TargetHealthReasonEnum where encode = genericEncode options



newtype TargetHealthStateEnum = TargetHealthStateEnum String
derive instance newtypeTargetHealthStateEnum :: Newtype TargetHealthStateEnum _
derive instance repGenericTargetHealthStateEnum :: Generic TargetHealthStateEnum _
instance showTargetHealthStateEnum :: Show TargetHealthStateEnum where show = genericShow
instance decodeTargetHealthStateEnum :: Decode TargetHealthStateEnum where decode = genericDecode options
instance encodeTargetHealthStateEnum :: Encode TargetHealthStateEnum where encode = genericEncode options



newtype TargetId = TargetId String
derive instance newtypeTargetId :: Newtype TargetId _
derive instance repGenericTargetId :: Generic TargetId _
instance showTargetId :: Show TargetId where show = genericShow
instance decodeTargetId :: Decode TargetId where decode = genericDecode options
instance encodeTargetId :: Encode TargetId where encode = genericEncode options



newtype TargetTypeEnum = TargetTypeEnum String
derive instance newtypeTargetTypeEnum :: Newtype TargetTypeEnum _
derive instance repGenericTargetTypeEnum :: Generic TargetTypeEnum _
instance showTargetTypeEnum :: Show TargetTypeEnum where show = genericShow
instance decodeTargetTypeEnum :: Decode TargetTypeEnum where decode = genericDecode options
instance encodeTargetTypeEnum :: Encode TargetTypeEnum where encode = genericEncode options



-- | <p>You've reached the limit on the number of certificates per load balancer.</p>
newtype TooManyCertificatesException = TooManyCertificatesException Types.NoArguments
derive instance newtypeTooManyCertificatesException :: Newtype TooManyCertificatesException _
derive instance repGenericTooManyCertificatesException :: Generic TooManyCertificatesException _
instance showTooManyCertificatesException :: Show TooManyCertificatesException where show = genericShow
instance decodeTooManyCertificatesException :: Decode TooManyCertificatesException where decode = genericDecode options
instance encodeTooManyCertificatesException :: Encode TooManyCertificatesException where encode = genericEncode options



-- | <p>You've reached the limit on the number of listeners per load balancer.</p>
newtype TooManyListenersException = TooManyListenersException Types.NoArguments
derive instance newtypeTooManyListenersException :: Newtype TooManyListenersException _
derive instance repGenericTooManyListenersException :: Generic TooManyListenersException _
instance showTooManyListenersException :: Show TooManyListenersException where show = genericShow
instance decodeTooManyListenersException :: Decode TooManyListenersException where decode = genericDecode options
instance encodeTooManyListenersException :: Encode TooManyListenersException where encode = genericEncode options



-- | <p>You've reached the limit on the number of load balancers for your AWS account.</p>
newtype TooManyLoadBalancersException = TooManyLoadBalancersException Types.NoArguments
derive instance newtypeTooManyLoadBalancersException :: Newtype TooManyLoadBalancersException _
derive instance repGenericTooManyLoadBalancersException :: Generic TooManyLoadBalancersException _
instance showTooManyLoadBalancersException :: Show TooManyLoadBalancersException where show = genericShow
instance decodeTooManyLoadBalancersException :: Decode TooManyLoadBalancersException where decode = genericDecode options
instance encodeTooManyLoadBalancersException :: Encode TooManyLoadBalancersException where encode = genericEncode options



-- | <p>You've reached the limit on the number of times a target can be registered with a load balancer.</p>
newtype TooManyRegistrationsForTargetIdException = TooManyRegistrationsForTargetIdException Types.NoArguments
derive instance newtypeTooManyRegistrationsForTargetIdException :: Newtype TooManyRegistrationsForTargetIdException _
derive instance repGenericTooManyRegistrationsForTargetIdException :: Generic TooManyRegistrationsForTargetIdException _
instance showTooManyRegistrationsForTargetIdException :: Show TooManyRegistrationsForTargetIdException where show = genericShow
instance decodeTooManyRegistrationsForTargetIdException :: Decode TooManyRegistrationsForTargetIdException where decode = genericDecode options
instance encodeTooManyRegistrationsForTargetIdException :: Encode TooManyRegistrationsForTargetIdException where encode = genericEncode options



-- | <p>You've reached the limit on the number of rules per load balancer.</p>
newtype TooManyRulesException = TooManyRulesException Types.NoArguments
derive instance newtypeTooManyRulesException :: Newtype TooManyRulesException _
derive instance repGenericTooManyRulesException :: Generic TooManyRulesException _
instance showTooManyRulesException :: Show TooManyRulesException where show = genericShow
instance decodeTooManyRulesException :: Decode TooManyRulesException where decode = genericDecode options
instance encodeTooManyRulesException :: Encode TooManyRulesException where encode = genericEncode options



-- | <p>You've reached the limit on the number of tags per load balancer.</p>
newtype TooManyTagsException = TooManyTagsException Types.NoArguments
derive instance newtypeTooManyTagsException :: Newtype TooManyTagsException _
derive instance repGenericTooManyTagsException :: Generic TooManyTagsException _
instance showTooManyTagsException :: Show TooManyTagsException where show = genericShow
instance decodeTooManyTagsException :: Decode TooManyTagsException where decode = genericDecode options
instance encodeTooManyTagsException :: Encode TooManyTagsException where encode = genericEncode options



-- | <p>You've reached the limit on the number of target groups for your AWS account.</p>
newtype TooManyTargetGroupsException = TooManyTargetGroupsException Types.NoArguments
derive instance newtypeTooManyTargetGroupsException :: Newtype TooManyTargetGroupsException _
derive instance repGenericTooManyTargetGroupsException :: Generic TooManyTargetGroupsException _
instance showTooManyTargetGroupsException :: Show TooManyTargetGroupsException where show = genericShow
instance decodeTooManyTargetGroupsException :: Decode TooManyTargetGroupsException where decode = genericDecode options
instance encodeTooManyTargetGroupsException :: Encode TooManyTargetGroupsException where encode = genericEncode options



-- | <p>You've reached the limit on the number of targets.</p>
newtype TooManyTargetsException = TooManyTargetsException Types.NoArguments
derive instance newtypeTooManyTargetsException :: Newtype TooManyTargetsException _
derive instance repGenericTooManyTargetsException :: Generic TooManyTargetsException _
instance showTooManyTargetsException :: Show TooManyTargetsException where show = genericShow
instance decodeTooManyTargetsException :: Decode TooManyTargetsException where decode = genericDecode options
instance encodeTooManyTargetsException :: Encode TooManyTargetsException where encode = genericEncode options



-- | <p>The specified protocol is not supported.</p>
newtype UnsupportedProtocolException = UnsupportedProtocolException Types.NoArguments
derive instance newtypeUnsupportedProtocolException :: Newtype UnsupportedProtocolException _
derive instance repGenericUnsupportedProtocolException :: Generic UnsupportedProtocolException _
instance showUnsupportedProtocolException :: Show UnsupportedProtocolException where show = genericShow
instance decodeUnsupportedProtocolException :: Decode UnsupportedProtocolException where decode = genericDecode options
instance encodeUnsupportedProtocolException :: Encode UnsupportedProtocolException where encode = genericEncode options



newtype VpcId = VpcId String
derive instance newtypeVpcId :: Newtype VpcId _
derive instance repGenericVpcId :: Generic VpcId _
instance showVpcId :: Show VpcId where show = genericShow
instance decodeVpcId :: Decode VpcId where decode = genericDecode options
instance encodeVpcId :: Encode VpcId where encode = genericEncode options



newtype ZoneName = ZoneName String
derive instance newtypeZoneName :: Newtype ZoneName _
derive instance repGenericZoneName :: Generic ZoneName _
instance showZoneName :: Show ZoneName where show = genericShow
instance decodeZoneName :: Decode ZoneName where decode = genericDecode options
instance encodeZoneName :: Encode ZoneName where encode = genericEncode options

