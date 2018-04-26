## Module AWS.ELBv2.Types

#### `options`

``` purescript
options :: Options
```

#### `Action`

``` purescript
newtype Action
  = Action { "Type" :: ActionTypeEnum, "TargetGroupArn" :: TargetGroupArn }
```

<p>Information about an action.</p>

##### Instances
``` purescript
Newtype Action _
Generic Action _
Show Action
Decode Action
Encode Action
```

#### `newAction`

``` purescript
newAction :: TargetGroupArn -> ActionTypeEnum -> Action
```

Constructs Action from required parameters

#### `newAction'`

``` purescript
newAction' :: TargetGroupArn -> ActionTypeEnum -> ({ "Type" :: ActionTypeEnum, "TargetGroupArn" :: TargetGroupArn } -> { "Type" :: ActionTypeEnum, "TargetGroupArn" :: TargetGroupArn }) -> Action
```

Constructs Action's fields from required parameters

#### `ActionTypeEnum`

``` purescript
newtype ActionTypeEnum
  = ActionTypeEnum String
```

##### Instances
``` purescript
Newtype ActionTypeEnum _
Generic ActionTypeEnum _
Show ActionTypeEnum
Decode ActionTypeEnum
Encode ActionTypeEnum
```

#### `Actions`

``` purescript
newtype Actions
  = Actions (Array Action)
```

##### Instances
``` purescript
Newtype Actions _
Generic Actions _
Show Actions
Decode Actions
Encode Actions
```

#### `AddListenerCertificatesInput`

``` purescript
newtype AddListenerCertificatesInput
  = AddListenerCertificatesInput { "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList }
```

##### Instances
``` purescript
Newtype AddListenerCertificatesInput _
Generic AddListenerCertificatesInput _
Show AddListenerCertificatesInput
Decode AddListenerCertificatesInput
Encode AddListenerCertificatesInput
```

#### `newAddListenerCertificatesInput`

``` purescript
newAddListenerCertificatesInput :: CertificateList -> ListenerArn -> AddListenerCertificatesInput
```

Constructs AddListenerCertificatesInput from required parameters

#### `newAddListenerCertificatesInput'`

``` purescript
newAddListenerCertificatesInput' :: CertificateList -> ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList } -> { "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList }) -> AddListenerCertificatesInput
```

Constructs AddListenerCertificatesInput's fields from required parameters

#### `AddListenerCertificatesOutput`

``` purescript
newtype AddListenerCertificatesOutput
  = AddListenerCertificatesOutput { "Certificates" :: Maybe (CertificateList) }
```

##### Instances
``` purescript
Newtype AddListenerCertificatesOutput _
Generic AddListenerCertificatesOutput _
Show AddListenerCertificatesOutput
Decode AddListenerCertificatesOutput
Encode AddListenerCertificatesOutput
```

#### `newAddListenerCertificatesOutput`

``` purescript
newAddListenerCertificatesOutput :: AddListenerCertificatesOutput
```

Constructs AddListenerCertificatesOutput from required parameters

#### `newAddListenerCertificatesOutput'`

``` purescript
newAddListenerCertificatesOutput' :: ({ "Certificates" :: Maybe (CertificateList) } -> { "Certificates" :: Maybe (CertificateList) }) -> AddListenerCertificatesOutput
```

Constructs AddListenerCertificatesOutput's fields from required parameters

#### `AddTagsInput`

``` purescript
newtype AddTagsInput
  = AddTagsInput { "ResourceArns" :: ResourceArns, "Tags" :: TagList }
```

##### Instances
``` purescript
Newtype AddTagsInput _
Generic AddTagsInput _
Show AddTagsInput
Decode AddTagsInput
Encode AddTagsInput
```

#### `newAddTagsInput`

``` purescript
newAddTagsInput :: ResourceArns -> TagList -> AddTagsInput
```

Constructs AddTagsInput from required parameters

#### `newAddTagsInput'`

``` purescript
newAddTagsInput' :: ResourceArns -> TagList -> ({ "ResourceArns" :: ResourceArns, "Tags" :: TagList } -> { "ResourceArns" :: ResourceArns, "Tags" :: TagList }) -> AddTagsInput
```

Constructs AddTagsInput's fields from required parameters

#### `AddTagsOutput`

``` purescript
newtype AddTagsOutput
  = AddTagsOutput NoArguments
```

##### Instances
``` purescript
Newtype AddTagsOutput _
Generic AddTagsOutput _
Show AddTagsOutput
Decode AddTagsOutput
Encode AddTagsOutput
```

#### `AllocationId`

``` purescript
newtype AllocationId
  = AllocationId String
```

##### Instances
``` purescript
Newtype AllocationId _
Generic AllocationId _
Show AllocationId
Decode AllocationId
Encode AllocationId
```

#### `AllocationIdNotFoundException`

``` purescript
newtype AllocationIdNotFoundException
  = AllocationIdNotFoundException NoArguments
```

<p>The specified allocation ID does not exist.</p>

##### Instances
``` purescript
Newtype AllocationIdNotFoundException _
Generic AllocationIdNotFoundException _
Show AllocationIdNotFoundException
Decode AllocationIdNotFoundException
Encode AllocationIdNotFoundException
```

#### `AvailabilityZone`

``` purescript
newtype AvailabilityZone
  = AvailabilityZone { "ZoneName" :: Maybe (ZoneName), "SubnetId" :: Maybe (SubnetId), "LoadBalancerAddresses" :: Maybe (LoadBalancerAddresses) }
```

<p>Information about an Availability Zone.</p>

##### Instances
``` purescript
Newtype AvailabilityZone _
Generic AvailabilityZone _
Show AvailabilityZone
Decode AvailabilityZone
Encode AvailabilityZone
```

#### `newAvailabilityZone`

``` purescript
newAvailabilityZone :: AvailabilityZone
```

Constructs AvailabilityZone from required parameters

#### `newAvailabilityZone'`

``` purescript
newAvailabilityZone' :: ({ "ZoneName" :: Maybe (ZoneName), "SubnetId" :: Maybe (SubnetId), "LoadBalancerAddresses" :: Maybe (LoadBalancerAddresses) } -> { "ZoneName" :: Maybe (ZoneName), "SubnetId" :: Maybe (SubnetId), "LoadBalancerAddresses" :: Maybe (LoadBalancerAddresses) }) -> AvailabilityZone
```

Constructs AvailabilityZone's fields from required parameters

#### `AvailabilityZoneNotSupportedException`

``` purescript
newtype AvailabilityZoneNotSupportedException
  = AvailabilityZoneNotSupportedException NoArguments
```

<p>The specified Availability Zone is not supported.</p>

##### Instances
``` purescript
Newtype AvailabilityZoneNotSupportedException _
Generic AvailabilityZoneNotSupportedException _
Show AvailabilityZoneNotSupportedException
Decode AvailabilityZoneNotSupportedException
Encode AvailabilityZoneNotSupportedException
```

#### `AvailabilityZones`

``` purescript
newtype AvailabilityZones
  = AvailabilityZones (Array AvailabilityZone)
```

##### Instances
``` purescript
Newtype AvailabilityZones _
Generic AvailabilityZones _
Show AvailabilityZones
Decode AvailabilityZones
Encode AvailabilityZones
```

#### `CanonicalHostedZoneId`

``` purescript
newtype CanonicalHostedZoneId
  = CanonicalHostedZoneId String
```

##### Instances
``` purescript
Newtype CanonicalHostedZoneId _
Generic CanonicalHostedZoneId _
Show CanonicalHostedZoneId
Decode CanonicalHostedZoneId
Encode CanonicalHostedZoneId
```

#### `Certificate`

``` purescript
newtype Certificate
  = Certificate { "CertificateArn" :: Maybe (CertificateArn), "IsDefault" :: Maybe (Default) }
```

<p>Information about an SSL server certificate.</p>

##### Instances
``` purescript
Newtype Certificate _
Generic Certificate _
Show Certificate
Decode Certificate
Encode Certificate
```

#### `newCertificate`

``` purescript
newCertificate :: Certificate
```

Constructs Certificate from required parameters

#### `newCertificate'`

``` purescript
newCertificate' :: ({ "CertificateArn" :: Maybe (CertificateArn), "IsDefault" :: Maybe (Default) } -> { "CertificateArn" :: Maybe (CertificateArn), "IsDefault" :: Maybe (Default) }) -> Certificate
```

Constructs Certificate's fields from required parameters

#### `CertificateArn`

``` purescript
newtype CertificateArn
  = CertificateArn String
```

##### Instances
``` purescript
Newtype CertificateArn _
Generic CertificateArn _
Show CertificateArn
Decode CertificateArn
Encode CertificateArn
```

#### `CertificateList`

``` purescript
newtype CertificateList
  = CertificateList (Array Certificate)
```

##### Instances
``` purescript
Newtype CertificateList _
Generic CertificateList _
Show CertificateList
Decode CertificateList
Encode CertificateList
```

#### `CertificateNotFoundException`

``` purescript
newtype CertificateNotFoundException
  = CertificateNotFoundException NoArguments
```

<p>The specified certificate does not exist.</p>

##### Instances
``` purescript
Newtype CertificateNotFoundException _
Generic CertificateNotFoundException _
Show CertificateNotFoundException
Decode CertificateNotFoundException
Encode CertificateNotFoundException
```

#### `Cipher`

``` purescript
newtype Cipher
  = Cipher { "Name" :: Maybe (CipherName), "Priority" :: Maybe (CipherPriority) }
```

<p>Information about a cipher used in a policy.</p>

##### Instances
``` purescript
Newtype Cipher _
Generic Cipher _
Show Cipher
Decode Cipher
Encode Cipher
```

#### `newCipher`

``` purescript
newCipher :: Cipher
```

Constructs Cipher from required parameters

#### `newCipher'`

``` purescript
newCipher' :: ({ "Name" :: Maybe (CipherName), "Priority" :: Maybe (CipherPriority) } -> { "Name" :: Maybe (CipherName), "Priority" :: Maybe (CipherPriority) }) -> Cipher
```

Constructs Cipher's fields from required parameters

#### `CipherName`

``` purescript
newtype CipherName
  = CipherName String
```

##### Instances
``` purescript
Newtype CipherName _
Generic CipherName _
Show CipherName
Decode CipherName
Encode CipherName
```

#### `CipherPriority`

``` purescript
newtype CipherPriority
  = CipherPriority Int
```

##### Instances
``` purescript
Newtype CipherPriority _
Generic CipherPriority _
Show CipherPriority
Decode CipherPriority
Encode CipherPriority
```

#### `Ciphers`

``` purescript
newtype Ciphers
  = Ciphers (Array Cipher)
```

##### Instances
``` purescript
Newtype Ciphers _
Generic Ciphers _
Show Ciphers
Decode Ciphers
Encode Ciphers
```

#### `ConditionFieldName`

``` purescript
newtype ConditionFieldName
  = ConditionFieldName String
```

##### Instances
``` purescript
Newtype ConditionFieldName _
Generic ConditionFieldName _
Show ConditionFieldName
Decode ConditionFieldName
Encode ConditionFieldName
```

#### `CreateListenerInput`

``` purescript
newtype CreateListenerInput
  = CreateListenerInput { "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Actions }
```

##### Instances
``` purescript
Newtype CreateListenerInput _
Generic CreateListenerInput _
Show CreateListenerInput
Decode CreateListenerInput
Encode CreateListenerInput
```

#### `newCreateListenerInput`

``` purescript
newCreateListenerInput :: Actions -> LoadBalancerArn -> Port -> ProtocolEnum -> CreateListenerInput
```

Constructs CreateListenerInput from required parameters

#### `newCreateListenerInput'`

``` purescript
newCreateListenerInput' :: Actions -> LoadBalancerArn -> Port -> ProtocolEnum -> ({ "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Actions } -> { "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Actions }) -> CreateListenerInput
```

Constructs CreateListenerInput's fields from required parameters

#### `CreateListenerOutput`

``` purescript
newtype CreateListenerOutput
  = CreateListenerOutput { "Listeners" :: Maybe (Listeners) }
```

##### Instances
``` purescript
Newtype CreateListenerOutput _
Generic CreateListenerOutput _
Show CreateListenerOutput
Decode CreateListenerOutput
Encode CreateListenerOutput
```

#### `newCreateListenerOutput`

``` purescript
newCreateListenerOutput :: CreateListenerOutput
```

Constructs CreateListenerOutput from required parameters

#### `newCreateListenerOutput'`

``` purescript
newCreateListenerOutput' :: ({ "Listeners" :: Maybe (Listeners) } -> { "Listeners" :: Maybe (Listeners) }) -> CreateListenerOutput
```

Constructs CreateListenerOutput's fields from required parameters

#### `CreateLoadBalancerInput`

``` purescript
newtype CreateLoadBalancerInput
  = CreateLoadBalancerInput { "Name" :: LoadBalancerName, "Subnets" :: Maybe (Subnets), "SubnetMappings" :: Maybe (SubnetMappings), "SecurityGroups" :: Maybe (SecurityGroups), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "Tags" :: Maybe (TagList), "Type" :: Maybe (LoadBalancerTypeEnum), "IpAddressType" :: Maybe (IpAddressType) }
```

##### Instances
``` purescript
Newtype CreateLoadBalancerInput _
Generic CreateLoadBalancerInput _
Show CreateLoadBalancerInput
Decode CreateLoadBalancerInput
Encode CreateLoadBalancerInput
```

#### `newCreateLoadBalancerInput`

``` purescript
newCreateLoadBalancerInput :: LoadBalancerName -> CreateLoadBalancerInput
```

Constructs CreateLoadBalancerInput from required parameters

#### `newCreateLoadBalancerInput'`

``` purescript
newCreateLoadBalancerInput' :: LoadBalancerName -> ({ "Name" :: LoadBalancerName, "Subnets" :: Maybe (Subnets), "SubnetMappings" :: Maybe (SubnetMappings), "SecurityGroups" :: Maybe (SecurityGroups), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "Tags" :: Maybe (TagList), "Type" :: Maybe (LoadBalancerTypeEnum), "IpAddressType" :: Maybe (IpAddressType) } -> { "Name" :: LoadBalancerName, "Subnets" :: Maybe (Subnets), "SubnetMappings" :: Maybe (SubnetMappings), "SecurityGroups" :: Maybe (SecurityGroups), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "Tags" :: Maybe (TagList), "Type" :: Maybe (LoadBalancerTypeEnum), "IpAddressType" :: Maybe (IpAddressType) }) -> CreateLoadBalancerInput
```

Constructs CreateLoadBalancerInput's fields from required parameters

#### `CreateLoadBalancerOutput`

``` purescript
newtype CreateLoadBalancerOutput
  = CreateLoadBalancerOutput { "LoadBalancers" :: Maybe (LoadBalancers) }
```

##### Instances
``` purescript
Newtype CreateLoadBalancerOutput _
Generic CreateLoadBalancerOutput _
Show CreateLoadBalancerOutput
Decode CreateLoadBalancerOutput
Encode CreateLoadBalancerOutput
```

#### `newCreateLoadBalancerOutput`

``` purescript
newCreateLoadBalancerOutput :: CreateLoadBalancerOutput
```

Constructs CreateLoadBalancerOutput from required parameters

#### `newCreateLoadBalancerOutput'`

``` purescript
newCreateLoadBalancerOutput' :: ({ "LoadBalancers" :: Maybe (LoadBalancers) } -> { "LoadBalancers" :: Maybe (LoadBalancers) }) -> CreateLoadBalancerOutput
```

