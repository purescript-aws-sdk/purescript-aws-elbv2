## Module AWS.ELBv2

<fullname>Elastic Load Balancing</fullname> <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets.</p> <p>Elastic Load Balancing supports the following types of load balancers: Application Load Balancers, Network Load Balancers, and Classic Load Balancers.</p> <p>An Application Load Balancer makes routing and load balancing decisions at the application layer (HTTP/HTTPS). A Network Load Balancer makes routing and load balancing decisions at the transport layer (TCP). Both Application Load Balancers and Network Load Balancers can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC).</p> <p>A Classic Load Balancer makes routing and load balancing decisions either at the transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and supports either EC2-Classic or a VPC. For more information, see the <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p> <p>This reference covers the 2015-12-01 API, which supports Application Load Balancers and Network Load Balancers. The 2012-06-01 API supports Classic Load Balancers.</p> <p>To get started, complete the following tasks:</p> <ol> <li> <p>Create a load balancer using <a>CreateLoadBalancer</a>.</p> </li> <li> <p>Create a target group using <a>CreateTargetGroup</a>.</p> </li> <li> <p>Register targets for the target group using <a>RegisterTargets</a>.</p> </li> <li> <p>Create one or more listeners for your load balancer using <a>CreateListener</a>.</p> </li> </ol> <p>To delete a load balancer and its related resources, complete the following tasks:</p> <ol> <li> <p>Delete the load balancer using <a>DeleteLoadBalancer</a>.</p> </li> <li> <p>Delete the target group using <a>DeleteTargetGroup</a>.</p> </li> </ol> <p>All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.</p>

#### `addListenerCertificates`

``` purescript
addListenerCertificates :: forall eff. AddListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) AddListenerCertificatesOutput
```

<p>Adds the specified certificate to the specified secure listener.</p> <p>If the certificate was already added, the call is successful but the certificate is not added again.</p> <p>To list the certificates for your listener, use <a>DescribeListenerCertificates</a>. To remove certificates from your listener, use <a>RemoveListenerCertificates</a>.</p>

#### `addTags`

``` purescript
addTags :: forall eff. AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
```

<p>Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups.</p> <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, <code>AddTags</code> updates its value.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>. To remove tags from your resources, use <a>RemoveTags</a>.</p>

#### `createListener`

``` purescript
createListener :: forall eff. CreateListenerInput -> Aff (exception :: EXCEPTION | eff) CreateListenerOutput
```

<p>Creates a listener for the specified Application Load Balancer or Network Load Balancer.</p> <p>To update a listener, use <a>ModifyListener</a>. When you are finished with a listener, you can delete it using <a>DeleteListener</a>. If you are finished with both the listener and the load balancer, you can delete them both using <a>DeleteLoadBalancer</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html">Listeners for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `createLoadBalancer`

``` purescript
createLoadBalancer :: forall eff. CreateLoadBalancerInput -> Aff (exception :: EXCEPTION | eff) CreateLoadBalancerOutput
```

<p>Creates an Application Load Balancer or a Network Load Balancer.</p> <p>When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using <a>SetSecurityGroups</a>, <a>SetSubnets</a>, <a>SetIpAddressType</a>, and <a>AddTags</a>.</p> <p>To create listeners for your load balancer, use <a>CreateListener</a>. To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>For limit information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancer</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancer</a> in the <i>Network Load Balancers Guide</i>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html">Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `createRule`

``` purescript
createRule :: forall eff. CreateRuleInput -> Aff (exception :: EXCEPTION | eff) CreateRuleOutput
```

<p>Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer.</p> <p>Rules are evaluated in priority order, from the lowest value to the highest value. When the condition for a rule is met, the specified action is taken. If no conditions are met, the action for the default rule is taken. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener Rules</a> in the <i>Application Load Balancers Guide</i>.</p> <p>To view your current rules, use <a>DescribeRules</a>. To update a rule, use <a>ModifyRule</a>. To set the priorities of your rules, use <a>SetRulePriorities</a>. To delete a rule, use <a>DeleteRule</a>.</p>

#### `createTargetGroup`

``` purescript
createTargetGroup :: forall eff. CreateTargetGroupInput -> Aff (exception :: EXCEPTION | eff) CreateTargetGroupOutput
```

<p>Creates a target group.</p> <p>To register targets with the target group, use <a>RegisterTargets</a>. To update the health check settings for the target group, use <a>ModifyTargetGroup</a>. To monitor the health of targets in the target group, use <a>DescribeTargetHealth</a>.</p> <p>To route traffic to the targets in a target group, specify the target group in an action using <a>CreateListener</a> or <a>CreateRule</a>.</p> <p>To delete a target group, use <a>DeleteTargetGroup</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target Groups for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> or <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html">Target Groups for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `deleteListener`

``` purescript
deleteListener :: forall eff. DeleteListenerInput -> Aff (exception :: EXCEPTION | eff) DeleteListenerOutput
```

<p>Deletes the specified listener.</p> <p>Alternatively, your listener is deleted when you delete the load balancer it is attached to using <a>DeleteLoadBalancer</a>.</p>

#### `deleteLoadBalancer`

``` purescript
deleteLoadBalancer :: forall eff. DeleteLoadBalancerInput -> Aff (exception :: EXCEPTION | eff) DeleteLoadBalancerOutput
```

<p>Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners.</p> <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds.</p> <p>Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.</p>

#### `deleteRule`

``` purescript
deleteRule :: forall eff. DeleteRuleInput -> Aff (exception :: EXCEPTION | eff) DeleteRuleOutput
```

<p>Deletes the specified rule.</p>

#### `deleteTargetGroup`

``` purescript
deleteTargetGroup :: forall eff. DeleteTargetGroupInput -> Aff (exception :: EXCEPTION | eff) DeleteTargetGroupOutput
```

