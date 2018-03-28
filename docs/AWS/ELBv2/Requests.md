## Module AWS.ELBv2.Requests

#### `addListenerCertificates`

``` purescript
addListenerCertificates :: forall eff. Service -> AddListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) AddListenerCertificatesOutput
```

<p>Adds the specified certificate to the specified secure listener.</p> <p>If the certificate was already added, the call is successful but the certificate is not added again.</p> <p>To list the certificates for your listener, use <a>DescribeListenerCertificates</a>. To remove certificates from your listener, use <a>RemoveListenerCertificates</a>.</p>

#### `addTags`

``` purescript
addTags :: forall eff. Service -> AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
```

<p>Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups.</p> <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, <code>AddTags</code> updates its value.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>. To remove tags from your resources, use <a>RemoveTags</a>.</p>

#### `createListener`

``` purescript
createListener :: forall eff. Service -> CreateListenerInput -> Aff (exception :: EXCEPTION | eff) CreateListenerOutput
```

<p>Creates a listener for the specified Application Load Balancer or Network Load Balancer.</p> <p>To update a listener, use <a>ModifyListener</a>. When you are finished with a listener, you can delete it using <a>DeleteListener</a>. If you are finished with both the listener and the load balancer, you can delete them both using <a>DeleteLoadBalancer</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html">Listeners for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `createLoadBalancer`

``` purescript
createLoadBalancer :: forall eff. Service -> CreateLoadBalancerInput -> Aff (exception :: EXCEPTION | eff) CreateLoadBalancerOutput
```

<p>Creates an Application Load Balancer or a Network Load Balancer.</p> <p>When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using <a>SetSecurityGroups</a>, <a>SetSubnets</a>, <a>SetIpAddressType</a>, and <a>AddTags</a>.</p> <p>To create listeners for your load balancer, use <a>CreateListener</a>. To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>For limit information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancer</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancer</a> in the <i>Network Load Balancers Guide</i>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html">Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `createRule`

``` purescript
createRule :: forall eff. Service -> CreateRuleInput -> Aff (exception :: EXCEPTION | eff) CreateRuleOutput
```

<p>Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer.</p> <p>Rules are evaluated in priority order, from the lowest value to the highest value. When the condition for a rule is met, the specified action is taken. If no conditions are met, the action for the default rule is taken. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener Rules</a> in the <i>Application Load Balancers Guide</i>.</p> <p>To view your current rules, use <a>DescribeRules</a>. To update a rule, use <a>ModifyRule</a>. To set the priorities of your rules, use <a>SetRulePriorities</a>. To delete a rule, use <a>DeleteRule</a>.</p>

#### `createTargetGroup`

``` purescript
createTargetGroup :: forall eff. Service -> CreateTargetGroupInput -> Aff (exception :: EXCEPTION | eff) CreateTargetGroupOutput
```

<p>Creates a target group.</p> <p>To register targets with the target group, use <a>RegisterTargets</a>. To update the health check settings for the target group, use <a>ModifyTargetGroup</a>. To monitor the health of targets in the target group, use <a>DescribeTargetHealth</a>.</p> <p>To route traffic to the targets in a target group, specify the target group in an action using <a>CreateListener</a> or <a>CreateRule</a>.</p> <p>To delete a target group, use <a>DeleteTargetGroup</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target Groups for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> or <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html">Target Groups for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `deleteListener`

``` purescript
deleteListener :: forall eff. Service -> DeleteListenerInput -> Aff (exception :: EXCEPTION | eff) DeleteListenerOutput
```

<p>Deletes the specified listener.</p> <p>Alternatively, your listener is deleted when you delete the load balancer it is attached to using <a>DeleteLoadBalancer</a>.</p>

#### `deleteLoadBalancer`

``` purescript
deleteLoadBalancer :: forall eff. Service -> DeleteLoadBalancerInput -> Aff (exception :: EXCEPTION | eff) DeleteLoadBalancerOutput
```

<p>Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners.</p> <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds.</p> <p>Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.</p>

#### `deleteRule`