Constructs CreateLoadBalancerOutput's fields from required parameters

#### `CreateRuleInput`

``` purescript
newtype CreateRuleInput
  = CreateRuleInput { "ListenerArn" :: ListenerArn, "Conditions" :: RuleConditionList, "Priority" :: RulePriority, "Actions" :: Actions }
```

##### Instances
``` purescript
Newtype CreateRuleInput _
Generic CreateRuleInput _
Show CreateRuleInput
Decode CreateRuleInput
Encode CreateRuleInput
```

#### `newCreateRuleInput`

``` purescript
newCreateRuleInput :: Actions -> RuleConditionList -> ListenerArn -> RulePriority -> CreateRuleInput
```

Constructs CreateRuleInput from required parameters

#### `newCreateRuleInput'`

``` purescript
newCreateRuleInput' :: Actions -> RuleConditionList -> ListenerArn -> RulePriority -> ({ "ListenerArn" :: ListenerArn, "Conditions" :: RuleConditionList, "Priority" :: RulePriority, "Actions" :: Actions } -> { "ListenerArn" :: ListenerArn, "Conditions" :: RuleConditionList, "Priority" :: RulePriority, "Actions" :: Actions }) -> CreateRuleInput
```

Constructs CreateRuleInput's fields from required parameters

#### `CreateRuleOutput`

``` purescript
newtype CreateRuleOutput
  = CreateRuleOutput { "Rules" :: Maybe (Rules) }
```

##### Instances
``` purescript
Newtype CreateRuleOutput _
Generic CreateRuleOutput _
Show CreateRuleOutput
Decode CreateRuleOutput
Encode CreateRuleOutput
```

#### `newCreateRuleOutput`

``` purescript
newCreateRuleOutput :: CreateRuleOutput
```

Constructs CreateRuleOutput from required parameters

#### `newCreateRuleOutput'`

``` purescript
newCreateRuleOutput' :: ({ "Rules" :: Maybe (Rules) } -> { "Rules" :: Maybe (Rules) }) -> CreateRuleOutput
```

Constructs CreateRuleOutput's fields from required parameters

#### `CreateTargetGroupInput`

``` purescript
newtype CreateTargetGroupInput
  = CreateTargetGroupInput { "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher), "TargetType" :: Maybe (TargetTypeEnum) }
```

##### Instances
``` purescript
Newtype CreateTargetGroupInput _
Generic CreateTargetGroupInput _
Show CreateTargetGroupInput
Decode CreateTargetGroupInput
Encode CreateTargetGroupInput
```

#### `newCreateTargetGroupInput`

``` purescript
newCreateTargetGroupInput :: TargetGroupName -> Port -> ProtocolEnum -> VpcId -> CreateTargetGroupInput
```

Constructs CreateTargetGroupInput from required parameters

#### `newCreateTargetGroupInput'`

``` purescript
newCreateTargetGroupInput' :: TargetGroupName -> Port -> ProtocolEnum -> VpcId -> ({ "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher), "TargetType" :: Maybe (TargetTypeEnum) } -> { "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher), "TargetType" :: Maybe (TargetTypeEnum) }) -> CreateTargetGroupInput
```

Constructs CreateTargetGroupInput's fields from required parameters

#### `CreateTargetGroupOutput`

``` purescript
newtype CreateTargetGroupOutput
  = CreateTargetGroupOutput { "TargetGroups" :: Maybe (TargetGroups) }
```

##### Instances
``` purescript
Newtype CreateTargetGroupOutput _
Generic CreateTargetGroupOutput _
Show CreateTargetGroupOutput
Decode CreateTargetGroupOutput
Encode CreateTargetGroupOutput
```

#### `newCreateTargetGroupOutput`

``` purescript
newCreateTargetGroupOutput :: CreateTargetGroupOutput
```

Constructs CreateTargetGroupOutput from required parameters

#### `newCreateTargetGroupOutput'`

``` purescript
newCreateTargetGroupOutput' :: ({ "TargetGroups" :: Maybe (TargetGroups) } -> { "TargetGroups" :: Maybe (TargetGroups) }) -> CreateTargetGroupOutput
```

Constructs CreateTargetGroupOutput's fields from required parameters

#### `CreatedTime`

``` purescript
newtype CreatedTime
  = CreatedTime Timestamp
```

##### Instances
``` purescript
Newtype CreatedTime _
Generic CreatedTime _
Show CreatedTime
Decode CreatedTime
Encode CreatedTime
```

#### `DNSName`

``` purescript
newtype DNSName
  = DNSName String
```

##### Instances
``` purescript
Newtype DNSName _
Generic DNSName _
Show DNSName
Decode DNSName
Encode DNSName
```

#### `Default`

``` purescript
newtype Default
  = Default Boolean
```

##### Instances
``` purescript
Newtype Default _
Generic Default _
Show Default
Decode Default
Encode Default
```

#### `DeleteListenerInput`

``` purescript
newtype DeleteListenerInput
  = DeleteListenerInput { "ListenerArn" :: ListenerArn }
```

##### Instances
``` purescript
Newtype DeleteListenerInput _
Generic DeleteListenerInput _
Show DeleteListenerInput
Decode DeleteListenerInput
Encode DeleteListenerInput
```

#### `newDeleteListenerInput`

``` purescript
newDeleteListenerInput :: ListenerArn -> DeleteListenerInput
```

Constructs DeleteListenerInput from required parameters

#### `newDeleteListenerInput'`

``` purescript
newDeleteListenerInput' :: ListenerArn -> ({ "ListenerArn" :: ListenerArn } -> { "ListenerArn" :: ListenerArn }) -> DeleteListenerInput
```

Constructs DeleteListenerInput's fields from required parameters

#### `DeleteListenerOutput`

``` purescript
newtype DeleteListenerOutput
  = DeleteListenerOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteListenerOutput _
Generic DeleteListenerOutput _
Show DeleteListenerOutput
Decode DeleteListenerOutput
Encode DeleteListenerOutput
```

#### `DeleteLoadBalancerInput`

``` purescript
newtype DeleteLoadBalancerInput
  = DeleteLoadBalancerInput { "LoadBalancerArn" :: LoadBalancerArn }
```

##### Instances
``` purescript
Newtype DeleteLoadBalancerInput _
Generic DeleteLoadBalancerInput _
Show DeleteLoadBalancerInput
Decode DeleteLoadBalancerInput
Encode DeleteLoadBalancerInput
```

#### `newDeleteLoadBalancerInput`

``` purescript
newDeleteLoadBalancerInput :: LoadBalancerArn -> DeleteLoadBalancerInput
```

Constructs DeleteLoadBalancerInput from required parameters

#### `newDeleteLoadBalancerInput'`

``` purescript
newDeleteLoadBalancerInput' :: LoadBalancerArn -> ({ "LoadBalancerArn" :: LoadBalancerArn } -> { "LoadBalancerArn" :: LoadBalancerArn }) -> DeleteLoadBalancerInput
```

Constructs DeleteLoadBalancerInput's fields from required parameters

#### `DeleteLoadBalancerOutput`

``` purescript
newtype DeleteLoadBalancerOutput
  = DeleteLoadBalancerOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteLoadBalancerOutput _
Generic DeleteLoadBalancerOutput _
Show DeleteLoadBalancerOutput
Decode DeleteLoadBalancerOutput
Encode DeleteLoadBalancerOutput
```

#### `DeleteRuleInput`

``` purescript
newtype DeleteRuleInput
  = DeleteRuleInput { "RuleArn" :: RuleArn }
```

##### Instances
``` purescript
Newtype DeleteRuleInput _
Generic DeleteRuleInput _
Show DeleteRuleInput
Decode DeleteRuleInput
Encode DeleteRuleInput
```

#### `newDeleteRuleInput`

``` purescript
newDeleteRuleInput :: RuleArn -> DeleteRuleInput
```

Constructs DeleteRuleInput from required parameters

#### `newDeleteRuleInput'`

``` purescript
newDeleteRuleInput' :: RuleArn -> ({ "RuleArn" :: RuleArn } -> { "RuleArn" :: RuleArn }) -> DeleteRuleInput
```

Constructs DeleteRuleInput's fields from required parameters

#### `DeleteRuleOutput`

``` purescript
newtype DeleteRuleOutput
  = DeleteRuleOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteRuleOutput _
Generic DeleteRuleOutput _
Show DeleteRuleOutput
Decode DeleteRuleOutput
Encode DeleteRuleOutput
```

#### `DeleteTargetGroupInput`

``` purescript
newtype DeleteTargetGroupInput
  = DeleteTargetGroupInput { "TargetGroupArn" :: TargetGroupArn }
```

##### Instances
``` purescript
Newtype DeleteTargetGroupInput _
Generic DeleteTargetGroupInput _
Show DeleteTargetGroupInput
Decode DeleteTargetGroupInput
Encode DeleteTargetGroupInput
```

#### `newDeleteTargetGroupInput`

``` purescript
newDeleteTargetGroupInput :: TargetGroupArn -> DeleteTargetGroupInput
```

Constructs DeleteTargetGroupInput from required parameters

#### `newDeleteTargetGroupInput'`

``` purescript
newDeleteTargetGroupInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn } -> { "TargetGroupArn" :: TargetGroupArn }) -> DeleteTargetGroupInput
```

Constructs DeleteTargetGroupInput's fields from required parameters

#### `DeleteTargetGroupOutput`

``` purescript
newtype DeleteTargetGroupOutput
  = DeleteTargetGroupOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteTargetGroupOutput _
Generic DeleteTargetGroupOutput _
Show DeleteTargetGroupOutput
Decode DeleteTargetGroupOutput
Encode DeleteTargetGroupOutput
```

#### `DeregisterTargetsInput`

``` purescript
newtype DeregisterTargetsInput
  = DeregisterTargetsInput { "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions }
```

##### Instances
``` purescript
Newtype DeregisterTargetsInput _
Generic DeregisterTargetsInput _
Show DeregisterTargetsInput
Decode DeregisterTargetsInput
Encode DeregisterTargetsInput
```

#### `newDeregisterTargetsInput`

``` purescript
newDeregisterTargetsInput :: TargetGroupArn -> TargetDescriptions -> DeregisterTargetsInput
```

Constructs DeregisterTargetsInput from required parameters

#### `newDeregisterTargetsInput'`

``` purescript
newDeregisterTargetsInput' :: TargetGroupArn -> TargetDescriptions -> ({ "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions } -> { "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions }) -> DeregisterTargetsInput
```

Constructs DeregisterTargetsInput's fields from required parameters

#### `DeregisterTargetsOutput`

``` purescript
newtype DeregisterTargetsOutput
  = DeregisterTargetsOutput NoArguments
```

##### Instances
``` purescript
Newtype DeregisterTargetsOutput _
Generic DeregisterTargetsOutput _
Show DeregisterTargetsOutput
Decode DeregisterTargetsOutput
Encode DeregisterTargetsOutput
```

#### `DescribeAccountLimitsInput`

``` purescript
newtype DescribeAccountLimitsInput
  = DescribeAccountLimitsInput { "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeAccountLimitsInput _
Generic DescribeAccountLimitsInput _
Show DescribeAccountLimitsInput
Decode DescribeAccountLimitsInput
Encode DescribeAccountLimitsInput
```

#### `newDescribeAccountLimitsInput`

``` purescript
newDescribeAccountLimitsInput :: DescribeAccountLimitsInput
```

Constructs DescribeAccountLimitsInput from required parameters

#### `newDescribeAccountLimitsInput'`

``` purescript
newDescribeAccountLimitsInput' :: ({ "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeAccountLimitsInput
```

Constructs DescribeAccountLimitsInput's fields from required parameters

#### `DescribeAccountLimitsOutput`

``` purescript
newtype DescribeAccountLimitsOutput
  = DescribeAccountLimitsOutput { "Limits" :: Maybe (Limits), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeAccountLimitsOutput _
Generic DescribeAccountLimitsOutput _
Show DescribeAccountLimitsOutput
Decode DescribeAccountLimitsOutput
Encode DescribeAccountLimitsOutput
```

#### `newDescribeAccountLimitsOutput`

``` purescript
newDescribeAccountLimitsOutput :: DescribeAccountLimitsOutput
```

Constructs DescribeAccountLimitsOutput from required parameters

#### `newDescribeAccountLimitsOutput'`

``` purescript
newDescribeAccountLimitsOutput' :: ({ "Limits" :: Maybe (Limits), "NextMarker" :: Maybe (Marker) } -> { "Limits" :: Maybe (Limits), "NextMarker" :: Maybe (Marker) }) -> DescribeAccountLimitsOutput
```

Constructs DescribeAccountLimitsOutput's fields from required parameters

#### `DescribeListenerCertificatesInput`

``` purescript
newtype DescribeListenerCertificatesInput
  = DescribeListenerCertificatesInput { "ListenerArn" :: ListenerArn, "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeListenerCertificatesInput _
Generic DescribeListenerCertificatesInput _
Show DescribeListenerCertificatesInput
Decode DescribeListenerCertificatesInput
Encode DescribeListenerCertificatesInput
```

#### `newDescribeListenerCertificatesInput`

``` purescript
newDescribeListenerCertificatesInput :: ListenerArn -> DescribeListenerCertificatesInput
```

Constructs DescribeListenerCertificatesInput from required parameters

#### `newDescribeListenerCertificatesInput'`

``` purescript
newDescribeListenerCertificatesInput' :: ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "ListenerArn" :: ListenerArn, "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeListenerCertificatesInput
```

Constructs DescribeListenerCertificatesInput's fields from required parameters

#### `DescribeListenerCertificatesOutput`

``` purescript
newtype DescribeListenerCertificatesOutput
  = DescribeListenerCertificatesOutput { "Certificates" :: Maybe (CertificateList), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeListenerCertificatesOutput _
Generic DescribeListenerCertificatesOutput _
Show DescribeListenerCertificatesOutput
Decode DescribeListenerCertificatesOutput
Encode DescribeListenerCertificatesOutput
```

#### `newDescribeListenerCertificatesOutput`

``` purescript
newDescribeListenerCertificatesOutput :: DescribeListenerCertificatesOutput
```

Constructs DescribeListenerCertificatesOutput from required parameters

#### `newDescribeListenerCertificatesOutput'`

``` purescript
newDescribeListenerCertificatesOutput' :: ({ "Certificates" :: Maybe (CertificateList), "NextMarker" :: Maybe (Marker) } -> { "Certificates" :: Maybe (CertificateList), "NextMarker" :: Maybe (Marker) }) -> DescribeListenerCertificatesOutput
```

Constructs DescribeListenerCertificatesOutput's fields from required parameters

#### `DescribeListenersInput`

``` purescript
newtype DescribeListenersInput
  = DescribeListenersInput { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "ListenerArns" :: Maybe (ListenerArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeListenersInput _
Generic DescribeListenersInput _
Show DescribeListenersInput
Decode DescribeListenersInput
Encode DescribeListenersInput
```

#### `newDescribeListenersInput`

``` purescript
newDescribeListenersInput :: DescribeListenersInput
```

Constructs DescribeListenersInput from required parameters

#### `newDescribeListenersInput'`

``` purescript
newDescribeListenersInput' :: ({ "LoadBalancerArn" :: Maybe (LoadBalancerArn), "ListenerArns" :: Maybe (ListenerArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "ListenerArns" :: Maybe (ListenerArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeListenersInput
```