<p>Deletes the specified target group.</p> <p>You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.</p>

#### `deregisterTargets`

``` purescript
deregisterTargets :: forall eff. DeregisterTargetsInput -> Aff (exception :: EXCEPTION | eff) DeregisterTargetsOutput
```

<p>Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.</p>

#### `describeAccountLimits`

``` purescript
describeAccountLimits :: forall eff. DescribeAccountLimitsInput -> Aff (exception :: EXCEPTION | eff) DescribeAccountLimitsOutput
```

<p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancers</a> in the <i>Application Load Balancer Guide</i> or <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `describeListenerCertificates`

``` purescript
describeListenerCertificates :: forall eff. DescribeListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) DescribeListenerCertificatesOutput
```

<p>Describes the certificates for the specified secure listener.</p>

#### `describeListeners`

``` purescript
describeListeners :: forall eff. DescribeListenersInput -> Aff (exception :: EXCEPTION | eff) DescribeListenersOutput
```

<p>Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners.</p>

#### `describeLoadBalancerAttributes`

``` purescript
describeLoadBalancerAttributes :: forall eff. DescribeLoadBalancerAttributesInput -> Aff (exception :: EXCEPTION | eff) DescribeLoadBalancerAttributesOutput
```

<p>Describes the attributes for the specified Application Load Balancer or Network Load Balancer.</p>

#### `describeLoadBalancers`

``` purescript
describeLoadBalancers :: forall eff. DescribeLoadBalancersInput -> Aff (exception :: EXCEPTION | eff) DescribeLoadBalancersOutput
```

<p>Describes the specified load balancers or all of your load balancers.</p> <p>To describe the listeners for a load balancer, use <a>DescribeListeners</a>. To describe the attributes for a load balancer, use <a>DescribeLoadBalancerAttributes</a>.</p>

#### `describeRules`

``` purescript
describeRules :: forall eff. DescribeRulesInput -> Aff (exception :: EXCEPTION | eff) DescribeRulesOutput
```

<p>Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.</p>

#### `describeSSLPolicies`

``` purescript
describeSSLPolicies :: forall eff. DescribeSSLPoliciesInput -> Aff (exception :: EXCEPTION | eff) DescribeSSLPoliciesOutput
```

<p>Describes the specified policies or all policies used for SSL negotiation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security Policies</a> in the <i>Application Load Balancers Guide</i>.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. DescribeTagsInput -> Aff (exception :: EXCEPTION | eff) DescribeTagsOutput
```

<p>Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.</p>

#### `describeTargetGroupAttributes`

``` purescript
describeTargetGroupAttributes :: forall eff. DescribeTargetGroupAttributesInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetGroupAttributesOutput
```

<p>Describes the attributes for the specified target group.</p>

#### `describeTargetGroups`

``` purescript
describeTargetGroups :: forall eff. DescribeTargetGroupsInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetGroupsOutput
```

<p>Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.</p> <p>To describe the targets for a target group, use <a>DescribeTargetHealth</a>. To describe the attributes of a target group, use <a>DescribeTargetGroupAttributes</a>.</p>

#### `describeTargetHealth`

``` purescript
describeTargetHealth :: forall eff. DescribeTargetHealthInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetHealthOutput
```

<p>Describes the health of the specified targets or all of your targets.</p>

#### `modifyListener`

``` purescript
modifyListener :: forall eff. ModifyListenerInput -> Aff (exception :: EXCEPTION | eff) ModifyListenerOutput
```

<p>Modifies the specified properties of the specified listener.</p> <p>Any properties that you do not specify retain their current values. However, changing the protocol from HTTPS to HTTP removes the security policy and SSL certificate properties. If you change the protocol from HTTP to HTTPS, you must add the security policy and server certificate.</p>

#### `modifyLoadBalancerAttributes`

``` purescript
modifyLoadBalancerAttributes :: forall eff. ModifyLoadBalancerAttributesInput -> Aff (exception :: EXCEPTION | eff) ModifyLoadBalancerAttributesOutput
```

<p>Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer.</p> <p>If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.</p>

#### `modifyRule`

``` purescript
modifyRule :: forall eff. ModifyRuleInput -> Aff (exception :: EXCEPTION | eff) ModifyRuleOutput
```

<p>Modifies the specified rule.</p> <p>Any existing properties that you do not modify retain their current values.</p> <p>To modify the default action, use <a>ModifyListener</a>.</p>

#### `modifyTargetGroup`

``` purescript
modifyTargetGroup :: forall eff. ModifyTargetGroupInput -> Aff (exception :: EXCEPTION | eff) ModifyTargetGroupOutput
```

<p>Modifies the health checks used when evaluating the health state of the targets in the specified target group.</p> <p>To monitor the health of the targets, use <a>DescribeTargetHealth</a>.</p>

#### `modifyTargetGroupAttributes`

``` purescript
modifyTargetGroupAttributes :: forall eff. ModifyTargetGroupAttributesInput -> Aff (exception :: EXCEPTION | eff) ModifyTargetGroupAttributesOutput
```

<p>Modifies the specified attributes of the specified target group.</p>

#### `registerTargets`

``` purescript
registerTargets :: forall eff. RegisterTargetsInput -> Aff (exception :: EXCEPTION | eff) RegisterTargetsOutput
```

<p>Registers the specified targets with the specified target group.</p> <p>You can register targets by instance ID or by IP address. If the target is an EC2 instance, it must be in the <code>running</code> state when you register it.</p> <p>By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.</p> <p>With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.</p> <p>To remove a target from a target group, use <a>DeregisterTargets</a>.</p>

#### `removeListenerCertificates`

``` purescript
removeListenerCertificates :: forall eff. RemoveListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) RemoveListenerCertificatesOutput
```

<p>Removes the specified certificate from the specified secure listener.</p> <p>You can't remove the default certificate for a listener. To replace the default certificate, call <a>ModifyListener</a>.</p> <p>To list the certificates for your listener, use <a>DescribeListenerCertificates</a>.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) RemoveTagsOutput
```