``` purescript
deleteRule :: forall eff. Service -> DeleteRuleInput -> Aff (exception :: EXCEPTION | eff) DeleteRuleOutput
```

<p>Deletes the specified rule.</p>

#### `deleteTargetGroup`

``` purescript
deleteTargetGroup :: forall eff. Service -> DeleteTargetGroupInput -> Aff (exception :: EXCEPTION | eff) DeleteTargetGroupOutput
```

<p>Deletes the specified target group.</p> <p>You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.</p>

#### `deregisterTargets`

``` purescript
deregisterTargets :: forall eff. Service -> DeregisterTargetsInput -> Aff (exception :: EXCEPTION | eff) DeregisterTargetsOutput
```

<p>Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.</p>

#### `describeAccountLimits`

``` purescript
describeAccountLimits :: forall eff. Service -> DescribeAccountLimitsInput -> Aff (exception :: EXCEPTION | eff) DescribeAccountLimitsOutput
```

<p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancers</a> in the <i>Application Load Balancer Guide</i> or <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

#### `describeListenerCertificates`

``` purescript
describeListenerCertificates :: forall eff. Service -> DescribeListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) DescribeListenerCertificatesOutput
```

<p>Describes the certificates for the specified secure listener.</p>

#### `describeListeners`

``` purescript
describeListeners :: forall eff. Service -> DescribeListenersInput -> Aff (exception :: EXCEPTION | eff) DescribeListenersOutput
```

<p>Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners.</p>

#### `describeLoadBalancerAttributes`

``` purescript
describeLoadBalancerAttributes :: forall eff. Service -> DescribeLoadBalancerAttributesInput -> Aff (exception :: EXCEPTION | eff) DescribeLoadBalancerAttributesOutput
```

<p>Describes the attributes for the specified Application Load Balancer or Network Load Balancer.</p>

#### `describeLoadBalancers`

``` purescript
describeLoadBalancers :: forall eff. Service -> DescribeLoadBalancersInput -> Aff (exception :: EXCEPTION | eff) DescribeLoadBalancersOutput
```

<p>Describes the specified load balancers or all of your load balancers.</p> <p>To describe the listeners for a load balancer, use <a>DescribeListeners</a>. To describe the attributes for a load balancer, use <a>DescribeLoadBalancerAttributes</a>.</p>

#### `describeRules`

``` purescript
describeRules :: forall eff. Service -> DescribeRulesInput -> Aff (exception :: EXCEPTION | eff) DescribeRulesOutput
```

<p>Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.</p>

#### `describeSSLPolicies`

``` purescript
describeSSLPolicies :: forall eff. Service -> DescribeSSLPoliciesInput -> Aff (exception :: EXCEPTION | eff) DescribeSSLPoliciesOutput
```