Constructs DescribeListenersInput's fields from required parameters

#### `DescribeListenersOutput`

``` purescript
newtype DescribeListenersOutput
  = DescribeListenersOutput { "Listeners" :: Maybe (Listeners), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeListenersOutput _
Generic DescribeListenersOutput _
Show DescribeListenersOutput
Decode DescribeListenersOutput
Encode DescribeListenersOutput
```

#### `newDescribeListenersOutput`

``` purescript
newDescribeListenersOutput :: DescribeListenersOutput
```

Constructs DescribeListenersOutput from required parameters

#### `newDescribeListenersOutput'`

``` purescript
newDescribeListenersOutput' :: ({ "Listeners" :: Maybe (Listeners), "NextMarker" :: Maybe (Marker) } -> { "Listeners" :: Maybe (Listeners), "NextMarker" :: Maybe (Marker) }) -> DescribeListenersOutput
```

Constructs DescribeListenersOutput's fields from required parameters

#### `DescribeLoadBalancerAttributesInput`

``` purescript
newtype DescribeLoadBalancerAttributesInput
  = DescribeLoadBalancerAttributesInput { "LoadBalancerArn" :: LoadBalancerArn }
```

##### Instances
``` purescript
Newtype DescribeLoadBalancerAttributesInput _
Generic DescribeLoadBalancerAttributesInput _
Show DescribeLoadBalancerAttributesInput
Decode DescribeLoadBalancerAttributesInput
Encode DescribeLoadBalancerAttributesInput
```

#### `newDescribeLoadBalancerAttributesInput`

``` purescript
newDescribeLoadBalancerAttributesInput :: LoadBalancerArn -> DescribeLoadBalancerAttributesInput
```

Constructs DescribeLoadBalancerAttributesInput from required parameters

#### `newDescribeLoadBalancerAttributesInput'`

``` purescript
newDescribeLoadBalancerAttributesInput' :: LoadBalancerArn -> ({ "LoadBalancerArn" :: LoadBalancerArn } -> { "LoadBalancerArn" :: LoadBalancerArn }) -> DescribeLoadBalancerAttributesInput
```

Constructs DescribeLoadBalancerAttributesInput's fields from required parameters

#### `DescribeLoadBalancerAttributesOutput`

``` purescript
newtype DescribeLoadBalancerAttributesOutput
  = DescribeLoadBalancerAttributesOutput { "Attributes" :: Maybe (LoadBalancerAttributes) }
```

##### Instances
``` purescript
Newtype DescribeLoadBalancerAttributesOutput _
Generic DescribeLoadBalancerAttributesOutput _
Show DescribeLoadBalancerAttributesOutput
Decode DescribeLoadBalancerAttributesOutput
Encode DescribeLoadBalancerAttributesOutput
```

#### `newDescribeLoadBalancerAttributesOutput`

``` purescript
newDescribeLoadBalancerAttributesOutput :: DescribeLoadBalancerAttributesOutput
```

Constructs DescribeLoadBalancerAttributesOutput from required parameters

#### `newDescribeLoadBalancerAttributesOutput'`

``` purescript
newDescribeLoadBalancerAttributesOutput' :: ({ "Attributes" :: Maybe (LoadBalancerAttributes) } -> { "Attributes" :: Maybe (LoadBalancerAttributes) }) -> DescribeLoadBalancerAttributesOutput
```

Constructs DescribeLoadBalancerAttributesOutput's fields from required parameters

#### `DescribeLoadBalancersInput`

``` purescript
newtype DescribeLoadBalancersInput
  = DescribeLoadBalancersInput { "LoadBalancerArns" :: Maybe (LoadBalancerArns), "Names" :: Maybe (LoadBalancerNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeLoadBalancersInput _
Generic DescribeLoadBalancersInput _
Show DescribeLoadBalancersInput
Decode DescribeLoadBalancersInput
Encode DescribeLoadBalancersInput
```

#### `newDescribeLoadBalancersInput`

``` purescript
newDescribeLoadBalancersInput :: DescribeLoadBalancersInput
```

Constructs DescribeLoadBalancersInput from required parameters

#### `newDescribeLoadBalancersInput'`

``` purescript
newDescribeLoadBalancersInput' :: ({ "LoadBalancerArns" :: Maybe (LoadBalancerArns), "Names" :: Maybe (LoadBalancerNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "LoadBalancerArns" :: Maybe (LoadBalancerArns), "Names" :: Maybe (LoadBalancerNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeLoadBalancersInput
```

Constructs DescribeLoadBalancersInput's fields from required parameters

#### `DescribeLoadBalancersOutput`

``` purescript
newtype DescribeLoadBalancersOutput
  = DescribeLoadBalancersOutput { "LoadBalancers" :: Maybe (LoadBalancers), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeLoadBalancersOutput _
Generic DescribeLoadBalancersOutput _
Show DescribeLoadBalancersOutput
Decode DescribeLoadBalancersOutput
Encode DescribeLoadBalancersOutput
```

#### `newDescribeLoadBalancersOutput`

``` purescript
newDescribeLoadBalancersOutput :: DescribeLoadBalancersOutput
```

Constructs DescribeLoadBalancersOutput from required parameters

#### `newDescribeLoadBalancersOutput'`

``` purescript
newDescribeLoadBalancersOutput' :: ({ "LoadBalancers" :: Maybe (LoadBalancers), "NextMarker" :: Maybe (Marker) } -> { "LoadBalancers" :: Maybe (LoadBalancers), "NextMarker" :: Maybe (Marker) }) -> DescribeLoadBalancersOutput
```

Constructs DescribeLoadBalancersOutput's fields from required parameters

#### `DescribeRulesInput`

``` purescript
newtype DescribeRulesInput
  = DescribeRulesInput { "ListenerArn" :: Maybe (ListenerArn), "RuleArns" :: Maybe (RuleArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeRulesInput _
Generic DescribeRulesInput _
Show DescribeRulesInput
Decode DescribeRulesInput
Encode DescribeRulesInput
```

#### `newDescribeRulesInput`

``` purescript
newDescribeRulesInput :: DescribeRulesInput
```

Constructs DescribeRulesInput from required parameters

#### `newDescribeRulesInput'`

``` purescript
newDescribeRulesInput' :: ({ "ListenerArn" :: Maybe (ListenerArn), "RuleArns" :: Maybe (RuleArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "ListenerArn" :: Maybe (ListenerArn), "RuleArns" :: Maybe (RuleArns), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeRulesInput
```

Constructs DescribeRulesInput's fields from required parameters

#### `DescribeRulesOutput`

``` purescript
newtype DescribeRulesOutput
  = DescribeRulesOutput { "Rules" :: Maybe (Rules), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeRulesOutput _
Generic DescribeRulesOutput _
Show DescribeRulesOutput
Decode DescribeRulesOutput
Encode DescribeRulesOutput
```

#### `newDescribeRulesOutput`

``` purescript
newDescribeRulesOutput :: DescribeRulesOutput
```

Constructs DescribeRulesOutput from required parameters

#### `newDescribeRulesOutput'`

``` purescript
newDescribeRulesOutput' :: ({ "Rules" :: Maybe (Rules), "NextMarker" :: Maybe (Marker) } -> { "Rules" :: Maybe (Rules), "NextMarker" :: Maybe (Marker) }) -> DescribeRulesOutput
```

Constructs DescribeRulesOutput's fields from required parameters

#### `DescribeSSLPoliciesInput`

``` purescript
newtype DescribeSSLPoliciesInput
  = DescribeSSLPoliciesInput { "Names" :: Maybe (SslPolicyNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeSSLPoliciesInput _
Generic DescribeSSLPoliciesInput _
Show DescribeSSLPoliciesInput
Decode DescribeSSLPoliciesInput
Encode DescribeSSLPoliciesInput
```

#### `newDescribeSSLPoliciesInput`

``` purescript
newDescribeSSLPoliciesInput :: DescribeSSLPoliciesInput
```

Constructs DescribeSSLPoliciesInput from required parameters

#### `newDescribeSSLPoliciesInput'`

``` purescript
newDescribeSSLPoliciesInput' :: ({ "Names" :: Maybe (SslPolicyNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "Names" :: Maybe (SslPolicyNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeSSLPoliciesInput
```

Constructs DescribeSSLPoliciesInput's fields from required parameters

#### `DescribeSSLPoliciesOutput`

``` purescript
newtype DescribeSSLPoliciesOutput
  = DescribeSSLPoliciesOutput { "SslPolicies" :: Maybe (SslPolicies), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeSSLPoliciesOutput _
Generic DescribeSSLPoliciesOutput _
Show DescribeSSLPoliciesOutput
Decode DescribeSSLPoliciesOutput
Encode DescribeSSLPoliciesOutput
```

#### `newDescribeSSLPoliciesOutput`

``` purescript
newDescribeSSLPoliciesOutput :: DescribeSSLPoliciesOutput
```

Constructs DescribeSSLPoliciesOutput from required parameters

#### `newDescribeSSLPoliciesOutput'`

``` purescript
newDescribeSSLPoliciesOutput' :: ({ "SslPolicies" :: Maybe (SslPolicies), "NextMarker" :: Maybe (Marker) } -> { "SslPolicies" :: Maybe (SslPolicies), "NextMarker" :: Maybe (Marker) }) -> DescribeSSLPoliciesOutput
```

Constructs DescribeSSLPoliciesOutput's fields from required parameters

#### `DescribeTagsInput`

``` purescript
newtype DescribeTagsInput
  = DescribeTagsInput { "ResourceArns" :: ResourceArns }
```

##### Instances
``` purescript
Newtype DescribeTagsInput _
Generic DescribeTagsInput _
Show DescribeTagsInput
Decode DescribeTagsInput
Encode DescribeTagsInput
```

#### `newDescribeTagsInput`

``` purescript
newDescribeTagsInput :: ResourceArns -> DescribeTagsInput
```

Constructs DescribeTagsInput from required parameters

#### `newDescribeTagsInput'`

``` purescript
newDescribeTagsInput' :: ResourceArns -> ({ "ResourceArns" :: ResourceArns } -> { "ResourceArns" :: ResourceArns }) -> DescribeTagsInput
```

Constructs DescribeTagsInput's fields from required parameters

#### `DescribeTagsOutput`

``` purescript
newtype DescribeTagsOutput
  = DescribeTagsOutput { "TagDescriptions" :: Maybe (TagDescriptions) }
```

##### Instances
``` purescript
Newtype DescribeTagsOutput _
Generic DescribeTagsOutput _
Show DescribeTagsOutput
Decode DescribeTagsOutput
Encode DescribeTagsOutput
```

#### `newDescribeTagsOutput`

``` purescript
newDescribeTagsOutput :: DescribeTagsOutput
```

Constructs DescribeTagsOutput from required parameters

#### `newDescribeTagsOutput'`

``` purescript
newDescribeTagsOutput' :: ({ "TagDescriptions" :: Maybe (TagDescriptions) } -> { "TagDescriptions" :: Maybe (TagDescriptions) }) -> DescribeTagsOutput
```

Constructs DescribeTagsOutput's fields from required parameters

#### `DescribeTargetGroupAttributesInput`

``` purescript
newtype DescribeTargetGroupAttributesInput
  = DescribeTargetGroupAttributesInput { "TargetGroupArn" :: TargetGroupArn }
```

##### Instances
``` purescript
Newtype DescribeTargetGroupAttributesInput _
Generic DescribeTargetGroupAttributesInput _
Show DescribeTargetGroupAttributesInput
Decode DescribeTargetGroupAttributesInput
Encode DescribeTargetGroupAttributesInput
```

#### `newDescribeTargetGroupAttributesInput`

``` purescript
newDescribeTargetGroupAttributesInput :: TargetGroupArn -> DescribeTargetGroupAttributesInput
```

Constructs DescribeTargetGroupAttributesInput from required parameters

#### `newDescribeTargetGroupAttributesInput'`

``` purescript
newDescribeTargetGroupAttributesInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn } -> { "TargetGroupArn" :: TargetGroupArn }) -> DescribeTargetGroupAttributesInput
```

Constructs DescribeTargetGroupAttributesInput's fields from required parameters

#### `DescribeTargetGroupAttributesOutput`

``` purescript
newtype DescribeTargetGroupAttributesOutput
  = DescribeTargetGroupAttributesOutput { "Attributes" :: Maybe (TargetGroupAttributes) }
```

##### Instances
``` purescript
Newtype DescribeTargetGroupAttributesOutput _
Generic DescribeTargetGroupAttributesOutput _
Show DescribeTargetGroupAttributesOutput
Decode DescribeTargetGroupAttributesOutput
Encode DescribeTargetGroupAttributesOutput
```

#### `newDescribeTargetGroupAttributesOutput`

``` purescript
newDescribeTargetGroupAttributesOutput :: DescribeTargetGroupAttributesOutput
```

Constructs DescribeTargetGroupAttributesOutput from required parameters

#### `newDescribeTargetGroupAttributesOutput'`

``` purescript
newDescribeTargetGroupAttributesOutput' :: ({ "Attributes" :: Maybe (TargetGroupAttributes) } -> { "Attributes" :: Maybe (TargetGroupAttributes) }) -> DescribeTargetGroupAttributesOutput
```

Constructs DescribeTargetGroupAttributesOutput's fields from required parameters

#### `DescribeTargetGroupsInput`

``` purescript
newtype DescribeTargetGroupsInput
  = DescribeTargetGroupsInput { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "TargetGroupArns" :: Maybe (TargetGroupArns), "Names" :: Maybe (TargetGroupNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype DescribeTargetGroupsInput _
Generic DescribeTargetGroupsInput _
Show DescribeTargetGroupsInput
Decode DescribeTargetGroupsInput
Encode DescribeTargetGroupsInput
```

#### `newDescribeTargetGroupsInput`

``` purescript
newDescribeTargetGroupsInput :: DescribeTargetGroupsInput
```

Constructs DescribeTargetGroupsInput from required parameters

#### `newDescribeTargetGroupsInput'`

``` purescript
newDescribeTargetGroupsInput' :: ({ "LoadBalancerArn" :: Maybe (LoadBalancerArn), "TargetGroupArns" :: Maybe (TargetGroupArns), "Names" :: Maybe (TargetGroupNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) } -> { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "TargetGroupArns" :: Maybe (TargetGroupArns), "Names" :: Maybe (TargetGroupNames), "Marker" :: Maybe (Marker), "PageSize" :: Maybe (PageSize) }) -> DescribeTargetGroupsInput
```

Constructs DescribeTargetGroupsInput's fields from required parameters

#### `DescribeTargetGroupsOutput`

``` purescript
newtype DescribeTargetGroupsOutput
  = DescribeTargetGroupsOutput { "TargetGroups" :: Maybe (TargetGroups), "NextMarker" :: Maybe (Marker) }
```

##### Instances
``` purescript
Newtype DescribeTargetGroupsOutput _
Generic DescribeTargetGroupsOutput _
Show DescribeTargetGroupsOutput
Decode DescribeTargetGroupsOutput
Encode DescribeTargetGroupsOutput
```

#### `newDescribeTargetGroupsOutput`

``` purescript
newDescribeTargetGroupsOutput :: DescribeTargetGroupsOutput
```

Constructs DescribeTargetGroupsOutput from required parameters

#### `newDescribeTargetGroupsOutput'`

``` purescript
newDescribeTargetGroupsOutput' :: ({ "TargetGroups" :: Maybe (TargetGroups), "NextMarker" :: Maybe (Marker) } -> { "TargetGroups" :: Maybe (TargetGroups), "NextMarker" :: Maybe (Marker) }) -> DescribeTargetGroupsOutput
```