<p>Removes the specified tags from the specified Elastic Load Balancing resource.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>.</p>

#### `setIpAddressType`

``` purescript
setIpAddressType :: forall eff. SetIpAddressTypeInput -> Aff (exception :: EXCEPTION | eff) SetIpAddressTypeOutput
```

<p>Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.</p> <p>Note that Network Load Balancers must use <code>ipv4</code>.</p>

#### `setRulePriorities`

``` purescript
setRulePriorities :: forall eff. SetRulePrioritiesInput -> Aff (exception :: EXCEPTION | eff) SetRulePrioritiesOutput
```

<p>Sets the priorities of the specified rules.</p> <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.</p>

#### `setSecurityGroups`

``` purescript
setSecurityGroups :: forall eff. SetSecurityGroupsInput -> Aff (exception :: EXCEPTION | eff) SetSecurityGroupsOutput
```

<p>Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups.</p> <p>Note that you can't specify a security group for a Network Load Balancer.</p>

#### `setSubnets`

``` purescript
setSubnets :: forall eff. SetSubnetsInput -> Aff (exception :: EXCEPTION | eff) SetSubnetsOutput
```

<p>Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer. The specified subnets replace the previously enabled subnets.</p> <p>Note that you can't change the subnets for a Network Load Balancer.</p>

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
  = AddListenerCertificatesOutput { "Certificates" :: NullOrUndefined (CertificateList) }
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
newAddListenerCertificatesOutput' :: ({ "Certificates" :: NullOrUndefined (CertificateList) } -> { "Certificates" :: NullOrUndefined (CertificateList) }) -> AddListenerCertificatesOutput
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
  = AvailabilityZone { "ZoneName" :: NullOrUndefined (ZoneName), "SubnetId" :: NullOrUndefined (SubnetId), "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses) }
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
newAvailabilityZone' :: ({ "ZoneName" :: NullOrUndefined (ZoneName), "SubnetId" :: NullOrUndefined (SubnetId), "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses) } -> { "ZoneName" :: NullOrUndefined (ZoneName), "SubnetId" :: NullOrUndefined (SubnetId), "LoadBalancerAddresses" :: NullOrUndefined (LoadBalancerAddresses) }) -> AvailabilityZone
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
  = Certificate { "CertificateArn" :: NullOrUndefined (CertificateArn), "IsDefault" :: NullOrUndefined (Default) }
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
newCertificate' :: ({ "CertificateArn" :: NullOrUndefined (CertificateArn), "IsDefault" :: NullOrUndefined (Default) } -> { "CertificateArn" :: NullOrUndefined (CertificateArn), "IsDefault" :: NullOrUndefined (Default) }) -> Certificate
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
  = Cipher { "Name" :: NullOrUndefined (CipherName), "Priority" :: NullOrUndefined (CipherPriority) }
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
newCipher' :: ({ "Name" :: NullOrUndefined (CipherName), "Priority" :: NullOrUndefined (CipherPriority) } -> { "Name" :: NullOrUndefined (CipherName), "Priority" :: NullOrUndefined (CipherPriority) }) -> Cipher
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
  = CreateListenerInput { "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: Actions }
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
newCreateListenerInput' :: Actions -> LoadBalancerArn -> Port -> ProtocolEnum -> ({ "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: Actions } -> { "LoadBalancerArn" :: LoadBalancerArn, "Protocol" :: ProtocolEnum, "Port" :: Port, "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: Actions }) -> CreateListenerInput
```

Constructs CreateListenerInput's fields from required parameters

#### `CreateListenerOutput`

``` purescript
newtype CreateListenerOutput
  = CreateListenerOutput { "Listeners" :: NullOrUndefined (Listeners) }
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
newCreateListenerOutput' :: ({ "Listeners" :: NullOrUndefined (Listeners) } -> { "Listeners" :: NullOrUndefined (Listeners) }) -> CreateListenerOutput
```

Constructs CreateListenerOutput's fields from required parameters

#### `CreateLoadBalancerInput`

``` purescript
newtype CreateLoadBalancerInput
  = CreateLoadBalancerInput { "Name" :: LoadBalancerName, "Subnets" :: NullOrUndefined (Subnets), "SubnetMappings" :: NullOrUndefined (SubnetMappings), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "Tags" :: NullOrUndefined (TagList), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "IpAddressType" :: NullOrUndefined (IpAddressType) }
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
newCreateLoadBalancerInput' :: LoadBalancerName -> ({ "Name" :: LoadBalancerName, "Subnets" :: NullOrUndefined (Subnets), "SubnetMappings" :: NullOrUndefined (SubnetMappings), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "Tags" :: NullOrUndefined (TagList), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "IpAddressType" :: NullOrUndefined (IpAddressType) } -> { "Name" :: LoadBalancerName, "Subnets" :: NullOrUndefined (Subnets), "SubnetMappings" :: NullOrUndefined (SubnetMappings), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "Tags" :: NullOrUndefined (TagList), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "IpAddressType" :: NullOrUndefined (IpAddressType) }) -> CreateLoadBalancerInput
```

Constructs CreateLoadBalancerInput's fields from required parameters

#### `CreateLoadBalancerOutput`

``` purescript
newtype CreateLoadBalancerOutput
  = CreateLoadBalancerOutput { "LoadBalancers" :: NullOrUndefined (LoadBalancers) }
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
newCreateLoadBalancerOutput' :: ({ "LoadBalancers" :: NullOrUndefined (LoadBalancers) } -> { "LoadBalancers" :: NullOrUndefined (LoadBalancers) }) -> CreateLoadBalancerOutput
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
  = CreateRuleOutput { "Rules" :: NullOrUndefined (Rules) }
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
newCreateRuleOutput' :: ({ "Rules" :: NullOrUndefined (Rules) } -> { "Rules" :: NullOrUndefined (Rules) }) -> CreateRuleOutput
```

Constructs CreateRuleOutput's fields from required parameters

#### `CreateTargetGroupInput`

``` purescript
newtype CreateTargetGroupInput
  = CreateTargetGroupInput { "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher), "TargetType" :: NullOrUndefined (TargetTypeEnum) }
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
newCreateTargetGroupInput' :: TargetGroupName -> Port -> ProtocolEnum -> VpcId -> ({ "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher), "TargetType" :: NullOrUndefined (TargetTypeEnum) } -> { "Name" :: TargetGroupName, "Protocol" :: ProtocolEnum, "Port" :: Port, "VpcId" :: VpcId, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher), "TargetType" :: NullOrUndefined (TargetTypeEnum) }) -> CreateTargetGroupInput
```

Constructs CreateTargetGroupInput's fields from required parameters

#### `CreateTargetGroupOutput`

``` purescript
newtype CreateTargetGroupOutput
  = CreateTargetGroupOutput { "TargetGroups" :: NullOrUndefined (TargetGroups) }
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
newCreateTargetGroupOutput' :: ({ "TargetGroups" :: NullOrUndefined (TargetGroups) } -> { "TargetGroups" :: NullOrUndefined (TargetGroups) }) -> CreateTargetGroupOutput
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
  = DescribeAccountLimitsInput { "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeAccountLimitsInput' :: ({ "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeAccountLimitsInput
```

Constructs DescribeAccountLimitsInput's fields from required parameters

#### `DescribeAccountLimitsOutput`

``` purescript
newtype DescribeAccountLimitsOutput
  = DescribeAccountLimitsOutput { "Limits" :: NullOrUndefined (Limits), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeAccountLimitsOutput' :: ({ "Limits" :: NullOrUndefined (Limits), "NextMarker" :: NullOrUndefined (Marker) } -> { "Limits" :: NullOrUndefined (Limits), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeAccountLimitsOutput
```

Constructs DescribeAccountLimitsOutput's fields from required parameters

#### `DescribeListenerCertificatesInput`

``` purescript
newtype DescribeListenerCertificatesInput
  = DescribeListenerCertificatesInput { "ListenerArn" :: ListenerArn, "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeListenerCertificatesInput' :: ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "ListenerArn" :: ListenerArn, "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeListenerCertificatesInput
```

Constructs DescribeListenerCertificatesInput's fields from required parameters

#### `DescribeListenerCertificatesOutput`

``` purescript
newtype DescribeListenerCertificatesOutput
  = DescribeListenerCertificatesOutput { "Certificates" :: NullOrUndefined (CertificateList), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeListenerCertificatesOutput' :: ({ "Certificates" :: NullOrUndefined (CertificateList), "NextMarker" :: NullOrUndefined (Marker) } -> { "Certificates" :: NullOrUndefined (CertificateList), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeListenerCertificatesOutput
```

Constructs DescribeListenerCertificatesOutput's fields from required parameters

#### `DescribeListenersInput`

``` purescript
newtype DescribeListenersInput
  = DescribeListenersInput { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "ListenerArns" :: NullOrUndefined (ListenerArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeListenersInput' :: ({ "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "ListenerArns" :: NullOrUndefined (ListenerArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "ListenerArns" :: NullOrUndefined (ListenerArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeListenersInput
```

Constructs DescribeListenersInput's fields from required parameters

#### `DescribeListenersOutput`

``` purescript
newtype DescribeListenersOutput
  = DescribeListenersOutput { "Listeners" :: NullOrUndefined (Listeners), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeListenersOutput' :: ({ "Listeners" :: NullOrUndefined (Listeners), "NextMarker" :: NullOrUndefined (Marker) } -> { "Listeners" :: NullOrUndefined (Listeners), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeListenersOutput
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
  = DescribeLoadBalancerAttributesOutput { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) }
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
newDescribeLoadBalancerAttributesOutput' :: ({ "Attributes" :: NullOrUndefined (LoadBalancerAttributes) } -> { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) }) -> DescribeLoadBalancerAttributesOutput
```

Constructs DescribeLoadBalancerAttributesOutput's fields from required parameters

#### `DescribeLoadBalancersInput`

``` purescript
newtype DescribeLoadBalancersInput
  = DescribeLoadBalancersInput { "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "Names" :: NullOrUndefined (LoadBalancerNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeLoadBalancersInput' :: ({ "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "Names" :: NullOrUndefined (LoadBalancerNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "Names" :: NullOrUndefined (LoadBalancerNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeLoadBalancersInput
```

Constructs DescribeLoadBalancersInput's fields from required parameters

#### `DescribeLoadBalancersOutput`

``` purescript
newtype DescribeLoadBalancersOutput
  = DescribeLoadBalancersOutput { "LoadBalancers" :: NullOrUndefined (LoadBalancers), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeLoadBalancersOutput' :: ({ "LoadBalancers" :: NullOrUndefined (LoadBalancers), "NextMarker" :: NullOrUndefined (Marker) } -> { "LoadBalancers" :: NullOrUndefined (LoadBalancers), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeLoadBalancersOutput
```

Constructs DescribeLoadBalancersOutput's fields from required parameters

#### `DescribeRulesInput`

``` purescript
newtype DescribeRulesInput
  = DescribeRulesInput { "ListenerArn" :: NullOrUndefined (ListenerArn), "RuleArns" :: NullOrUndefined (RuleArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeRulesInput' :: ({ "ListenerArn" :: NullOrUndefined (ListenerArn), "RuleArns" :: NullOrUndefined (RuleArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "ListenerArn" :: NullOrUndefined (ListenerArn), "RuleArns" :: NullOrUndefined (RuleArns), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeRulesInput
```

Constructs DescribeRulesInput's fields from required parameters

#### `DescribeRulesOutput`

``` purescript
newtype DescribeRulesOutput
  = DescribeRulesOutput { "Rules" :: NullOrUndefined (Rules), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeRulesOutput' :: ({ "Rules" :: NullOrUndefined (Rules), "NextMarker" :: NullOrUndefined (Marker) } -> { "Rules" :: NullOrUndefined (Rules), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeRulesOutput
```

Constructs DescribeRulesOutput's fields from required parameters

#### `DescribeSSLPoliciesInput`

``` purescript
newtype DescribeSSLPoliciesInput
  = DescribeSSLPoliciesInput { "Names" :: NullOrUndefined (SslPolicyNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeSSLPoliciesInput' :: ({ "Names" :: NullOrUndefined (SslPolicyNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "Names" :: NullOrUndefined (SslPolicyNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeSSLPoliciesInput
```

Constructs DescribeSSLPoliciesInput's fields from required parameters

#### `DescribeSSLPoliciesOutput`

``` purescript
newtype DescribeSSLPoliciesOutput
  = DescribeSSLPoliciesOutput { "SslPolicies" :: NullOrUndefined (SslPolicies), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeSSLPoliciesOutput' :: ({ "SslPolicies" :: NullOrUndefined (SslPolicies), "NextMarker" :: NullOrUndefined (Marker) } -> { "SslPolicies" :: NullOrUndefined (SslPolicies), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeSSLPoliciesOutput
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
  = DescribeTagsOutput { "TagDescriptions" :: NullOrUndefined (TagDescriptions) }
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
newDescribeTagsOutput' :: ({ "TagDescriptions" :: NullOrUndefined (TagDescriptions) } -> { "TagDescriptions" :: NullOrUndefined (TagDescriptions) }) -> DescribeTagsOutput
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
  = DescribeTargetGroupAttributesOutput { "Attributes" :: NullOrUndefined (TargetGroupAttributes) }
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
newDescribeTargetGroupAttributesOutput' :: ({ "Attributes" :: NullOrUndefined (TargetGroupAttributes) } -> { "Attributes" :: NullOrUndefined (TargetGroupAttributes) }) -> DescribeTargetGroupAttributesOutput
```

Constructs DescribeTargetGroupAttributesOutput's fields from required parameters

#### `DescribeTargetGroupsInput`

``` purescript
newtype DescribeTargetGroupsInput
  = DescribeTargetGroupsInput { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "TargetGroupArns" :: NullOrUndefined (TargetGroupArns), "Names" :: NullOrUndefined (TargetGroupNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }
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
newDescribeTargetGroupsInput' :: ({ "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "TargetGroupArns" :: NullOrUndefined (TargetGroupArns), "Names" :: NullOrUndefined (TargetGroupNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) } -> { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "TargetGroupArns" :: NullOrUndefined (TargetGroupArns), "Names" :: NullOrUndefined (TargetGroupNames), "Marker" :: NullOrUndefined (Marker), "PageSize" :: NullOrUndefined (PageSize) }) -> DescribeTargetGroupsInput
```

Constructs DescribeTargetGroupsInput's fields from required parameters

#### `DescribeTargetGroupsOutput`

``` purescript
newtype DescribeTargetGroupsOutput
  = DescribeTargetGroupsOutput { "TargetGroups" :: NullOrUndefined (TargetGroups), "NextMarker" :: NullOrUndefined (Marker) }
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
newDescribeTargetGroupsOutput' :: ({ "TargetGroups" :: NullOrUndefined (TargetGroups), "NextMarker" :: NullOrUndefined (Marker) } -> { "TargetGroups" :: NullOrUndefined (TargetGroups), "NextMarker" :: NullOrUndefined (Marker) }) -> DescribeTargetGroupsOutput
```

Constructs DescribeTargetGroupsOutput's fields from required parameters

#### `DescribeTargetHealthInput`

``` purescript
newtype DescribeTargetHealthInput
  = DescribeTargetHealthInput { "TargetGroupArn" :: TargetGroupArn, "Targets" :: NullOrUndefined (TargetDescriptions) }
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
newDescribeTargetHealthInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn, "Targets" :: NullOrUndefined (TargetDescriptions) } -> { "TargetGroupArn" :: TargetGroupArn, "Targets" :: NullOrUndefined (TargetDescriptions) }) -> DescribeTargetHealthInput
```

Constructs DescribeTargetHealthInput's fields from required parameters

#### `DescribeTargetHealthOutput`

``` purescript
newtype DescribeTargetHealthOutput
  = DescribeTargetHealthOutput { "TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions) }
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
newDescribeTargetHealthOutput' :: ({ "TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions) } -> { "TargetHealthDescriptions" :: NullOrUndefined (TargetHealthDescriptions) }) -> DescribeTargetHealthOutput
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
  = Limit { "Name" :: NullOrUndefined (Name), "Max" :: NullOrUndefined (Max) }
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
newLimit' :: ({ "Name" :: NullOrUndefined (Name), "Max" :: NullOrUndefined (Max) } -> { "Name" :: NullOrUndefined (Name), "Max" :: NullOrUndefined (Max) }) -> Limit
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
  = Listener { "ListenerArn" :: NullOrUndefined (ListenerArn), "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "Certificates" :: NullOrUndefined (CertificateList), "SslPolicy" :: NullOrUndefined (SslPolicyName), "DefaultActions" :: NullOrUndefined (Actions) }
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
newListener' :: ({ "ListenerArn" :: NullOrUndefined (ListenerArn), "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "Certificates" :: NullOrUndefined (CertificateList), "SslPolicy" :: NullOrUndefined (SslPolicyName), "DefaultActions" :: NullOrUndefined (Actions) } -> { "ListenerArn" :: NullOrUndefined (ListenerArn), "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "Certificates" :: NullOrUndefined (CertificateList), "SslPolicy" :: NullOrUndefined (SslPolicyName), "DefaultActions" :: NullOrUndefined (Actions) }) -> Listener
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
  = LoadBalancer { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "DNSName" :: NullOrUndefined (DNSName), "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId), "CreatedTime" :: NullOrUndefined (CreatedTime), "LoadBalancerName" :: NullOrUndefined (LoadBalancerName), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "VpcId" :: NullOrUndefined (VpcId), "State" :: NullOrUndefined (LoadBalancerState), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "AvailabilityZones" :: NullOrUndefined (AvailabilityZones), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "IpAddressType" :: NullOrUndefined (IpAddressType) }
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
newLoadBalancer' :: ({ "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "DNSName" :: NullOrUndefined (DNSName), "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId), "CreatedTime" :: NullOrUndefined (CreatedTime), "LoadBalancerName" :: NullOrUndefined (LoadBalancerName), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "VpcId" :: NullOrUndefined (VpcId), "State" :: NullOrUndefined (LoadBalancerState), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "AvailabilityZones" :: NullOrUndefined (AvailabilityZones), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "IpAddressType" :: NullOrUndefined (IpAddressType) } -> { "LoadBalancerArn" :: NullOrUndefined (LoadBalancerArn), "DNSName" :: NullOrUndefined (DNSName), "CanonicalHostedZoneId" :: NullOrUndefined (CanonicalHostedZoneId), "CreatedTime" :: NullOrUndefined (CreatedTime), "LoadBalancerName" :: NullOrUndefined (LoadBalancerName), "Scheme" :: NullOrUndefined (LoadBalancerSchemeEnum), "VpcId" :: NullOrUndefined (VpcId), "State" :: NullOrUndefined (LoadBalancerState), "Type" :: NullOrUndefined (LoadBalancerTypeEnum), "AvailabilityZones" :: NullOrUndefined (AvailabilityZones), "SecurityGroups" :: NullOrUndefined (SecurityGroups), "IpAddressType" :: NullOrUndefined (IpAddressType) }) -> LoadBalancer
```

Constructs LoadBalancer's fields from required parameters

#### `LoadBalancerAddress`

``` purescript
newtype LoadBalancerAddress
  = LoadBalancerAddress { "IpAddress" :: NullOrUndefined (IpAddress), "AllocationId" :: NullOrUndefined (AllocationId) }
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
newLoadBalancerAddress' :: ({ "IpAddress" :: NullOrUndefined (IpAddress), "AllocationId" :: NullOrUndefined (AllocationId) } -> { "IpAddress" :: NullOrUndefined (IpAddress), "AllocationId" :: NullOrUndefined (AllocationId) }) -> LoadBalancerAddress
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
  = LoadBalancerAttribute { "Key" :: NullOrUndefined (LoadBalancerAttributeKey), "Value" :: NullOrUndefined (LoadBalancerAttributeValue) }
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
newLoadBalancerAttribute' :: ({ "Key" :: NullOrUndefined (LoadBalancerAttributeKey), "Value" :: NullOrUndefined (LoadBalancerAttributeValue) } -> { "Key" :: NullOrUndefined (LoadBalancerAttributeKey), "Value" :: NullOrUndefined (LoadBalancerAttributeValue) }) -> LoadBalancerAttribute
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
  = LoadBalancerState { "Code" :: NullOrUndefined (LoadBalancerStateEnum), "Reason" :: NullOrUndefined (StateReason) }
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
newLoadBalancerState' :: ({ "Code" :: NullOrUndefined (LoadBalancerStateEnum), "Reason" :: NullOrUndefined (StateReason) } -> { "Code" :: NullOrUndefined (LoadBalancerStateEnum), "Reason" :: NullOrUndefined (StateReason) }) -> LoadBalancerState
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
  = ModifyListenerInput { "ListenerArn" :: ListenerArn, "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: NullOrUndefined (Actions) }
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
newModifyListenerInput' :: ListenerArn -> ({ "ListenerArn" :: ListenerArn, "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: NullOrUndefined (Actions) } -> { "ListenerArn" :: ListenerArn, "Port" :: NullOrUndefined (Port), "Protocol" :: NullOrUndefined (ProtocolEnum), "SslPolicy" :: NullOrUndefined (SslPolicyName), "Certificates" :: NullOrUndefined (CertificateList), "DefaultActions" :: NullOrUndefined (Actions) }) -> ModifyListenerInput
```

Constructs ModifyListenerInput's fields from required parameters

#### `ModifyListenerOutput`

``` purescript
newtype ModifyListenerOutput
  = ModifyListenerOutput { "Listeners" :: NullOrUndefined (Listeners) }
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
newModifyListenerOutput' :: ({ "Listeners" :: NullOrUndefined (Listeners) } -> { "Listeners" :: NullOrUndefined (Listeners) }) -> ModifyListenerOutput
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
  = ModifyLoadBalancerAttributesOutput { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) }
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
newModifyLoadBalancerAttributesOutput' :: ({ "Attributes" :: NullOrUndefined (LoadBalancerAttributes) } -> { "Attributes" :: NullOrUndefined (LoadBalancerAttributes) }) -> ModifyLoadBalancerAttributesOutput
```

Constructs ModifyLoadBalancerAttributesOutput's fields from required parameters

#### `ModifyRuleInput`

``` purescript
newtype ModifyRuleInput
  = ModifyRuleInput { "RuleArn" :: RuleArn, "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions) }
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
newModifyRuleInput' :: RuleArn -> ({ "RuleArn" :: RuleArn, "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions) } -> { "RuleArn" :: RuleArn, "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions) }) -> ModifyRuleInput
```

Constructs ModifyRuleInput's fields from required parameters

#### `ModifyRuleOutput`

``` purescript
newtype ModifyRuleOutput
  = ModifyRuleOutput { "Rules" :: NullOrUndefined (Rules) }
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
newModifyRuleOutput' :: ({ "Rules" :: NullOrUndefined (Rules) } -> { "Rules" :: NullOrUndefined (Rules) }) -> ModifyRuleOutput
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
  = ModifyTargetGroupAttributesOutput { "Attributes" :: NullOrUndefined (TargetGroupAttributes) }
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
newModifyTargetGroupAttributesOutput' :: ({ "Attributes" :: NullOrUndefined (TargetGroupAttributes) } -> { "Attributes" :: NullOrUndefined (TargetGroupAttributes) }) -> ModifyTargetGroupAttributesOutput
```

Constructs ModifyTargetGroupAttributesOutput's fields from required parameters

#### `ModifyTargetGroupInput`

``` purescript
newtype ModifyTargetGroupInput
  = ModifyTargetGroupInput { "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher) }
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
newModifyTargetGroupInput' :: TargetGroupArn -> ({ "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher) } -> { "TargetGroupArn" :: TargetGroupArn, "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckPath" :: NullOrUndefined (Path), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "Matcher" :: NullOrUndefined (Matcher) }) -> ModifyTargetGroupInput
```

Constructs ModifyTargetGroupInput's fields from required parameters

#### `ModifyTargetGroupOutput`

``` purescript
newtype ModifyTargetGroupOutput
  = ModifyTargetGroupOutput { "TargetGroups" :: NullOrUndefined (TargetGroups) }
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
newModifyTargetGroupOutput' :: ({ "TargetGroups" :: NullOrUndefined (TargetGroups) } -> { "TargetGroups" :: NullOrUndefined (TargetGroups) }) -> ModifyTargetGroupOutput
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
  = Rule { "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (String), "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions), "IsDefault" :: NullOrUndefined (IsDefault) }
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
newRule' :: ({ "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (String), "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions), "IsDefault" :: NullOrUndefined (IsDefault) } -> { "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (String), "Conditions" :: NullOrUndefined (RuleConditionList), "Actions" :: NullOrUndefined (Actions), "IsDefault" :: NullOrUndefined (IsDefault) }) -> Rule
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
  = RuleCondition { "Field" :: NullOrUndefined (ConditionFieldName), "Values" :: NullOrUndefined (ListOfString) }
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
newRuleCondition' :: ({ "Field" :: NullOrUndefined (ConditionFieldName), "Values" :: NullOrUndefined (ListOfString) } -> { "Field" :: NullOrUndefined (ConditionFieldName), "Values" :: NullOrUndefined (ListOfString) }) -> RuleCondition
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
  = RulePriorityPair { "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (RulePriority) }
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
newRulePriorityPair' :: ({ "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (RulePriority) } -> { "RuleArn" :: NullOrUndefined (RuleArn), "Priority" :: NullOrUndefined (RulePriority) }) -> RulePriorityPair
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
  = SetIpAddressTypeOutput { "IpAddressType" :: NullOrUndefined (IpAddressType) }
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
newSetIpAddressTypeOutput' :: ({ "IpAddressType" :: NullOrUndefined (IpAddressType) } -> { "IpAddressType" :: NullOrUndefined (IpAddressType) }) -> SetIpAddressTypeOutput
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
  = SetRulePrioritiesOutput { "Rules" :: NullOrUndefined (Rules) }
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
newSetRulePrioritiesOutput' :: ({ "Rules" :: NullOrUndefined (Rules) } -> { "Rules" :: NullOrUndefined (Rules) }) -> SetRulePrioritiesOutput
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
  = SetSecurityGroupsOutput { "SecurityGroupIds" :: NullOrUndefined (SecurityGroups) }
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
newSetSecurityGroupsOutput' :: ({ "SecurityGroupIds" :: NullOrUndefined (SecurityGroups) } -> { "SecurityGroupIds" :: NullOrUndefined (SecurityGroups) }) -> SetSecurityGroupsOutput
```

Constructs SetSecurityGroupsOutput's fields from required parameters

#### `SetSubnetsInput`

``` purescript
newtype SetSubnetsInput
  = SetSubnetsInput { "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: NullOrUndefined (SubnetMappings) }
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
newSetSubnetsInput' :: LoadBalancerArn -> Subnets -> ({ "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: NullOrUndefined (SubnetMappings) } -> { "LoadBalancerArn" :: LoadBalancerArn, "Subnets" :: Subnets, "SubnetMappings" :: NullOrUndefined (SubnetMappings) }) -> SetSubnetsInput
```

Constructs SetSubnetsInput's fields from required parameters

#### `SetSubnetsOutput`

``` purescript
newtype SetSubnetsOutput
  = SetSubnetsOutput { "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) }
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
newSetSubnetsOutput' :: ({ "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) } -> { "AvailabilityZones" :: NullOrUndefined (AvailabilityZones) }) -> SetSubnetsOutput
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
  = SslPolicy { "SslProtocols" :: NullOrUndefined (SslProtocols), "Ciphers" :: NullOrUndefined (Ciphers), "Name" :: NullOrUndefined (SslPolicyName) }
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
newSslPolicy' :: ({ "SslProtocols" :: NullOrUndefined (SslProtocols), "Ciphers" :: NullOrUndefined (Ciphers), "Name" :: NullOrUndefined (SslPolicyName) } -> { "SslProtocols" :: NullOrUndefined (SslProtocols), "Ciphers" :: NullOrUndefined (Ciphers), "Name" :: NullOrUndefined (SslPolicyName) }) -> SslPolicy
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
  = SubnetMapping { "SubnetId" :: NullOrUndefined (SubnetId), "AllocationId" :: NullOrUndefined (AllocationId) }
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
newSubnetMapping' :: ({ "SubnetId" :: NullOrUndefined (SubnetId), "AllocationId" :: NullOrUndefined (AllocationId) } -> { "SubnetId" :: NullOrUndefined (SubnetId), "AllocationId" :: NullOrUndefined (AllocationId) }) -> SubnetMapping
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
  = Tag { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }
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
newTag' :: TagKey -> ({ "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagDescription`

``` purescript
newtype TagDescription
  = TagDescription { "ResourceArn" :: NullOrUndefined (ResourceArn), "Tags" :: NullOrUndefined (TagList) }
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
newTagDescription' :: ({ "ResourceArn" :: NullOrUndefined (ResourceArn), "Tags" :: NullOrUndefined (TagList) } -> { "ResourceArn" :: NullOrUndefined (ResourceArn), "Tags" :: NullOrUndefined (TagList) }) -> TagDescription
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
  = TargetDescription { "Id" :: TargetId, "Port" :: NullOrUndefined (Port), "AvailabilityZone" :: NullOrUndefined (ZoneName) }
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
newTargetDescription' :: TargetId -> ({ "Id" :: TargetId, "Port" :: NullOrUndefined (Port), "AvailabilityZone" :: NullOrUndefined (ZoneName) } -> { "Id" :: TargetId, "Port" :: NullOrUndefined (Port), "AvailabilityZone" :: NullOrUndefined (ZoneName) }) -> TargetDescription
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
  = TargetGroup { "TargetGroupArn" :: NullOrUndefined (TargetGroupArn), "TargetGroupName" :: NullOrUndefined (TargetGroupName), "Protocol" :: NullOrUndefined (ProtocolEnum), "Port" :: NullOrUndefined (Port), "VpcId" :: NullOrUndefined (VpcId), "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "HealthCheckPath" :: NullOrUndefined (Path), "Matcher" :: NullOrUndefined (Matcher), "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "TargetType" :: NullOrUndefined (TargetTypeEnum) }
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
newTargetGroup' :: ({ "TargetGroupArn" :: NullOrUndefined (TargetGroupArn), "TargetGroupName" :: NullOrUndefined (TargetGroupName), "Protocol" :: NullOrUndefined (ProtocolEnum), "Port" :: NullOrUndefined (Port), "VpcId" :: NullOrUndefined (VpcId), "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "HealthCheckPath" :: NullOrUndefined (Path), "Matcher" :: NullOrUndefined (Matcher), "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "TargetType" :: NullOrUndefined (TargetTypeEnum) } -> { "TargetGroupArn" :: NullOrUndefined (TargetGroupArn), "TargetGroupName" :: NullOrUndefined (TargetGroupName), "Protocol" :: NullOrUndefined (ProtocolEnum), "Port" :: NullOrUndefined (Port), "VpcId" :: NullOrUndefined (VpcId), "HealthCheckProtocol" :: NullOrUndefined (ProtocolEnum), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "HealthCheckIntervalSeconds" :: NullOrUndefined (HealthCheckIntervalSeconds), "HealthCheckTimeoutSeconds" :: NullOrUndefined (HealthCheckTimeoutSeconds), "HealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "UnhealthyThresholdCount" :: NullOrUndefined (HealthCheckThresholdCount), "HealthCheckPath" :: NullOrUndefined (Path), "Matcher" :: NullOrUndefined (Matcher), "LoadBalancerArns" :: NullOrUndefined (LoadBalancerArns), "TargetType" :: NullOrUndefined (TargetTypeEnum) }) -> TargetGroup
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
  = TargetGroupAttribute { "Key" :: NullOrUndefined (TargetGroupAttributeKey), "Value" :: NullOrUndefined (TargetGroupAttributeValue) }
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
newTargetGroupAttribute' :: ({ "Key" :: NullOrUndefined (TargetGroupAttributeKey), "Value" :: NullOrUndefined (TargetGroupAttributeValue) } -> { "Key" :: NullOrUndefined (TargetGroupAttributeKey), "Value" :: NullOrUndefined (TargetGroupAttributeValue) }) -> TargetGroupAttribute
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
  = TargetHealth { "State" :: NullOrUndefined (TargetHealthStateEnum), "Reason" :: NullOrUndefined (TargetHealthReasonEnum), "Description" :: NullOrUndefined (Description) }
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
newTargetHealth' :: ({ "State" :: NullOrUndefined (TargetHealthStateEnum), "Reason" :: NullOrUndefined (TargetHealthReasonEnum), "Description" :: NullOrUndefined (Description) } -> { "State" :: NullOrUndefined (TargetHealthStateEnum), "Reason" :: NullOrUndefined (TargetHealthReasonEnum), "Description" :: NullOrUndefined (Description) }) -> TargetHealth
```

Constructs TargetHealth's fields from required parameters

#### `TargetHealthDescription`

``` purescript
newtype TargetHealthDescription
  = TargetHealthDescription { "Target" :: NullOrUndefined (TargetDescription), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "TargetHealth" :: NullOrUndefined (TargetHealth) }
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
newTargetHealthDescription' :: ({ "Target" :: NullOrUndefined (TargetDescription), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "TargetHealth" :: NullOrUndefined (TargetHealth) } -> { "Target" :: NullOrUndefined (TargetDescription), "HealthCheckPort" :: NullOrUndefined (HealthCheckPort), "TargetHealth" :: NullOrUndefined (TargetHealth) }) -> TargetHealthDescription
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