<p>Describes the specified policies or all policies used for SSL negotiation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security Policies</a> in the <i>Application Load Balancers Guide</i>.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. Service -> DescribeTagsInput -> Aff (exception :: EXCEPTION | eff) DescribeTagsOutput
```

<p>Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.</p>

#### `describeTargetGroupAttributes`

``` purescript
describeTargetGroupAttributes :: forall eff. Service -> DescribeTargetGroupAttributesInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetGroupAttributesOutput
```

<p>Describes the attributes for the specified target group.</p>

#### `describeTargetGroups`

``` purescript
describeTargetGroups :: forall eff. Service -> DescribeTargetGroupsInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetGroupsOutput
```

<p>Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.</p> <p>To describe the targets for a target group, use <a>DescribeTargetHealth</a>. To describe the attributes of a target group, use <a>DescribeTargetGroupAttributes</a>.</p>

#### `describeTargetHealth`

``` purescript
describeTargetHealth :: forall eff. Service -> DescribeTargetHealthInput -> Aff (exception :: EXCEPTION | eff) DescribeTargetHealthOutput
```

<p>Describes the health of the specified targets or all of your targets.</p>

#### `modifyListener`

``` purescript
modifyListener :: forall eff. Service -> ModifyListenerInput -> Aff (exception :: EXCEPTION | eff) ModifyListenerOutput
```

<p>Modifies the specified properties of the specified listener.</p> <p>Any properties that you do not specify retain their current values. However, changing the protocol from HTTPS to HTTP removes the security policy and SSL certificate properties. If you change the protocol from HTTP to HTTPS, you must add the security policy and server certificate.</p>

#### `modifyLoadBalancerAttributes`

``` purescript
modifyLoadBalancerAttributes :: forall eff. Service -> ModifyLoadBalancerAttributesInput -> Aff (exception :: EXCEPTION | eff) ModifyLoadBalancerAttributesOutput
```

<p>Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer.</p> <p>If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.</p>

#### `modifyRule`

``` purescript
modifyRule :: forall eff. Service -> ModifyRuleInput -> Aff (exception :: EXCEPTION | eff) ModifyRuleOutput
```

<p>Modifies the specified rule.</p> <p>Any existing properties that you do not modify retain their current values.</p> <p>To modify the default action, use <a>ModifyListener</a>.</p>

#### `modifyTargetGroup`

``` purescript
modifyTargetGroup :: forall eff. Service -> ModifyTargetGroupInput -> Aff (exception :: EXCEPTION | eff) ModifyTargetGroupOutput
```

<p>Modifies the health checks used when evaluating the health state of the targets in the specified target group.</p> <p>To monitor the health of the targets, use <a>DescribeTargetHealth</a>.</p>

#### `modifyTargetGroupAttributes`

``` purescript
modifyTargetGroupAttributes :: forall eff. Service -> ModifyTargetGroupAttributesInput -> Aff (exception :: EXCEPTION | eff) ModifyTargetGroupAttributesOutput
```

<p>Modifies the specified attributes of the specified target group.</p>

#### `registerTargets`

``` purescript
registerTargets :: forall eff. Service -> RegisterTargetsInput -> Aff (exception :: EXCEPTION | eff) RegisterTargetsOutput
```

<p>Registers the specified targets with the specified target group.</p> <p>You can register targets by instance ID or by IP address. If the target is an EC2 instance, it must be in the <code>running</code> state when you register it.</p> <p>By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.</p> <p>With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.</p> <p>To remove a target from a target group, use <a>DeregisterTargets</a>.</p>

#### `removeListenerCertificates`

``` purescript
removeListenerCertificates :: forall eff. Service -> RemoveListenerCertificatesInput -> Aff (exception :: EXCEPTION | eff) RemoveListenerCertificatesOutput
```

<p>Removes the specified certificate from the specified secure listener.</p> <p>You can't remove the default certificate for a listener. To replace the default certificate, call <a>ModifyListener</a>.</p> <p>To list the certificates for your listener, use <a>DescribeListenerCertificates</a>.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. Service -> RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) RemoveTagsOutput
```

<p>Removes the specified tags from the specified Elastic Load Balancing resource.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>.</p>

#### `setIpAddressType`

``` purescript
setIpAddressType :: forall eff. Service -> SetIpAddressTypeInput -> Aff (exception :: EXCEPTION | eff) SetIpAddressTypeOutput
```

<p>Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.</p> <p>Note that Network Load Balancers must use <code>ipv4</code>.</p>

#### `setRulePriorities`

``` purescript
setRulePriorities :: forall eff. Service -> SetRulePrioritiesInput -> Aff (exception :: EXCEPTION | eff) SetRulePrioritiesOutput
```

<p>Sets the priorities of the specified rules.</p> <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.</p>

#### `setSecurityGroups`

``` purescript
setSecurityGroups :: forall eff. Service -> SetSecurityGroupsInput -> Aff (exception :: EXCEPTION | eff) SetSecurityGroupsOutput
```

<p>Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups.</p> <p>Note that you can't specify a security group for a Network Load Balancer.</p>

#### `setSubnets`

``` purescript
setSubnets :: forall eff. Service -> SetSubnetsInput -> Aff (exception :: EXCEPTION | eff) SetSubnetsOutput
```

<p>Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer. The specified subnets replace the previously enabled subnets.</p> <p>Note that you can't change the subnets for a Network Load Balancer.</p>