Constructs DescribeTargetGroupsOutput's fields from required parameters

#### `DescribeTargetHealthInput`

``` purescript
newtype DescribeTargetHealthInput
  = DescribeTargetHealthInput { "TargetGroupArn" :: TargetGroupArn, "Targets" :: Maybe (TargetDescriptions) }
```

##### Instances
``` purescript
Newtype DescribeTargetHealthInput _
Generic DescribeTargetHealthInput _
Show DescribeTargetHealthInput
Decode DescribeTargetHealthInput
Encode DescribeTargetHealthInput
```

#### `newDescribeTargetHealthInput`

``` purescript
newDescribeTargetHealthInput :: TargetGroupArn -> DescribeTargetHealthInput
```

Constructs DescribeTargetHealthInput from required parameters

#### `newDescribeTargetHealthInput'`

``` purescript
newDescribeTargetHealthInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn, "Targets" :: Maybe (TargetDescriptions) } -> { "TargetGroupArn" :: TargetGroupArn, "Targets" :: Maybe (TargetDescriptions) }) -> DescribeTargetHealthInput
```

Constructs DescribeTargetHealthInput's fields from required parameters

#### `DescribeTargetHealthOutput`

``` purescript
newtype DescribeTargetHealthOutput
  = DescribeTargetHealthOutput { "TargetHealthDescriptions" :: Maybe (TargetHealthDescriptions) }
```

##### Instances
``` purescript
Newtype DescribeTargetHealthOutput _
Generic DescribeTargetHealthOutput _
Show DescribeTargetHealthOutput
Decode DescribeTargetHealthOutput
Encode DescribeTargetHealthOutput
```

#### `newDescribeTargetHealthOutput`

``` purescript
newDescribeTargetHealthOutput :: DescribeTargetHealthOutput
```

Constructs DescribeTargetHealthOutput from required parameters

#### `newDescribeTargetHealthOutput'`

``` purescript
newDescribeTargetHealthOutput' :: ({ "TargetHealthDescriptions" :: Maybe (TargetHealthDescriptions) } -> { "TargetHealthDescriptions" :: Maybe (TargetHealthDescriptions) }) -> DescribeTargetHealthOutput
```

Constructs DescribeTargetHealthOutput's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `DuplicateListenerException`

``` purescript
newtype DuplicateListenerException
  = DuplicateListenerException NoArguments
```

<p>A listener with the specified port already exists.</p>

##### Instances
``` purescript
Newtype DuplicateListenerException _
Generic DuplicateListenerException _
Show DuplicateListenerException
Decode DuplicateListenerException
Encode DuplicateListenerException
```

#### `DuplicateLoadBalancerNameException`

``` purescript
newtype DuplicateLoadBalancerNameException
  = DuplicateLoadBalancerNameException NoArguments
```

<p>A load balancer with the specified name already exists.</p>

##### Instances
``` purescript
Newtype DuplicateLoadBalancerNameException _
Generic DuplicateLoadBalancerNameException _
Show DuplicateLoadBalancerNameException
Decode DuplicateLoadBalancerNameException
Encode DuplicateLoadBalancerNameException
```

#### `DuplicateTagKeysException`

``` purescript
newtype DuplicateTagKeysException
  = DuplicateTagKeysException NoArguments
```

<p>A tag key was specified more than once.</p>

##### Instances
``` purescript
Newtype DuplicateTagKeysException _
Generic DuplicateTagKeysException _
Show DuplicateTagKeysException
Decode DuplicateTagKeysException
Encode DuplicateTagKeysException
```

#### `DuplicateTargetGroupNameException`

``` purescript
newtype DuplicateTargetGroupNameException
  = DuplicateTargetGroupNameException NoArguments
```

<p>A target group with the specified name already exists.</p>

##### Instances
``` purescript
Newtype DuplicateTargetGroupNameException _
Generic DuplicateTargetGroupNameException _
Show DuplicateTargetGroupNameException
Decode DuplicateTargetGroupNameException
Encode DuplicateTargetGroupNameException
```

#### `HealthCheckIntervalSeconds`

``` purescript
newtype HealthCheckIntervalSeconds
  = HealthCheckIntervalSeconds Int
```

##### Instances
``` purescript
Newtype HealthCheckIntervalSeconds _
Generic HealthCheckIntervalSeconds _
Show HealthCheckIntervalSeconds
Decode HealthCheckIntervalSeconds
Encode HealthCheckIntervalSeconds
```

#### `HealthCheckPort`

``` purescript
newtype HealthCheckPort
  = HealthCheckPort String
```

##### Instances
``` purescript
Newtype HealthCheckPort _
Generic HealthCheckPort _
Show HealthCheckPort
Decode HealthCheckPort
Encode HealthCheckPort
```

#### `HealthCheckThresholdCount`

``` purescript
newtype HealthCheckThresholdCount
  = HealthCheckThresholdCount Int
```

##### Instances
``` purescript
Newtype HealthCheckThresholdCount _
Generic HealthCheckThresholdCount _
Show HealthCheckThresholdCount
Decode HealthCheckThresholdCount
Encode HealthCheckThresholdCount
```

#### `HealthCheckTimeoutSeconds`

``` purescript
newtype HealthCheckTimeoutSeconds
  = HealthCheckTimeoutSeconds Int
```

##### Instances
``` purescript
Newtype HealthCheckTimeoutSeconds _
Generic HealthCheckTimeoutSeconds _
Show HealthCheckTimeoutSeconds
Decode HealthCheckTimeoutSeconds
Encode HealthCheckTimeoutSeconds
```

#### `HealthUnavailableException`

``` purescript
newtype HealthUnavailableException
  = HealthUnavailableException NoArguments
```

<p>The health of the specified targets could not be retrieved due to an internal error.</p>

##### Instances
``` purescript
Newtype HealthUnavailableException _
Generic HealthUnavailableException _
Show HealthUnavailableException
Decode HealthUnavailableException
Encode HealthUnavailableException
```

#### `HttpCode`

``` purescript
newtype HttpCode
  = HttpCode String
```

##### Instances
``` purescript
Newtype HttpCode _
Generic HttpCode _
Show HttpCode
Decode HttpCode
Encode HttpCode
```

#### `IncompatibleProtocolsException`

``` purescript
newtype IncompatibleProtocolsException
  = IncompatibleProtocolsException NoArguments
```

<p>The specified configuration is not valid with this protocol.</p>

##### Instances
``` purescript
Newtype IncompatibleProtocolsException _
Generic IncompatibleProtocolsException _
Show IncompatibleProtocolsException
Decode IncompatibleProtocolsException
Encode IncompatibleProtocolsException
```

#### `InvalidConfigurationRequestException`

``` purescript
newtype InvalidConfigurationRequestException
  = InvalidConfigurationRequestException NoArguments
```

<p>The requested configuration is not valid.</p>

##### Instances
``` purescript
Newtype InvalidConfigurationRequestException _
Generic InvalidConfigurationRequestException _
Show InvalidConfigurationRequestException
Decode InvalidConfigurationRequestException
Encode InvalidConfigurationRequestException
```

#### `InvalidSchemeException`

``` purescript
newtype InvalidSchemeException
  = InvalidSchemeException NoArguments
```

<p>The requested scheme is not valid.</p>

##### Instances
``` purescript
Newtype InvalidSchemeException _
Generic InvalidSchemeException _
Show InvalidSchemeException
Decode InvalidSchemeException
Encode InvalidSchemeException
```

#### `InvalidSecurityGroupException`

``` purescript
newtype InvalidSecurityGroupException
  = InvalidSecurityGroupException NoArguments
```

<p>The specified security group does not exist.</p>

##### Instances
``` purescript
Newtype InvalidSecurityGroupException _
Generic InvalidSecurityGroupException _
Show InvalidSecurityGroupException
Decode InvalidSecurityGroupException
Encode InvalidSecurityGroupException
```

#### `InvalidSubnetException`

``` purescript
newtype InvalidSubnetException
  = InvalidSubnetException NoArguments
```

<p>The specified subnet is out of available addresses.</p>

##### Instances
``` purescript
Newtype InvalidSubnetException _
Generic InvalidSubnetException _
Show InvalidSubnetException
Decode InvalidSubnetException
Encode InvalidSubnetException
```

#### `InvalidTargetException`

``` purescript
newtype InvalidTargetException
  = InvalidTargetException NoArguments
```

<p>The specified target does not exist, is not in the same VPC as the target group, or has an unsupported instance type.</p>

##### Instances
``` purescript
Newtype InvalidTargetException _
Generic InvalidTargetException _
Show InvalidTargetException
Decode InvalidTargetException
Encode InvalidTargetException
```

#### `IpAddress`

``` purescript
newtype IpAddress
  = IpAddress String
```

##### Instances
``` purescript
Newtype IpAddress _
Generic IpAddress _
Show IpAddress
Decode IpAddress
Encode IpAddress
```

#### `IpAddressType`

``` purescript
newtype IpAddressType
  = IpAddressType String
```

##### Instances
``` purescript
Newtype IpAddressType _
Generic IpAddressType _
Show IpAddressType
Decode IpAddressType
Encode IpAddressType
```

#### `IsDefault`

``` purescript
newtype IsDefault
  = IsDefault Boolean
```

##### Instances
``` purescript
Newtype IsDefault _
Generic IsDefault _
Show IsDefault
Decode IsDefault
Encode IsDefault
```

#### `Limit`

``` purescript
newtype Limit
  = Limit { "Name" :: Maybe (Name), "Max" :: Maybe (Max) }
```

<p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>

##### Instances
``` purescript
Newtype Limit _
Generic Limit _
Show Limit
Decode Limit
Encode Limit
```

#### `newLimit`

``` purescript
newLimit :: Limit
```

Constructs Limit from required parameters

#### `newLimit'`

``` purescript
newLimit' :: ({ "Name" :: Maybe (Name), "Max" :: Maybe (Max) } -> { "Name" :: Maybe (Name), "Max" :: Maybe (Max) }) -> Limit
```

Constructs Limit's fields from required parameters

#### `Limits`

``` purescript
newtype Limits
  = Limits (Array Limit)
```

##### Instances
``` purescript
Newtype Limits _
Generic Limits _
Show Limits
Decode Limits
Encode Limits
```

#### `ListOfString`

``` purescript
newtype ListOfString
  = ListOfString (Array StringValue)
```

##### Instances
``` purescript
Newtype ListOfString _
Generic ListOfString _
Show ListOfString
Decode ListOfString
Encode ListOfString
```

#### `Listener`

``` purescript
newtype Listener
  = Listener { "ListenerArn" :: Maybe (ListenerArn), "LoadBalancerArn" :: Maybe (LoadBalancerArn), "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "Certificates" :: Maybe (CertificateList), "SslPolicy" :: Maybe (SslPolicyName), "DefaultActions" :: Maybe (Actions) }
```

<p>Information about a listener.</p>

##### Instances
``` purescript
Newtype Listener _
Generic Listener _
Show Listener
Decode Listener
Encode Listener
```

#### `newListener`

``` purescript
newListener :: Listener
```

Constructs Listener from required parameters

#### `newListener'`

``` purescript
newListener' :: ({ "ListenerArn" :: Maybe (ListenerArn), "LoadBalancerArn" :: Maybe (LoadBalancerArn), "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "Certificates" :: Maybe (CertificateList), "SslPolicy" :: Maybe (SslPolicyName), "DefaultActions" :: Maybe (Actions) } -> { "ListenerArn" :: Maybe (ListenerArn), "LoadBalancerArn" :: Maybe (LoadBalancerArn), "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "Certificates" :: Maybe (CertificateList), "SslPolicy" :: Maybe (SslPolicyName), "DefaultActions" :: Maybe (Actions) }) -> Listener
```

Constructs Listener's fields from required parameters

#### `ListenerArn`

``` purescript
newtype ListenerArn
  = ListenerArn String
```

##### Instances
``` purescript
Newtype ListenerArn _
Generic ListenerArn _
Show ListenerArn
Decode ListenerArn
Encode ListenerArn
```

#### `ListenerArns`

``` purescript
newtype ListenerArns
  = ListenerArns (Array ListenerArn)
```

##### Instances
``` purescript
Newtype ListenerArns _
Generic ListenerArns _
Show ListenerArns
Decode ListenerArns
Encode ListenerArns
```

#### `ListenerNotFoundException`

``` purescript
newtype ListenerNotFoundException
  = ListenerNotFoundException NoArguments
```

<p>The specified listener does not exist.</p>

##### Instances
``` purescript
Newtype ListenerNotFoundException _
Generic ListenerNotFoundException _
Show ListenerNotFoundException
Decode ListenerNotFoundException
Encode ListenerNotFoundException
```

#### `Listeners`

``` purescript
newtype Listeners
  = Listeners (Array Listener)
```

##### Instances
``` purescript
Newtype Listeners _
Generic Listeners _
Show Listeners
Decode Listeners
Encode Listeners
```

#### `LoadBalancer`

``` purescript
newtype LoadBalancer
  = LoadBalancer { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "DNSName" :: Maybe (DNSName), "CanonicalHostedZoneId" :: Maybe (CanonicalHostedZoneId), "CreatedTime" :: Maybe (CreatedTime), "LoadBalancerName" :: Maybe (LoadBalancerName), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "VpcId" :: Maybe (VpcId), "State" :: Maybe (LoadBalancerState), "Type" :: Maybe (LoadBalancerTypeEnum), "AvailabilityZones" :: Maybe (AvailabilityZones), "SecurityGroups" :: Maybe (SecurityGroups), "IpAddressType" :: Maybe (IpAddressType) }
```

<p>Information about a load balancer.</p>

##### Instances
``` purescript
Newtype LoadBalancer _
Generic LoadBalancer _
Show LoadBalancer
Decode LoadBalancer
Encode LoadBalancer
```

#### `newLoadBalancer`

``` purescript
newLoadBalancer :: LoadBalancer
```

Constructs LoadBalancer from required parameters

#### `newLoadBalancer'`

``` purescript
newLoadBalancer' :: ({ "LoadBalancerArn" :: Maybe (LoadBalancerArn), "DNSName" :: Maybe (DNSName), "CanonicalHostedZoneId" :: Maybe (CanonicalHostedZoneId), "CreatedTime" :: Maybe (CreatedTime), "LoadBalancerName" :: Maybe (LoadBalancerName), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "VpcId" :: Maybe (VpcId), "State" :: Maybe (LoadBalancerState), "Type" :: Maybe (LoadBalancerTypeEnum), "AvailabilityZones" :: Maybe (AvailabilityZones), "SecurityGroups" :: Maybe (SecurityGroups), "IpAddressType" :: Maybe (IpAddressType) } -> { "LoadBalancerArn" :: Maybe (LoadBalancerArn), "DNSName" :: Maybe (DNSName), "CanonicalHostedZoneId" :: Maybe (CanonicalHostedZoneId), "CreatedTime" :: Maybe (CreatedTime), "LoadBalancerName" :: Maybe (LoadBalancerName), "Scheme" :: Maybe (LoadBalancerSchemeEnum), "VpcId" :: Maybe (VpcId), "State" :: Maybe (LoadBalancerState), "Type" :: Maybe (LoadBalancerTypeEnum), "AvailabilityZones" :: Maybe (AvailabilityZones), "SecurityGroups" :: Maybe (SecurityGroups), "IpAddressType" :: Maybe (IpAddressType) }) -> LoadBalancer
```

Constructs LoadBalancer's fields from required parameters

#### `LoadBalancerAddress`

``` purescript
newtype LoadBalancerAddress
  = LoadBalancerAddress { "IpAddress" :: Maybe (IpAddress), "AllocationId" :: Maybe (AllocationId) }
```

<p>Information about a static IP address for a load balancer.</p>

##### Instances
``` purescript
Newtype LoadBalancerAddress _
Generic LoadBalancerAddress _
Show LoadBalancerAddress
Decode LoadBalancerAddress
Encode LoadBalancerAddress
```

#### `newLoadBalancerAddress`

``` purescript
newLoadBalancerAddress :: LoadBalancerAddress
```

Constructs LoadBalancerAddress from required parameters

#### `newLoadBalancerAddress'`

``` purescript
newLoadBalancerAddress' :: ({ "IpAddress" :: Maybe (IpAddress), "AllocationId" :: Maybe (AllocationId) } -> { "IpAddress" :: Maybe (IpAddress), "AllocationId" :: Maybe (AllocationId) }) -> LoadBalancerAddress
```

Constructs LoadBalancerAddress's fields from required parameters

#### `LoadBalancerAddresses`

``` purescript
newtype LoadBalancerAddresses
  = LoadBalancerAddresses (Array LoadBalancerAddress)
```

##### Instances
``` purescript
Newtype LoadBalancerAddresses _
Generic LoadBalancerAddresses _
Show LoadBalancerAddresses
Decode LoadBalancerAddresses
Encode LoadBalancerAddresses
```

#### `LoadBalancerArn`

``` purescript
newtype LoadBalancerArn
  = LoadBalancerArn String
```

##### Instances
``` purescript
Newtype LoadBalancerArn _
Generic LoadBalancerArn _
Show LoadBalancerArn
Decode LoadBalancerArn
Encode LoadBalancerArn
```

#### `LoadBalancerArns`

``` purescript
newtype LoadBalancerArns
  = LoadBalancerArns (Array LoadBalancerArn)
```

##### Instances
``` purescript
Newtype LoadBalancerArns _
Generic LoadBalancerArns _
Show LoadBalancerArns
Decode LoadBalancerArns
Encode LoadBalancerArns
```

#### `LoadBalancerAttribute`

``` purescript
newtype LoadBalancerAttribute
  = LoadBalancerAttribute { "Key" :: Maybe (LoadBalancerAttributeKey), "Value" :: Maybe (LoadBalancerAttributeValue) }
```

<p>Information about a load balancer attribute.</p>

##### Instances
``` purescript
Newtype LoadBalancerAttribute _
Generic LoadBalancerAttribute _
Show LoadBalancerAttribute
Decode LoadBalancerAttribute
Encode LoadBalancerAttribute
```

#### `newLoadBalancerAttribute`

``` purescript
newLoadBalancerAttribute :: LoadBalancerAttribute
```

Constructs LoadBalancerAttribute from required parameters

#### `newLoadBalancerAttribute'`

``` purescript
newLoadBalancerAttribute' :: ({ "Key" :: Maybe (LoadBalancerAttributeKey), "Value" :: Maybe (LoadBalancerAttributeValue) } -> { "Key" :: Maybe (LoadBalancerAttributeKey), "Value" :: Maybe (LoadBalancerAttributeValue) }) -> LoadBalancerAttribute
```

Constructs LoadBalancerAttribute's fields from required parameters

#### `LoadBalancerAttributeKey`

``` purescript
newtype LoadBalancerAttributeKey
  = LoadBalancerAttributeKey String
```

##### Instances
``` purescript
Newtype LoadBalancerAttributeKey _
Generic LoadBalancerAttributeKey _
Show LoadBalancerAttributeKey
Decode LoadBalancerAttributeKey
Encode LoadBalancerAttributeKey
```

#### `LoadBalancerAttributeValue`

``` purescript
newtype LoadBalancerAttributeValue
  = LoadBalancerAttributeValue String
```

##### Instances
``` purescript
Newtype LoadBalancerAttributeValue _
Generic LoadBalancerAttributeValue _
Show LoadBalancerAttributeValue
Decode LoadBalancerAttributeValue
Encode LoadBalancerAttributeValue
```

#### `LoadBalancerAttributes`

``` purescript
newtype LoadBalancerAttributes
  = LoadBalancerAttributes (Array LoadBalancerAttribute)
```

##### Instances
``` purescript
Newtype LoadBalancerAttributes _
Generic LoadBalancerAttributes _
Show LoadBalancerAttributes
Decode LoadBalancerAttributes
Encode LoadBalancerAttributes
```

#### `LoadBalancerName`

``` purescript
newtype LoadBalancerName
  = LoadBalancerName String
```

##### Instances
``` purescript
Newtype LoadBalancerName _
Generic LoadBalancerName _
Show LoadBalancerName
Decode LoadBalancerName
Encode LoadBalancerName
```

#### `LoadBalancerNames`

``` purescript
newtype LoadBalancerNames
  = LoadBalancerNames (Array LoadBalancerName)
```

##### Instances
``` purescript
Newtype LoadBalancerNames _
Generic LoadBalancerNames _
Show LoadBalancerNames
Decode LoadBalancerNames
Encode LoadBalancerNames
```

#### `LoadBalancerNotFoundException`

``` purescript
newtype LoadBalancerNotFoundException
  = LoadBalancerNotFoundException NoArguments
```

<p>The specified load balancer does not exist.</p>

##### Instances
``` purescript
Newtype LoadBalancerNotFoundException _
Generic LoadBalancerNotFoundException _
Show LoadBalancerNotFoundException
Decode LoadBalancerNotFoundException
Encode LoadBalancerNotFoundException
```

#### `LoadBalancerSchemeEnum`

``` purescript
newtype LoadBalancerSchemeEnum
  = LoadBalancerSchemeEnum String
```

##### Instances
``` purescript
Newtype LoadBalancerSchemeEnum _
Generic LoadBalancerSchemeEnum _
Show LoadBalancerSchemeEnum
Decode LoadBalancerSchemeEnum
Encode LoadBalancerSchemeEnum
```

#### `LoadBalancerState`

``` purescript
newtype LoadBalancerState
  = LoadBalancerState { "Code" :: Maybe (LoadBalancerStateEnum), "Reason" :: Maybe (StateReason) }
```

<p>Information about the state of the load balancer.</p>

##### Instances
``` purescript
Newtype LoadBalancerState _
Generic LoadBalancerState _
Show LoadBalancerState
Decode LoadBalancerState
Encode LoadBalancerState
```

#### `newLoadBalancerState`

``` purescript
newLoadBalancerState :: LoadBalancerState
```

Constructs LoadBalancerState from required parameters

#### `newLoadBalancerState'`

``` purescript
newLoadBalancerState' :: ({ "Code" :: Maybe (LoadBalancerStateEnum), "Reason" :: Maybe (StateReason) } -> { "Code" :: Maybe (LoadBalancerStateEnum), "Reason" :: Maybe (StateReason) }) -> LoadBalancerState
```

Constructs LoadBalancerState's fields from required parameters

#### `LoadBalancerStateEnum`

``` purescript
newtype LoadBalancerStateEnum
  = LoadBalancerStateEnum String
```

##### Instances
``` purescript
Newtype LoadBalancerStateEnum _
Generic LoadBalancerStateEnum _
Show LoadBalancerStateEnum
Decode LoadBalancerStateEnum
Encode LoadBalancerStateEnum
```

#### `LoadBalancerTypeEnum`

``` purescript
newtype LoadBalancerTypeEnum
  = LoadBalancerTypeEnum String
```

##### Instances
``` purescript
Newtype LoadBalancerTypeEnum _
Generic LoadBalancerTypeEnum _
Show LoadBalancerTypeEnum
Decode LoadBalancerTypeEnum
Encode LoadBalancerTypeEnum
```

#### `LoadBalancers`

``` purescript
newtype LoadBalancers
  = LoadBalancers (Array LoadBalancer)
```

##### Instances
``` purescript
Newtype LoadBalancers _
Generic LoadBalancers _
Show LoadBalancers
Decode LoadBalancers
Encode LoadBalancers
```

#### `Marker`

``` purescript
newtype Marker
  = Marker String
```

##### Instances
``` purescript
Newtype Marker _
Generic Marker _
Show Marker
Decode Marker
Encode Marker
```

#### `Matcher`

``` purescript
newtype Matcher
  = Matcher { "HttpCode" :: HttpCode }
```

<p>Information to use when checking for a successful response from a target.</p>

##### Instances
``` purescript
Newtype Matcher _
Generic Matcher _
Show Matcher
Decode Matcher
Encode Matcher
```

#### `newMatcher`

``` purescript
newMatcher :: HttpCode -> Matcher
```

Constructs Matcher from required parameters

#### `newMatcher'`

``` purescript
newMatcher' :: HttpCode -> ({ "HttpCode" :: HttpCode } -> { "HttpCode" :: HttpCode }) -> Matcher
```

Constructs Matcher's fields from required parameters

#### `Max`

``` purescript
newtype Max
  = Max String
```

##### Instances
``` purescript
Newtype Max _
Generic Max _
Show Max
Decode Max
Encode Max
```

#### `ModifyListenerInput`

``` purescript
newtype ModifyListenerInput
  = ModifyListenerInput { "ListenerArn" :: ListenerArn, "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Maybe (Actions) }
```

##### Instances
``` purescript
Newtype ModifyListenerInput _
Generic ModifyListenerInput _
Show ModifyListenerInput
Decode ModifyListenerInput
Encode ModifyListenerInput
```

#### `newModifyListenerInput`

``` purescript
newModifyListenerInput :: ListenerArn -> ModifyListenerInput
```

Constructs ModifyListenerInput from required parameters

#### `newModifyListenerInput'`

``` purescript
newModifyListenerInput' :: ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Maybe (Actions) } -> { "ListenerArn" :: ListenerArn, "Port" :: Maybe (Port), "Protocol" :: Maybe (ProtocolEnum), "SslPolicy" :: Maybe (SslPolicyName), "Certificates" :: Maybe (CertificateList), "DefaultActions" :: Maybe (Actions) }) -> ModifyListenerInput
```

Constructs ModifyListenerInput's fields from required parameters

#### `ModifyListenerOutput`

``` purescript
newtype ModifyListenerOutput
  = ModifyListenerOutput { "Listeners" :: Maybe (Listeners) }
```

##### Instances
``` purescript
Newtype ModifyListenerOutput _
Generic ModifyListenerOutput _
Show ModifyListenerOutput
Decode ModifyListenerOutput
Encode ModifyListenerOutput
```

#### `newModifyListenerOutput`

``` purescript
newModifyListenerOutput :: ModifyListenerOutput
```

Constructs ModifyListenerOutput from required parameters

#### `newModifyListenerOutput'`

``` purescript
newModifyListenerOutput' :: ({ "Listeners" :: Maybe (Listeners) } -> { "Listeners" :: Maybe (Listeners) }) -> ModifyListenerOutput
```

Constructs ModifyListenerOutput's fields from required parameters

#### `ModifyLoadBalancerAttributesInput`

``` purescript
newtype ModifyLoadBalancerAttributesInput
  = ModifyLoadBalancerAttributesInput { "LoadBalancerArn" :: LoadBalancerArn, "Attributes" :: LoadBalancerAttributes }
```

##### Instances
``` purescript
Newtype ModifyLoadBalancerAttributesInput _
Generic ModifyLoadBalancerAttributesInput _
Show ModifyLoadBalancerAttributesInput
Decode ModifyLoadBalancerAttributesInput
Encode ModifyLoadBalancerAttributesInput
```

#### `newModifyLoadBalancerAttributesInput`

``` purescript
newModifyLoadBalancerAttributesInput :: LoadBalancerAttributes -> LoadBalancerArn -> ModifyLoadBalancerAttributesInput
```

Constructs ModifyLoadBalancerAttributesInput from required parameters

#### `newModifyLoadBalancerAttributesInput'`

``` purescript
newModifyLoadBalancerAttributesInput' :: LoadBalancerAttributes -> LoadBalancerArn -> ({ "LoadBalancerArn" :: LoadBalancerArn, "Attributes" :: LoadBalancerAttributes } -> { "LoadBalancerArn" :: LoadBalancerArn, "Attributes" :: LoadBalancerAttributes }) -> ModifyLoadBalancerAttributesInput
```

Constructs ModifyLoadBalancerAttributesInput's fields from required parameters

#### `ModifyLoadBalancerAttributesOutput`

``` purescript
newtype ModifyLoadBalancerAttributesOutput
  = ModifyLoadBalancerAttributesOutput { "Attributes" :: Maybe (LoadBalancerAttributes) }
```

##### Instances
``` purescript
Newtype ModifyLoadBalancerAttributesOutput _
Generic ModifyLoadBalancerAttributesOutput _
Show ModifyLoadBalancerAttributesOutput
Decode ModifyLoadBalancerAttributesOutput
Encode ModifyLoadBalancerAttributesOutput
```

#### `newModifyLoadBalancerAttributesOutput`

``` purescript
newModifyLoadBalancerAttributesOutput :: ModifyLoadBalancerAttributesOutput
```

Constructs ModifyLoadBalancerAttributesOutput from required parameters

#### `newModifyLoadBalancerAttributesOutput'`

``` purescript
newModifyLoadBalancerAttributesOutput' :: ({ "Attributes" :: Maybe (LoadBalancerAttributes) } -> { "Attributes" :: Maybe (LoadBalancerAttributes) }) -> ModifyLoadBalancerAttributesOutput
```

Constructs ModifyLoadBalancerAttributesOutput's fields from required parameters

#### `ModifyRuleInput`

``` purescript
newtype ModifyRuleInput
  = ModifyRuleInput { "RuleArn" :: RuleArn, "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions) }
```

##### Instances
``` purescript
Newtype ModifyRuleInput _
Generic ModifyRuleInput _
Show ModifyRuleInput
Decode ModifyRuleInput
Encode ModifyRuleInput
```

#### `newModifyRuleInput`

``` purescript
newModifyRuleInput :: RuleArn -> ModifyRuleInput
```

Constructs ModifyRuleInput from required parameters

#### `newModifyRuleInput'`

``` purescript
newModifyRuleInput' :: RuleArn -> ({ "RuleArn" :: RuleArn, "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions) } -> { "RuleArn" :: RuleArn, "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions) }) -> ModifyRuleInput
```

Constructs ModifyRuleInput's fields from required parameters

#### `ModifyRuleOutput`

``` purescript
newtype ModifyRuleOutput
  = ModifyRuleOutput { "Rules" :: Maybe (Rules) }
```

##### Instances
``` purescript
Newtype ModifyRuleOutput _
Generic ModifyRuleOutput _
Show ModifyRuleOutput
Decode ModifyRuleOutput
Encode ModifyRuleOutput
```

#### `newModifyRuleOutput`

``` purescript
newModifyRuleOutput :: ModifyRuleOutput
```

Constructs ModifyRuleOutput from required parameters

#### `newModifyRuleOutput'`

``` purescript
newModifyRuleOutput' :: ({ "Rules" :: Maybe (Rules) } -> { "Rules" :: Maybe (Rules) }) -> ModifyRuleOutput
```

Constructs ModifyRuleOutput's fields from required parameters

#### `ModifyTargetGroupAttributesInput`

``` purescript
newtype ModifyTargetGroupAttributesInput
  = ModifyTargetGroupAttributesInput { "TargetGroupArn" :: TargetGroupArn, "Attributes" :: TargetGroupAttributes }
```

##### Instances
``` purescript
Newtype ModifyTargetGroupAttributesInput _
Generic ModifyTargetGroupAttributesInput _
Show ModifyTargetGroupAttributesInput
Decode ModifyTargetGroupAttributesInput
Encode ModifyTargetGroupAttributesInput
```

#### `newModifyTargetGroupAttributesInput`

``` purescript
newModifyTargetGroupAttributesInput :: TargetGroupAttributes -> TargetGroupArn -> ModifyTargetGroupAttributesInput
```

Constructs ModifyTargetGroupAttributesInput from required parameters

#### `newModifyTargetGroupAttributesInput'`

``` purescript
newModifyTargetGroupAttributesInput' :: TargetGroupAttributes -> TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn, "Attributes" :: TargetGroupAttributes } -> { "TargetGroupArn" :: TargetGroupArn, "Attributes" :: TargetGroupAttributes }) -> ModifyTargetGroupAttributesInput
```

Constructs ModifyTargetGroupAttributesInput's fields from required parameters

#### `ModifyTargetGroupAttributesOutput`

``` purescript
newtype ModifyTargetGroupAttributesOutput
  = ModifyTargetGroupAttributesOutput { "Attributes" :: Maybe (TargetGroupAttributes) }
```

##### Instances
``` purescript
Newtype ModifyTargetGroupAttributesOutput _
Generic ModifyTargetGroupAttributesOutput _
Show ModifyTargetGroupAttributesOutput
Decode ModifyTargetGroupAttributesOutput
Encode ModifyTargetGroupAttributesOutput
```

#### `newModifyTargetGroupAttributesOutput`

``` purescript
newModifyTargetGroupAttributesOutput :: ModifyTargetGroupAttributesOutput
```

Constructs ModifyTargetGroupAttributesOutput from required parameters

#### `newModifyTargetGroupAttributesOutput'`

``` purescript
newModifyTargetGroupAttributesOutput' :: ({ "Attributes" :: Maybe (TargetGroupAttributes) } -> { "Attributes" :: Maybe (TargetGroupAttributes) }) -> ModifyTargetGroupAttributesOutput
```

Constructs ModifyTargetGroupAttributesOutput's fields from required parameters

#### `ModifyTargetGroupInput`

``` purescript
newtype ModifyTargetGroupInput
  = ModifyTargetGroupInput { "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher) }
```

##### Instances
``` purescript
Newtype ModifyTargetGroupInput _
Generic ModifyTargetGroupInput _
Show ModifyTargetGroupInput
Decode ModifyTargetGroupInput
Encode ModifyTargetGroupInput
```

#### `newModifyTargetGroupInput`

``` purescript
newModifyTargetGroupInput :: TargetGroupArn -> ModifyTargetGroupInput
```

Constructs ModifyTargetGroupInput from required parameters

#### `newModifyTargetGroupInput'`

``` purescript
newModifyTargetGroupInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher) } -> { "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckPath" :: Maybe (Path), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "Matcher" :: Maybe (Matcher) }) -> ModifyTargetGroupInput
```

Constructs ModifyTargetGroupInput's fields from required parameters

#### `ModifyTargetGroupOutput`

``` purescript
newtype ModifyTargetGroupOutput
  = ModifyTargetGroupOutput { "TargetGroups" :: Maybe (TargetGroups) }
```

##### Instances
``` purescript
Newtype ModifyTargetGroupOutput _
Generic ModifyTargetGroupOutput _
Show ModifyTargetGroupOutput
Decode ModifyTargetGroupOutput
Encode ModifyTargetGroupOutput
```

#### `newModifyTargetGroupOutput`

``` purescript
newModifyTargetGroupOutput :: ModifyTargetGroupOutput
```

Constructs ModifyTargetGroupOutput from required parameters

#### `newModifyTargetGroupOutput'`

``` purescript
newModifyTargetGroupOutput' :: ({ "TargetGroups" :: Maybe (TargetGroups) } -> { "TargetGroups" :: Maybe (TargetGroups) }) -> ModifyTargetGroupOutput
```

Constructs ModifyTargetGroupOutput's fields from required parameters

#### `Name`

``` purescript
newtype Name
  = Name String
```

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `OperationNotPermittedException`

``` purescript
newtype OperationNotPermittedException
  = OperationNotPermittedException NoArguments
```

<p>This operation is not allowed.</p>

##### Instances
``` purescript
Newtype OperationNotPermittedException _
Generic OperationNotPermittedException _
Show OperationNotPermittedException
Decode OperationNotPermittedException
Encode OperationNotPermittedException
```

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `Path`

``` purescript
newtype Path
  = Path String
```

##### Instances
``` purescript
Newtype Path _
Generic Path _
Show Path
Decode Path
Encode Path
```

#### `Port`

``` purescript
newtype Port
  = Port Int
```

##### Instances
``` purescript
Newtype Port _
Generic Port _
Show Port
Decode Port
Encode Port
```

#### `PriorityInUseException`

``` purescript
newtype PriorityInUseException
  = PriorityInUseException NoArguments
```

<p>The specified priority is in use.</p>

##### Instances
``` purescript
Newtype PriorityInUseException _
Generic PriorityInUseException _
Show PriorityInUseException
Decode PriorityInUseException
Encode PriorityInUseException
```

#### `ProtocolEnum`

``` purescript
newtype ProtocolEnum
  = ProtocolEnum String
```

##### Instances
``` purescript
Newtype ProtocolEnum _
Generic ProtocolEnum _
Show ProtocolEnum
Decode ProtocolEnum
Encode ProtocolEnum
```

#### `RegisterTargetsInput`

``` purescript
newtype RegisterTargetsInput
  = RegisterTargetsInput { "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions }
```

##### Instances
``` purescript
Newtype RegisterTargetsInput _
Generic RegisterTargetsInput _
Show RegisterTargetsInput
Decode RegisterTargetsInput
Encode RegisterTargetsInput
```

#### `newRegisterTargetsInput`

``` purescript
newRegisterTargetsInput :: TargetGroupArn -> TargetDescriptions -> RegisterTargetsInput
```

Constructs RegisterTargetsInput from required parameters

#### `newRegisterTargetsInput'`

``` purescript
newRegisterTargetsInput' :: TargetGroupArn -> TargetDescriptions -> ({ "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions } -> { "TargetGroupArn" :: TargetGroupArn, "Targets" :: TargetDescriptions }) -> RegisterTargetsInput
```

Constructs RegisterTargetsInput's fields from required parameters

#### `RegisterTargetsOutput`

``` purescript
newtype RegisterTargetsOutput
  = RegisterTargetsOutput NoArguments
```

##### Instances
``` purescript
Newtype RegisterTargetsOutput _
Generic RegisterTargetsOutput _
Show RegisterTargetsOutput
Decode RegisterTargetsOutput
Encode RegisterTargetsOutput
```

#### `RemoveListenerCertificatesInput`

``` purescript
newtype RemoveListenerCertificatesInput
  = RemoveListenerCertificatesInput { "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList }
```

##### Instances
``` purescript
Newtype RemoveListenerCertificatesInput _
Generic RemoveListenerCertificatesInput _
Show RemoveListenerCertificatesInput
Decode RemoveListenerCertificatesInput
Encode RemoveListenerCertificatesInput
```

#### `newRemoveListenerCertificatesInput`

``` purescript
newRemoveListenerCertificatesInput :: CertificateList -> ListenerArn -> RemoveListenerCertificatesInput
```

Constructs RemoveListenerCertificatesInput from required parameters

#### `newRemoveListenerCertificatesInput'`

``` purescript
newRemoveListenerCertificatesInput' :: CertificateList -> ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList } -> { "ListenerArn" :: ListenerArn, "Certificates" :: CertificateList }) -> RemoveListenerCertificatesInput
```

Constructs RemoveListenerCertificatesInput's fields from required parameters

#### `RemoveListenerCertificatesOutput`

``` purescript
newtype RemoveListenerCertificatesOutput
  = RemoveListenerCertificatesOutput NoArguments
```

##### Instances
``` purescript
Newtype RemoveListenerCertificatesOutput _
Generic RemoveListenerCertificatesOutput _
Show RemoveListenerCertificatesOutput
Decode RemoveListenerCertificatesOutput
Encode RemoveListenerCertificatesOutput
```

#### `RemoveTagsInput`

``` purescript
newtype RemoveTagsInput
  = RemoveTagsInput { "ResourceArns" :: ResourceArns, "TagKeys" :: TagKeys }
```

##### Instances
``` purescript
Newtype RemoveTagsInput _
Generic RemoveTagsInput _
Show RemoveTagsInput
Decode RemoveTagsInput
Encode RemoveTagsInput
```

#### `newRemoveTagsInput`

``` purescript
newRemoveTagsInput :: ResourceArns -> TagKeys -> RemoveTagsInput
```

Constructs RemoveTagsInput from required parameters

#### `newRemoveTagsInput'`

``` purescript
newRemoveTagsInput' :: ResourceArns -> TagKeys -> ({ "ResourceArns" :: ResourceArns, "TagKeys" :: TagKeys } -> { "ResourceArns" :: ResourceArns, "TagKeys" :: TagKeys }) -> RemoveTagsInput
```

Constructs RemoveTagsInput's fields from required parameters

#### `RemoveTagsOutput`

``` purescript
newtype RemoveTagsOutput
  = RemoveTagsOutput NoArguments
```

##### Instances
``` purescript
Newtype RemoveTagsOutput _
Generic RemoveTagsOutput _
Show RemoveTagsOutput
Decode RemoveTagsOutput
Encode RemoveTagsOutput
```

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceArns`

``` purescript
newtype ResourceArns
  = ResourceArns (Array ResourceArn)
```

##### Instances
``` purescript
Newtype ResourceArns _
Generic ResourceArns _
Show ResourceArns
Decode ResourceArns
Encode ResourceArns
```

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException NoArguments
```

<p>A specified resource is in use.</p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `Rule`

``` purescript
newtype Rule
  = Rule { "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (String), "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions), "IsDefault" :: Maybe (IsDefault) }
```

<p>Information about a rule.</p>

##### Instances
``` purescript
Newtype Rule _
Generic Rule _
Show Rule
Decode Rule
Encode Rule
```

#### `newRule`

``` purescript
newRule :: Rule
```

Constructs Rule from required parameters

#### `newRule'`

``` purescript
newRule' :: ({ "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (String), "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions), "IsDefault" :: Maybe (IsDefault) } -> { "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (String), "Conditions" :: Maybe (RuleConditionList), "Actions" :: Maybe (Actions), "IsDefault" :: Maybe (IsDefault) }) -> Rule
```

Constructs Rule's fields from required parameters

#### `RuleArn`

``` purescript
newtype RuleArn
  = RuleArn String
```

##### Instances
``` purescript
Newtype RuleArn _
Generic RuleArn _
Show RuleArn
Decode RuleArn
Encode RuleArn
```

#### `RuleArns`

``` purescript
newtype RuleArns
  = RuleArns (Array RuleArn)
```

##### Instances
``` purescript
Newtype RuleArns _
Generic RuleArns _
Show RuleArns
Decode RuleArns
Encode RuleArns
```

#### `RuleCondition`

``` purescript
newtype RuleCondition
  = RuleCondition { "Field" :: Maybe (ConditionFieldName), "Values" :: Maybe (ListOfString) }
```

<p>Information about a condition for a rule.</p>

##### Instances
``` purescript
Newtype RuleCondition _
Generic RuleCondition _
Show RuleCondition
Decode RuleCondition
Encode RuleCondition
```

#### `newRuleCondition`

``` purescript
newRuleCondition :: RuleCondition
```

Constructs RuleCondition from required parameters

#### `newRuleCondition'`

``` purescript
newRuleCondition' :: ({ "Field" :: Maybe (ConditionFieldName), "Values" :: Maybe (ListOfString) } -> { "Field" :: Maybe (ConditionFieldName), "Values" :: Maybe (ListOfString) }) -> RuleCondition
```

Constructs RuleCondition's fields from required parameters

#### `RuleConditionList`

``` purescript
newtype RuleConditionList
  = RuleConditionList (Array RuleCondition)
```

##### Instances
``` purescript
Newtype RuleConditionList _
Generic RuleConditionList _
Show RuleConditionList
Decode RuleConditionList
Encode RuleConditionList
```

#### `RuleNotFoundException`

``` purescript
newtype RuleNotFoundException
  = RuleNotFoundException NoArguments
```

<p>The specified rule does not exist.</p>

##### Instances
``` purescript
Newtype RuleNotFoundException _
Generic RuleNotFoundException _
Show RuleNotFoundException
Decode RuleNotFoundException
Encode RuleNotFoundException
```

#### `RulePriority`

``` purescript
newtype RulePriority
  = RulePriority Int
```

##### Instances
``` purescript
Newtype RulePriority _
Generic RulePriority _
Show RulePriority
Decode RulePriority
Encode RulePriority
```

#### `RulePriorityList`

``` purescript
newtype RulePriorityList
  = RulePriorityList (Array RulePriorityPair)
```

##### Instances
``` purescript
Newtype RulePriorityList _
Generic RulePriorityList _
Show RulePriorityList
Decode RulePriorityList
Encode RulePriorityList
```

#### `RulePriorityPair`

``` purescript
newtype RulePriorityPair
  = RulePriorityPair { "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (RulePriority) }
```

<p>Information about the priorities for the rules for a listener.</p>

##### Instances
``` purescript
Newtype RulePriorityPair _
Generic RulePriorityPair _
Show RulePriorityPair
Decode RulePriorityPair
Encode RulePriorityPair
```

#### `newRulePriorityPair`

``` purescript
newRulePriorityPair :: RulePriorityPair
```

Constructs RulePriorityPair from required parameters

#### `newRulePriorityPair'`

``` purescript
newRulePriorityPair' :: ({ "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (RulePriority) } -> { "RuleArn" :: Maybe (RuleArn), "Priority" :: Maybe (RulePriority) }) -> RulePriorityPair
```

Constructs RulePriorityPair's fields from required parameters

#### `Rules`

``` purescript
newtype Rules
  = Rules (Array Rule)
```

##### Instances
``` purescript
Newtype Rules _
Generic Rules _
Show Rules
Decode Rules
Encode Rules
```

#### `SSLPolicyNotFoundException`

``` purescript
newtype SSLPolicyNotFoundException
  = SSLPolicyNotFoundException NoArguments
```

<p>The specified SSL policy does not exist.</p>

##### Instances
``` purescript
Newtype SSLPolicyNotFoundException _
Generic SSLPolicyNotFoundException _
Show SSLPolicyNotFoundException
Decode SSLPolicyNotFoundException
Encode SSLPolicyNotFoundException
```

#### `SecurityGroupId`

``` purescript
newtype SecurityGroupId
  = SecurityGroupId String
```

##### Instances
``` purescript
Newtype SecurityGroupId _
Generic SecurityGroupId _
Show SecurityGroupId
Decode SecurityGroupId
Encode SecurityGroupId
```

#### `SecurityGroups`

``` purescript
newtype SecurityGroups
  = SecurityGroups (Array SecurityGroupId)
```

##### Instances
``` purescript
Newtype SecurityGroups _
Generic SecurityGroups _
Show SecurityGroups
Decode SecurityGroups
Encode SecurityGroups
```

#### `SetIpAddressTypeInput`

``` purescript
newtype SetIpAddressTypeInput
  = SetIpAddressTypeInput { "LoadBalancerArn" :: LoadBalancerArn, "IpAddressType" :: IpAddressType }
```

##### Instances
``` purescript
Newtype SetIpAddressTypeInput _
Generic SetIpAddressTypeInput _
Show SetIpAddressTypeInput
Decode SetIpAddressTypeInput
Encode SetIpAddressTypeInput
```

#### `newSetIpAddressTypeInput`

``` purescript
newSetIpAddressTypeInput :: IpAddressType -> LoadBalancerArn -> SetIpAddressTypeInput
```

Constructs SetIpAddressTypeInput from required parameters

#### `newSetIpAddressTypeInput'`

``` purescript
newSetIpAddressTypeInput' :: IpAddressType -> LoadBalancerArn -> ({ "LoadBalancerArn" :: LoadBalancerArn, "IpAddressType" :: IpAddressType } -> { "LoadBalancerArn" :: LoadBalancerArn, "IpAddressType" :: IpAddressType }) -> SetIpAddressTypeInput
```

Constructs SetIpAddressTypeInput's fields from required parameters

#### `SetIpAddressTypeOutput`

``` purescript
newtype SetIpAddressTypeOutput
  = SetIpAddressTypeOutput { "IpAddressType" :: Maybe (IpAddressType) }
```

##### Instances
``` purescript
Newtype SetIpAddressTypeOutput _
Generic SetIpAddressTypeOutput _
Show SetIpAddressTypeOutput
Decode SetIpAddressTypeOutput
Encode SetIpAddressTypeOutput
```

#### `newSetIpAddressTypeOutput`

``` purescript
newSetIpAddressTypeOutput :: SetIpAddressTypeOutput
```

Constructs SetIpAddressTypeOutput from required parameters

#### `newSetIpAddressTypeOutput'`

``` purescript
newSetIpAddressTypeOutput' :: ({ "IpAddressType" :: Maybe (IpAddressType) } -> { "IpAddressType" :: Maybe (IpAddressType) }) -> SetIpAddressTypeOutput
```

Constructs SetIpAddressTypeOutput's fields from required parameters

#### `SetRulePrioritiesInput`

``` purescript
newtype SetRulePrioritiesInput
  = SetRulePrioritiesInput { "RulePriorities" :: RulePriorityList }
```

##### Instances
``` purescript
Newtype SetRulePrioritiesInput _
Generic SetRulePrioritiesInput _
Show SetRulePrioritiesInput
Decode SetRulePrioritiesInput
Encode SetRulePrioritiesInput
```

#### `newSetRulePrioritiesInput`

``` purescript
newSetRulePrioritiesInput :: RulePriorityList -> SetRulePrioritiesInput
```

Constructs SetRulePrioritiesInput from required parameters

#### `newSetRulePrioritiesInput'`

``` purescript
newSetRulePrioritiesInput' :: RulePriorityList -> ({ "RulePriorities" :: RulePriorityList } -> { "RulePriorities" :: RulePriorityList }) -> SetRulePrioritiesInput
```

Constructs SetRulePrioritiesInput's fields from required parameters

#### `SetRulePrioritiesOutput`

``` purescript
newtype SetRulePrioritiesOutput
  = SetRulePrioritiesOutput { "Rules" :: Maybe (Rules) }
```

##### Instances
``` purescript
Newtype SetRulePrioritiesOutput _
Generic SetRulePrioritiesOutput _
Show SetRulePrioritiesOutput
Decode SetRulePrioritiesOutput
Encode SetRulePrioritiesOutput
```

#### `newSetRulePrioritiesOutput`

``` purescript
newSetRulePrioritiesOutput :: SetRulePrioritiesOutput
```

Constructs SetRulePrioritiesOutput from required parameters

#### `newSetRulePrioritiesOutput'`

``` purescript
newSetRulePrioritiesOutput' :: ({ "Rules" :: Maybe (Rules) } -> { "Rules" :: Maybe (Rules) }) -> SetRulePrioritiesOutput
```

Constructs SetRulePrioritiesOutput's fields from required parameters

#### `SetSecurityGroupsInput`

``` purescript
newtype SetSecurityGroupsInput
  = SetSecurityGroupsInput { "LoadBalancerArn" :: LoadBalancerArn, "SecurityGroups" :: SecurityGroups }
```

##### Instances
``` purescript
Newtype SetSecurityGroupsInput _
Generic SetSecurityGroupsInput _
Show SetSecurityGroupsInput
Decode SetSecurityGroupsInput
Encode SetSecurityGroupsInput
```

#### `newSetSecurityGroupsInput`

``` purescript
newSetSecurityGroupsInput :: LoadBalancerArn -> SecurityGroups -> SetSecurityGroupsInput
```

Constructs SetSecurityGroupsInput from required parameters

#### `newSetSecurityGroupsInput'`

``` purescript
newSetSecurityGroupsInput' :: LoadBalancerArn -> SecurityGroups -> ({ "LoadBalancerArn" :: LoadBalancerArn, "SecurityGroups" :: SecurityGroups } -> { "LoadBalancerArn" :: LoadBalancerArn, "SecurityGroups" :: SecurityGroups }) -> SetSecurityGroupsInput
```

Constructs SetSecurityGroupsInput's fields from required parameters

#### `SetSecurityGroupsOutput`

``` purescript
newtype SetSecurityGroupsOutput
  = SetSecurityGroupsOutput { "SecurityGroupIds" :: Maybe (SecurityGroups) }
```

##### Instances
``` purescript
Newtype SetSecurityGroupsOutput _
Generic SetSecurityGroupsOutput _
Show SetSecurityGroupsOutput
Decode SetSecurityGroupsOutput
Encode SetSecurityGroupsOutput
```

#### `newSetSecurityGroupsOutput`

``` purescript
newSetSecurityGroupsOutput :: SetSecurityGroupsOutput
```

Constructs SetSecurityGroupsOutput from required parameters

#### `newSetSecurityGroupsOutput'`

``` purescript
newSetSecurityGroupsOutput' :: ({ "SecurityGroupIds" :: Maybe (SecurityGroups) } -> { "SecurityGroupIds" :: Maybe (SecurityGroups) }) -> SetSecurityGroupsOutput
```

Constructs SetSecurityGroupsOutput's fields from required parameters

#### `SetSubnetsInput`

``` purescript
newtype SetSubnetsInput
  = SetSubnetsInput { "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: Maybe (SubnetMappings) }
```

##### Instances
``` purescript
Newtype SetSubnetsInput _
Generic SetSubnetsInput _
Show SetSubnetsInput
Decode SetSubnetsInput
Encode SetSubnetsInput
```

#### `newSetSubnetsInput`

``` purescript
newSetSubnetsInput :: LoadBalancerArn -> Subnets -> SetSubnetsInput
```

Constructs SetSubnetsInput from required parameters

#### `newSetSubnetsInput'`

``` purescript
newSetSubnetsInput' :: LoadBalancerArn -> Subnets -> ({ "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: Maybe (SubnetMappings) } -> { "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: Maybe (SubnetMappings) }) -> SetSubnetsInput
```

Constructs SetSubnetsInput's fields from required parameters

#### `SetSubnetsOutput`

``` purescript
newtype SetSubnetsOutput
  = SetSubnetsOutput { "AvailabilityZones" :: Maybe (AvailabilityZones) }
```

##### Instances
``` purescript
Newtype SetSubnetsOutput _
Generic SetSubnetsOutput _
Show SetSubnetsOutput
Decode SetSubnetsOutput
Encode SetSubnetsOutput
```

#### `newSetSubnetsOutput`

``` purescript
newSetSubnetsOutput :: SetSubnetsOutput
```

Constructs SetSubnetsOutput from required parameters

#### `newSetSubnetsOutput'`

``` purescript
newSetSubnetsOutput' :: ({ "AvailabilityZones" :: Maybe (AvailabilityZones) } -> { "AvailabilityZones" :: Maybe (AvailabilityZones) }) -> SetSubnetsOutput
```

Constructs SetSubnetsOutput's fields from required parameters

#### `SslPolicies`

``` purescript
newtype SslPolicies
  = SslPolicies (Array SslPolicy)
```

##### Instances
``` purescript
Newtype SslPolicies _
Generic SslPolicies _
Show SslPolicies
Decode SslPolicies
Encode SslPolicies
```

#### `SslPolicy`

``` purescript
newtype SslPolicy
  = SslPolicy { "SslProtocols" :: Maybe (SslProtocols), "Ciphers" :: Maybe (Ciphers), "Name" :: Maybe (SslPolicyName) }
```

<p>Information about a policy used for SSL negotiation.</p>

##### Instances
``` purescript
Newtype SslPolicy _
Generic SslPolicy _
Show SslPolicy
Decode SslPolicy
Encode SslPolicy
```

#### `newSslPolicy`

``` purescript
newSslPolicy :: SslPolicy
```

Constructs SslPolicy from required parameters

#### `newSslPolicy'`

``` purescript
newSslPolicy' :: ({ "SslProtocols" :: Maybe (SslProtocols), "Ciphers" :: Maybe (Ciphers), "Name" :: Maybe (SslPolicyName) } -> { "SslProtocols" :: Maybe (SslProtocols), "Ciphers" :: Maybe (Ciphers), "Name" :: Maybe (SslPolicyName) }) -> SslPolicy
```

Constructs SslPolicy's fields from required parameters

#### `SslPolicyName`

``` purescript
newtype SslPolicyName
  = SslPolicyName String
```

##### Instances
``` purescript
Newtype SslPolicyName _
Generic SslPolicyName _
Show SslPolicyName
Decode SslPolicyName
Encode SslPolicyName
```

#### `SslPolicyNames`

``` purescript
newtype SslPolicyNames
  = SslPolicyNames (Array SslPolicyName)
```

##### Instances
``` purescript
Newtype SslPolicyNames _
Generic SslPolicyNames _
Show SslPolicyNames
Decode SslPolicyNames
Encode SslPolicyNames
```

#### `SslProtocol`

``` purescript
newtype SslProtocol
  = SslProtocol String
```

##### Instances
``` purescript
Newtype SslProtocol _
Generic SslProtocol _
Show SslProtocol
Decode SslProtocol
Encode SslProtocol
```

#### `SslProtocols`

``` purescript
newtype SslProtocols
  = SslProtocols (Array SslProtocol)
```

##### Instances
``` purescript
Newtype SslProtocols _
Generic SslProtocols _
Show SslProtocols
Decode SslProtocols
Encode SslProtocols
```

#### `StateReason`

``` purescript
newtype StateReason
  = StateReason String
```

##### Instances
``` purescript
Newtype StateReason _
Generic StateReason _
Show StateReason
Decode StateReason
Encode StateReason
```

#### `StringValue`

``` purescript
newtype StringValue
  = StringValue String
```

##### Instances
``` purescript
Newtype StringValue _
Generic StringValue _
Show StringValue
Decode StringValue
Encode StringValue
```

#### `SubnetId`

``` purescript
newtype SubnetId
  = SubnetId String
```

##### Instances
``` purescript
Newtype SubnetId _
Generic SubnetId _
Show SubnetId
Decode SubnetId
Encode SubnetId
```

#### `SubnetMapping`

``` purescript
newtype SubnetMapping
  = SubnetMapping { "SubnetId" :: Maybe (SubnetId), "AllocationId" :: Maybe (AllocationId) }
```

<p>Information about a subnet mapping.</p>

##### Instances
``` purescript
Newtype SubnetMapping _
Generic SubnetMapping _
Show SubnetMapping
Decode SubnetMapping
Encode SubnetMapping
```

#### `newSubnetMapping`

``` purescript
newSubnetMapping :: SubnetMapping
```

Constructs SubnetMapping from required parameters

#### `newSubnetMapping'`

``` purescript
newSubnetMapping' :: ({ "SubnetId" :: Maybe (SubnetId), "AllocationId" :: Maybe (AllocationId) } -> { "SubnetId" :: Maybe (SubnetId), "AllocationId" :: Maybe (AllocationId) }) -> SubnetMapping
```

Constructs SubnetMapping's fields from required parameters

#### `SubnetMappings`

``` purescript
newtype SubnetMappings
  = SubnetMappings (Array SubnetMapping)
```

##### Instances
``` purescript
Newtype SubnetMappings _
Generic SubnetMappings _
Show SubnetMappings
Decode SubnetMappings
Encode SubnetMappings
```

#### `SubnetNotFoundException`

``` purescript
newtype SubnetNotFoundException
  = SubnetNotFoundException NoArguments
```

<p>The specified subnet does not exist.</p>

##### Instances
``` purescript
Newtype SubnetNotFoundException _
Generic SubnetNotFoundException _
Show SubnetNotFoundException
Decode SubnetNotFoundException
Encode SubnetNotFoundException
```

#### `Subnets`

``` purescript
newtype Subnets
  = Subnets (Array SubnetId)
```

##### Instances
``` purescript
Newtype Subnets _
Generic Subnets _
Show Subnets
Decode Subnets
Encode Subnets
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: Maybe (TagValue) }
```

<p>Information about a tag.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> ({ "Key" :: TagKey, "Value" :: Maybe (TagValue) } -> { "Key" :: TagKey, "Value" :: Maybe (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagDescription`

``` purescript
newtype TagDescription
  = TagDescription { "ResourceArn" :: Maybe (ResourceArn), "Tags" :: Maybe (TagList) }
```

<p>The tags associated with a resource.</p>

##### Instances
``` purescript
Newtype TagDescription _
Generic TagDescription _
Show TagDescription
Decode TagDescription
Encode TagDescription
```

#### `newTagDescription`

``` purescript
newTagDescription :: TagDescription
```

Constructs TagDescription from required parameters

#### `newTagDescription'`

``` purescript
newTagDescription' :: ({ "ResourceArn" :: Maybe (ResourceArn), "Tags" :: Maybe (TagList) } -> { "ResourceArn" :: Maybe (ResourceArn), "Tags" :: Maybe (TagList) }) -> TagDescription
```

Constructs TagDescription's fields from required parameters

#### `TagDescriptions`

``` purescript
newtype TagDescriptions
  = TagDescriptions (Array TagDescription)
```

##### Instances
``` purescript
Newtype TagDescriptions _
Generic TagDescriptions _
Show TagDescriptions
Decode TagDescriptions
Encode TagDescriptions
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeys`

``` purescript
newtype TagKeys
  = TagKeys (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeys _
Generic TagKeys _
Show TagKeys
Decode TagKeys
Encode TagKeys
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TargetDescription`

``` purescript
newtype TargetDescription
  = TargetDescription { "Id" :: TargetId, "Port" :: Maybe (Port), "AvailabilityZone" :: Maybe (ZoneName) }
```

<p>Information about a target.</p>

##### Instances
``` purescript
Newtype TargetDescription _
Generic TargetDescription _
Show TargetDescription
Decode TargetDescription
Encode TargetDescription
```

#### `newTargetDescription`

``` purescript
newTargetDescription :: TargetId -> TargetDescription
```

Constructs TargetDescription from required parameters

#### `newTargetDescription'`

``` purescript
newTargetDescription' :: TargetId -> ({ "Id" :: TargetId, "Port" :: Maybe (Port), "AvailabilityZone" :: Maybe (ZoneName) } -> { "Id" :: TargetId, "Port" :: Maybe (Port), "AvailabilityZone" :: Maybe (ZoneName) }) -> TargetDescription
```

Constructs TargetDescription's fields from required parameters

#### `TargetDescriptions`

``` purescript
newtype TargetDescriptions
  = TargetDescriptions (Array TargetDescription)
```

##### Instances
``` purescript
Newtype TargetDescriptions _
Generic TargetDescriptions _
Show TargetDescriptions
Decode TargetDescriptions
Encode TargetDescriptions
```

#### `TargetGroup`

``` purescript
newtype TargetGroup
  = TargetGroup { "TargetGroupArn" :: Maybe (TargetGroupArn), "TargetGroupName" :: Maybe (TargetGroupName), "Protocol" :: Maybe (ProtocolEnum), "Port" :: Maybe (Port), "VpcId" :: Maybe (VpcId), "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "HealthCheckPath" :: Maybe (Path), "Matcher" :: Maybe (Matcher), "LoadBalancerArns" :: Maybe (LoadBalancerArns), "TargetType" :: Maybe (TargetTypeEnum) }
```

<p>Information about a target group.</p>

##### Instances
``` purescript
Newtype TargetGroup _
Generic TargetGroup _
Show TargetGroup
Decode TargetGroup
Encode TargetGroup
```

#### `newTargetGroup`

``` purescript
newTargetGroup :: TargetGroup
```

Constructs TargetGroup from required parameters

#### `newTargetGroup'`

``` purescript
newTargetGroup' :: ({ "TargetGroupArn" :: Maybe (TargetGroupArn), "TargetGroupName" :: Maybe (TargetGroupName), "Protocol" :: Maybe (ProtocolEnum), "Port" :: Maybe (Port), "VpcId" :: Maybe (VpcId), "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "HealthCheckPath" :: Maybe (Path), "Matcher" :: Maybe (Matcher), "LoadBalancerArns" :: Maybe (LoadBalancerArns), "TargetType" :: Maybe (TargetTypeEnum) } -> { "TargetGroupArn" :: Maybe (TargetGroupArn), "TargetGroupName" :: Maybe (TargetGroupName), "Protocol" :: Maybe (ProtocolEnum), "Port" :: Maybe (Port), "VpcId" :: Maybe (VpcId), "HealthCheckProtocol" :: Maybe (ProtocolEnum), "HealthCheckPort" :: Maybe (HealthCheckPort), "HealthCheckIntervalSeconds" :: Maybe (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: Maybe (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: Maybe (HealthCheckThresholdCount), "HealthCheckPath" :: Maybe (Path), "Matcher" :: Maybe (Matcher), "LoadBalancerArns" :: Maybe (LoadBalancerArns), "TargetType" :: Maybe (TargetTypeEnum) }) -> TargetGroup
```

Constructs TargetGroup's fields from required parameters

#### `TargetGroupArn`

``` purescript
newtype TargetGroupArn
  = TargetGroupArn String
```

##### Instances
``` purescript
Newtype TargetGroupArn _
Generic TargetGroupArn _
Show TargetGroupArn
Decode TargetGroupArn
Encode TargetGroupArn
```

#### `TargetGroupArns`

``` purescript
newtype TargetGroupArns
  = TargetGroupArns (Array TargetGroupArn)
```

##### Instances
``` purescript
Newtype TargetGroupArns _
Generic TargetGroupArns _
Show TargetGroupArns
Decode TargetGroupArns
Encode TargetGroupArns
```

#### `TargetGroupAssociationLimitException`

``` purescript
newtype TargetGroupAssociationLimitException
  = TargetGroupAssociationLimitException NoArguments
```

<p>You've reached the limit on the number of load balancers per target group.</p>

##### Instances
``` purescript
Newtype TargetGroupAssociationLimitException _
Generic TargetGroupAssociationLimitException _
Show TargetGroupAssociationLimitException
Decode TargetGroupAssociationLimitException
Encode TargetGroupAssociationLimitException
```

#### `TargetGroupAttribute`

``` purescript
newtype TargetGroupAttribute
  = TargetGroupAttribute { "Key" :: Maybe (TargetGroupAttributeKey), "Value" :: Maybe (TargetGroupAttributeValue) }
```

<p>Information about a target group attribute.</p>

##### Instances
``` purescript
Newtype TargetGroupAttribute _
Generic TargetGroupAttribute _
Show TargetGroupAttribute
Decode TargetGroupAttribute
Encode TargetGroupAttribute
```

#### `newTargetGroupAttribute`

``` purescript
newTargetGroupAttribute :: TargetGroupAttribute
```

Constructs TargetGroupAttribute from required parameters

#### `newTargetGroupAttribute'`

``` purescript
newTargetGroupAttribute' :: ({ "Key" :: Maybe (TargetGroupAttributeKey), "Value" :: Maybe (TargetGroupAttributeValue) } -> { "Key" :: Maybe (TargetGroupAttributeKey), "Value" :: Maybe (TargetGroupAttributeValue) }) -> TargetGroupAttribute
```

Constructs TargetGroupAttribute's fields from required parameters

#### `TargetGroupAttributeKey`

``` purescript
newtype TargetGroupAttributeKey
  = TargetGroupAttributeKey String
```

##### Instances
``` purescript
Newtype TargetGroupAttributeKey _
Generic TargetGroupAttributeKey _
Show TargetGroupAttributeKey
Decode TargetGroupAttributeKey
Encode TargetGroupAttributeKey
```

#### `TargetGroupAttributeValue`

``` purescript
newtype TargetGroupAttributeValue
  = TargetGroupAttributeValue String
```

##### Instances
``` purescript
Newtype TargetGroupAttributeValue _
Generic TargetGroupAttributeValue _
Show TargetGroupAttributeValue
Decode TargetGroupAttributeValue
Encode TargetGroupAttributeValue
```

#### `TargetGroupAttributes`

``` purescript
newtype TargetGroupAttributes
  = TargetGroupAttributes (Array TargetGroupAttribute)
```

##### Instances
``` purescript
Newtype TargetGroupAttributes _
Generic TargetGroupAttributes _
Show TargetGroupAttributes
Decode TargetGroupAttributes
Encode TargetGroupAttributes
```

#### `TargetGroupName`

``` purescript
newtype TargetGroupName
  = TargetGroupName String
```

##### Instances
``` purescript
Newtype TargetGroupName _
Generic TargetGroupName _
Show TargetGroupName
Decode TargetGroupName
Encode TargetGroupName
```

#### `TargetGroupNames`

``` purescript
newtype TargetGroupNames
  = TargetGroupNames (Array TargetGroupName)
```

##### Instances
``` purescript
Newtype TargetGroupNames _
Generic TargetGroupNames _
Show TargetGroupNames
Decode TargetGroupNames
Encode TargetGroupNames
```

#### `TargetGroupNotFoundException`

``` purescript
newtype TargetGroupNotFoundException
  = TargetGroupNotFoundException NoArguments
```

<p>The specified target group does not exist.</p>

##### Instances
``` purescript
Newtype TargetGroupNotFoundException _
Generic TargetGroupNotFoundException _
Show TargetGroupNotFoundException
Decode TargetGroupNotFoundException
Encode TargetGroupNotFoundException
```

#### `TargetGroups`

``` purescript
newtype TargetGroups
  = TargetGroups (Array TargetGroup)
```

##### Instances
``` purescript
Newtype TargetGroups _
Generic TargetGroups _
Show TargetGroups
Decode TargetGroups
Encode TargetGroups
```

#### `TargetHealth`

``` purescript
newtype TargetHealth
  = TargetHealth { "State" :: Maybe (TargetHealthStateEnum), "Reason" :: Maybe (TargetHealthReasonEnum), "Description" :: Maybe (Description) }
```

<p>Information about the current health of a target.</p>

##### Instances
``` purescript
Newtype TargetHealth _
Generic TargetHealth _
Show TargetHealth
Decode TargetHealth
Encode TargetHealth
```

#### `newTargetHealth`

``` purescript
newTargetHealth :: TargetHealth
```

Constructs TargetHealth from required parameters

#### `newTargetHealth'`

``` purescript
newTargetHealth' :: ({ "State" :: Maybe (TargetHealthStateEnum), "Reason" :: Maybe (TargetHealthReasonEnum), "Description" :: Maybe (Description) } -> { "State" :: Maybe (TargetHealthStateEnum), "Reason" :: Maybe (TargetHealthReasonEnum), "Description" :: Maybe (Description) }) -> TargetHealth
```

Constructs TargetHealth's fields from required parameters

#### `TargetHealthDescription`

``` purescript
newtype TargetHealthDescription
  = TargetHealthDescription { "Target" :: Maybe (TargetDescription), "HealthCheckPort" :: Maybe (HealthCheckPort), "TargetHealth" :: Maybe (TargetHealth) }
```

<p>Information about the health of a target.</p>

##### Instances
``` purescript
Newtype TargetHealthDescription _
Generic TargetHealthDescription _
Show TargetHealthDescription
Decode TargetHealthDescription
Encode TargetHealthDescription
```

#### `newTargetHealthDescription`

``` purescript
newTargetHealthDescription :: TargetHealthDescription
```

Constructs TargetHealthDescription from required parameters

#### `newTargetHealthDescription'`

``` purescript
newTargetHealthDescription' :: ({ "Target" :: Maybe (TargetDescription), "HealthCheckPort" :: Maybe (HealthCheckPort), "TargetHealth" :: Maybe (TargetHealth) } -> { "Target" :: Maybe (TargetDescription), "HealthCheckPort" :: Maybe (HealthCheckPort), "TargetHealth" :: Maybe (TargetHealth) }) -> TargetHealthDescription
```

Constructs TargetHealthDescription's fields from required parameters

#### `TargetHealthDescriptions`

``` purescript
newtype TargetHealthDescriptions
  = TargetHealthDescriptions (Array TargetHealthDescription)
```

##### Instances
``` purescript
Newtype TargetHealthDescriptions _
Generic TargetHealthDescriptions _
Show TargetHealthDescriptions
Decode TargetHealthDescriptions
Encode TargetHealthDescriptions
```

#### `TargetHealthReasonEnum`

``` purescript
newtype TargetHealthReasonEnum
  = TargetHealthReasonEnum String
```

##### Instances
``` purescript
Newtype TargetHealthReasonEnum _
Generic TargetHealthReasonEnum _
Show TargetHealthReasonEnum
Decode TargetHealthReasonEnum
Encode TargetHealthReasonEnum
```

#### `TargetHealthStateEnum`

``` purescript
newtype TargetHealthStateEnum
  = TargetHealthStateEnum String
```

##### Instances
``` purescript
Newtype TargetHealthStateEnum _
Generic TargetHealthStateEnum _
Show TargetHealthStateEnum
Decode TargetHealthStateEnum
Encode TargetHealthStateEnum
```

#### `TargetId`

``` purescript
newtype TargetId
  = TargetId String
```

##### Instances
``` purescript
Newtype TargetId _
Generic TargetId _
Show TargetId
Decode TargetId
Encode TargetId
```

#### `TargetTypeEnum`

``` purescript
newtype TargetTypeEnum
  = TargetTypeEnum String
```

##### Instances
``` purescript
Newtype TargetTypeEnum _
Generic TargetTypeEnum _
Show TargetTypeEnum
Decode TargetTypeEnum
Encode TargetTypeEnum
```

#### `TooManyCertificatesException`

``` purescript
newtype TooManyCertificatesException
  = TooManyCertificatesException NoArguments
```

<p>You've reached the limit on the number of certificates per load balancer.</p>

##### Instances
``` purescript
Newtype TooManyCertificatesException _
Generic TooManyCertificatesException _
Show TooManyCertificatesException
Decode TooManyCertificatesException
Encode TooManyCertificatesException
```

#### `TooManyListenersException`

``` purescript
newtype TooManyListenersException
  = TooManyListenersException NoArguments
```

<p>You've reached the limit on the number of listeners per load balancer.</p>

##### Instances
``` purescript
Newtype TooManyListenersException _
Generic TooManyListenersException _
Show TooManyListenersException
Decode TooManyListenersException
Encode TooManyListenersException
```

#### `TooManyLoadBalancersException`

``` purescript
newtype TooManyLoadBalancersException
  = TooManyLoadBalancersException NoArguments
```

<p>You've reached the limit on the number of load balancers for your AWS account.</p>

##### Instances
``` purescript
Newtype TooManyLoadBalancersException _
Generic TooManyLoadBalancersException _
Show TooManyLoadBalancersException
Decode TooManyLoadBalancersException
Encode TooManyLoadBalancersException
```

#### `TooManyRegistrationsForTargetIdException`

``` purescript
newtype TooManyRegistrationsForTargetIdException
  = TooManyRegistrationsForTargetIdException NoArguments
```

<p>You've reached the limit on the number of times a target can be registered with a load balancer.</p>

##### Instances
``` purescript
Newtype TooManyRegistrationsForTargetIdException _
Generic TooManyRegistrationsForTargetIdException _
Show TooManyRegistrationsForTargetIdException
Decode TooManyRegistrationsForTargetIdException
Encode TooManyRegistrationsForTargetIdException
```

#### `TooManyRulesException`

``` purescript
newtype TooManyRulesException
  = TooManyRulesException NoArguments
```

<p>You've reached the limit on the number of rules per load balancer.</p>

##### Instances
``` purescript
Newtype TooManyRulesException _
Generic TooManyRulesException _
Show TooManyRulesException
Decode TooManyRulesException
Encode TooManyRulesException
```

#### `TooManyTagsException`

``` purescript
newtype TooManyTagsException
  = TooManyTagsException NoArguments
```

<p>You've reached the limit on the number of tags per load balancer.</p>

##### Instances
``` purescript
Newtype TooManyTagsException _
Generic TooManyTagsException _
Show TooManyTagsException
Decode TooManyTagsException
Encode TooManyTagsException
```

#### `TooManyTargetGroupsException`

``` purescript
newtype TooManyTargetGroupsException
  = TooManyTargetGroupsException NoArguments
```

<p>You've reached the limit on the number of target groups for your AWS account.</p>

##### Instances
``` purescript
Newtype TooManyTargetGroupsException _
Generic TooManyTargetGroupsException _
Show TooManyTargetGroupsException
Decode TooManyTargetGroupsException
Encode TooManyTargetGroupsException
```

#### `TooManyTargetsException`

``` purescript
newtype TooManyTargetsException
  = TooManyTargetsException NoArguments
```

<p>You've reached the limit on the number of targets.</p>

##### Instances
``` purescript
Newtype TooManyTargetsException _
Generic TooManyTargetsException _
Show TooManyTargetsException
Decode TooManyTargetsException
Encode TooManyTargetsException
```

#### `UnsupportedProtocolException`

``` purescript
newtype UnsupportedProtocolException
  = UnsupportedProtocolException NoArguments
```

<p>The specified protocol is not supported.</p>

##### Instances
``` purescript
Newtype UnsupportedProtocolException _
Generic UnsupportedProtocolException _
Show UnsupportedProtocolException
Decode UnsupportedProtocolException
Encode UnsupportedProtocolException
```

#### `VpcId`

``` purescript
newtype VpcId
  = VpcId String
```

##### Instances
``` purescript
Newtype VpcId _
Generic VpcId _
Show VpcId
Decode VpcId
Encode VpcId
```

#### `ZoneName`

``` purescript
newtype ZoneName
  = ZoneName String
```

##### Instances
``` purescript
Newtype ZoneName _
Generic ZoneName _
Show ZoneName
Decode ZoneName
Encode ZoneName
```


