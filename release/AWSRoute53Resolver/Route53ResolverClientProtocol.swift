// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC
/// 			from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names
/// 			such as domain names for EC2 instances or Elastic Load Balancing load balancers.
/// 			Resolver performs recursive lookups against public name servers for all other domain
/// 			names.
///
/// 		       You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:
///
/// 		
///             Forward DNS queries from resolvers on your network to Route 53 Resolver
///
///
/// 		       DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers
/// 			to easily resolve domain names for AWS resources such as EC2 instances or records in a Route 53 private hosted zone.
/// 			For more information, see
/// 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc">How DNS Resolvers
/// 			on Your Network Forward DNS Queries to Route 53 Resolver in the Amazon Route 53 Developer Guide.
/// 		
/// 		
///             Conditionally forward queries from a VPC to resolvers on your network
///
///
/// 		       You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network.
/// 			To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward
/// 			(such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to.
/// 			If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match
/// 			(acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see
/// 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network">How Route 53 Resolver
/// 			Forwards DNS Queries from Your VPCs to Your Network in the Amazon Route 53 Developer Guide.
///
/// 		       Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs, you can choose
/// 			whether to forward queries from your VPCs to your network (outbound queries), from your
/// 			network to your VPCs (inbound queries), or both.
public protocol Route53ResolverClientProtocol {
    /// Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for the VPC.
    func associateFirewallRuleGroup(input: AssociateFirewallRuleGroupInput, completion: @escaping (ClientRuntime.SdkResult<AssociateFirewallRuleGroupOutputResponse, AssociateFirewallRuleGroupOutputError>) -> Void)
    /// Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address,
    /// 			submit one AssociateResolverEndpointIpAddress request for each IP address.
    /// 		       To remove an IP address from an endpoint, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html">DisassociateResolverEndpointIpAddress.
    /// 		
    func associateResolverEndpointIpAddress(input: AssociateResolverEndpointIpAddressInput, completion: @escaping (ClientRuntime.SdkResult<AssociateResolverEndpointIpAddressOutputResponse, AssociateResolverEndpointIpAddressOutputError>) -> Void)
    /// Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs
    /// 			that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one AssociateResolverQueryLogConfig
    /// 			request for each VPC.
    /// 		
    /// 		
    ///             The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.
    ///
    /// 		
    /// 		       To remove a VPC from a query logging configuration, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig.
    /// 			
    func associateResolverQueryLogConfig(input: AssociateResolverQueryLogConfigInput, completion: @escaping (ClientRuntime.SdkResult<AssociateResolverQueryLogConfigOutputResponse, AssociateResolverQueryLogConfigOutputError>) -> Void)
    /// Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries
    /// 			for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the
    /// 			IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html">CreateResolverRule.
    func associateResolverRule(input: AssociateResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<AssociateResolverRuleOutputResponse, AssociateResolverRuleOutputError>) -> Void)
    /// Creates an empty firewall domain list for use in DNS Firewall rules. You can populate the domains for the new list with a file, using ImportFirewallDomains, or with domain strings, using UpdateFirewallDomains.
    func createFirewallDomainList(input: CreateFirewallDomainListInput, completion: @escaping (ClientRuntime.SdkResult<CreateFirewallDomainListOutputResponse, CreateFirewallDomainListOutputError>) -> Void)
    /// Creates a single DNS Firewall rule in the specified rule group, using the specified domain list.
    func createFirewallRule(input: CreateFirewallRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreateFirewallRuleOutputResponse, CreateFirewallRuleOutputError>) -> Void)
    /// Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC. You can add rules to the new rule group
    ///            by calling CreateFirewallRule.
    func createFirewallRuleGroup(input: CreateFirewallRuleGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateFirewallRuleGroupOutputResponse, CreateFirewallRuleGroupOutputError>) -> Void)
    /// Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:
    /// 		
    ///
    ///                An inbound Resolver endpoint forwards DNS queries to the DNS service for a VPC
    /// 				from your network.
    ///
    ///
    ///                An outbound Resolver endpoint forwards DNS queries from the DNS service for a VPC
    /// 				to your network.
    ///
    ///
    func createResolverEndpoint(input: CreateResolverEndpointInput, completion: @escaping (ClientRuntime.SdkResult<CreateResolverEndpointOutputResponse, CreateResolverEndpointOutputError>) -> Void)
    /// Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs.
    /// 			Resolver can log queries only for VPCs that are in the same Region as the query logging configuration.
    /// 		
    /// 		       To specify which VPCs you want to log queries for, you use AssociateResolverQueryLogConfig. For more information, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html">AssociateResolverQueryLogConfig.
    /// 		
    /// 		       You can optionally use AWS Resource Access Manager (AWS RAM) to share a query logging configuration with other AWS accounts. The other accounts
    /// 			can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all
    /// 			VPCs that are associated with the configuration.
    func createResolverQueryLogConfig(input: CreateResolverQueryLogConfigInput, completion: @escaping (ClientRuntime.SdkResult<CreateResolverQueryLogConfigOutputResponse, CreateResolverQueryLogConfigOutputError>) -> Void)
    /// For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through,
    /// 			one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.
    func createResolverRule(input: CreateResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreateResolverRuleOutputResponse, CreateResolverRuleOutputError>) -> Void)
    /// Deletes the specified domain list.
    func deleteFirewallDomainList(input: DeleteFirewallDomainListInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFirewallDomainListOutputResponse, DeleteFirewallDomainListOutputError>) -> Void)
    /// Deletes the specified firewall rule.
    func deleteFirewallRule(input: DeleteFirewallRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFirewallRuleOutputResponse, DeleteFirewallRuleOutputError>) -> Void)
    /// Deletes the specified firewall rule group.
    func deleteFirewallRuleGroup(input: DeleteFirewallRuleGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFirewallRuleGroupOutputResponse, DeleteFirewallRuleGroupOutputError>) -> Void)
    /// Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound
    /// 			Resolver endpoint:
    /// 		
    ///
    ///
    ///                   Inbound: DNS queries from your network are no longer routed
    /// 				to the DNS service for the specified VPC.
    ///
    ///
    ///
    ///                   Outbound: DNS queries from a VPC are no longer routed to your network.
    ///
    ///
    func deleteResolverEndpoint(input: DeleteResolverEndpointInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResolverEndpointOutputResponse, DeleteResolverEndpointOutputError>) -> Void)
    /// Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are
    /// 			associated with the configuration. This also applies if the query logging configuration is shared with other AWS accounts, and
    /// 			the other accounts have associated VPCs with the shared configuration.
    /// 		
    /// 		       Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig.
    /// 			
    /// 		       If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing
    /// 			the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs
    /// 			that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically
    /// 			disassociated from the configuration.
    func deleteResolverQueryLogConfig(input: DeleteResolverQueryLogConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResolverQueryLogConfigOutputResponse, DeleteResolverQueryLogConfigOutputError>) -> Void)
    /// Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you
    /// 			associated the Resolver rule with. For more information, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html">DisassociateResolverRule.
    func deleteResolverRule(input: DeleteResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResolverRuleOutputResponse, DeleteResolverRuleOutputError>) -> Void)
    /// Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering from the VPC.
    func disassociateFirewallRuleGroup(input: DisassociateFirewallRuleGroupInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateFirewallRuleGroupOutputResponse, DisassociateFirewallRuleGroupOutputError>) -> Void)
    /// Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address,
    /// 			submit one DisassociateResolverEndpointIpAddress request for each IP address.
    /// 		       To add an IP address to an endpoint, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html">AssociateResolverEndpointIpAddress.
    /// 		
    func disassociateResolverEndpointIpAddress(input: DisassociateResolverEndpointIpAddressInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateResolverEndpointIpAddressOutputResponse, DisassociateResolverEndpointIpAddressOutputError>) -> Void)
    /// Disassociates a VPC from a query logging configuration.
    /// 		
    /// 		
    /// 			         Before you can delete a query logging configuration, you must first disassociate all VPCs
    /// 				from the configuration. If you used AWS Resource Access Manager (AWS RAM) to share a
    /// 				query logging configuration with other accounts, VPCs can be disassociated from the
    /// 				configuration in the following ways:
    /// 			
    ///
    ///                   The accounts that you shared the configuration with can disassociate VPCs from the configuration.
    ///
    ///
    ///                   You can stop sharing the configuration.
    ///
    ///
    /// 		
    func disassociateResolverQueryLogConfig(input: DisassociateResolverQueryLogConfigInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateResolverQueryLogConfigOutputResponse, DisassociateResolverQueryLogConfigOutputError>) -> Void)
    /// Removes the association between a specified Resolver rule and a specified VPC.
    /// 		
    /// 			         If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the
    /// 				domain name that you specified in the Resolver rule.
    /// 		
    func disassociateResolverRule(input: DisassociateResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateResolverRuleOutputResponse, DisassociateResolverRuleOutputError>) -> Void)
    /// Retrieves the configuration of the firewall behavior provided by DNS Firewall for a
    /// 			single VPC from Amazon Virtual Private Cloud (Amazon VPC).
    func getFirewallConfig(input: GetFirewallConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetFirewallConfigOutputResponse, GetFirewallConfigOutputError>) -> Void)
    /// Retrieves the specified firewall domain list.
    func getFirewallDomainList(input: GetFirewallDomainListInput, completion: @escaping (ClientRuntime.SdkResult<GetFirewallDomainListOutputResponse, GetFirewallDomainListOutputError>) -> Void)
    /// Retrieves the specified firewall rule group.
    func getFirewallRuleGroup(input: GetFirewallRuleGroupInput, completion: @escaping (ClientRuntime.SdkResult<GetFirewallRuleGroupOutputResponse, GetFirewallRuleGroupOutputError>) -> Void)
    /// Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group. A VPC can have more than one firewall rule group association, and a rule group can be associated with more than one VPC.
    func getFirewallRuleGroupAssociation(input: GetFirewallRuleGroupAssociationInput, completion: @escaping (ClientRuntime.SdkResult<GetFirewallRuleGroupAssociationOutputResponse, GetFirewallRuleGroupAssociationOutputError>) -> Void)
    /// Returns the AWS Identity and Access Management (AWS IAM) policy for sharing the
    /// 			specified rule group. You can use the policy to share the rule group using AWS Resource
    /// 			Access Manager (AWS RAM).
    func getFirewallRuleGroupPolicy(input: GetFirewallRuleGroupPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetFirewallRuleGroupPolicyOutputResponse, GetFirewallRuleGroupPolicyOutputError>) -> Void)
    /// Gets DNSSEC validation information for a specified resource.
    func getResolverDnssecConfig(input: GetResolverDnssecConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverDnssecConfigOutputResponse, GetResolverDnssecConfigOutputError>) -> Void)
    /// Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the
    /// 			current status of the endpoint.
    func getResolverEndpoint(input: GetResolverEndpointInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverEndpointOutputResponse, GetResolverEndpointOutputError>) -> Void)
    /// Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration
    /// 			is logging queries for and the location that logs are sent to.
    func getResolverQueryLogConfig(input: GetResolverQueryLogConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverQueryLogConfigOutputResponse, GetResolverQueryLogConfigOutputError>) -> Void)
    /// Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC
    /// 			with a query logging configuration, Resolver logs DNS queries that originate in that VPC.
    func getResolverQueryLogConfigAssociation(input: GetResolverQueryLogConfigAssociationInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverQueryLogConfigAssociationOutputResponse, GetResolverQueryLogConfigAssociationOutputError>) -> Void)
    /// Gets information about a query logging policy. A query logging policy specifies the Resolver query logging
    /// 			operations and resources that you want to allow another AWS account to be able to use.
    func getResolverQueryLogConfigPolicy(input: GetResolverQueryLogConfigPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverQueryLogConfigPolicyOutputResponse, GetResolverQueryLogConfigPolicyOutputError>) -> Void)
    /// Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the
    /// 			outbound Resolver endpoint that the rule is associated with.
    func getResolverRule(input: GetResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverRuleOutputResponse, GetResolverRuleOutputError>) -> Void)
    /// Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html">AssociateResolverRule.
    func getResolverRuleAssociation(input: GetResolverRuleAssociationInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverRuleAssociationOutputResponse, GetResolverRuleAssociationOutputError>) -> Void)
    /// Gets information about the Resolver rule policy for a specified rule. A Resolver rule policy includes the rule that you want to share
    /// 			with another account, the account that you want to share the rule with, and the Resolver operations that you want to allow the account to use.
    func getResolverRulePolicy(input: GetResolverRulePolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetResolverRulePolicyOutputResponse, GetResolverRulePolicyOutputError>) -> Void)
    /// Imports domain names from a file into a domain list, for use in a DNS firewall rule group.
    ///          Each domain specification in your domain list must satisfy the following
    /// 	requirements:
    ///
    ///
    ///       	        It can optionally start with * (asterisk).
    ///       	
    ///
    ///       	        With the exception of the optional starting asterisk, it must only contain
    ///       	   the following characters: A-Z, a-z,
    ///       	   0-9, - (hyphen).
    ///       	
    ///
    ///       	        It must be from 1-255 characters in length.
    ///       	
    ///
    func importFirewallDomains(input: ImportFirewallDomainsInput, completion: @escaping (ClientRuntime.SdkResult<ImportFirewallDomainsOutputResponse, ImportFirewallDomainsOutputError>) -> Void)
    /// Retrieves the firewall configurations that you have defined. DNS Firewall uses the configurations to manage firewall behavior for your VPCs.
    ///          A single call might return only a partial list of the configurations. For information, see MaxResults.
    func listFirewallConfigs(input: ListFirewallConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallConfigsOutputResponse, ListFirewallConfigsOutputError>) -> Void)
    /// Retrieves the firewall domain lists that you have defined. For each firewall domain list, you can retrieve the domains that are defined for a list by calling ListFirewallDomains.
    ///          A single call to this list operation might return only a partial list of the domain lists. For information, see MaxResults.
    func listFirewallDomainLists(input: ListFirewallDomainListsInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallDomainListsOutputResponse, ListFirewallDomainListsOutputError>) -> Void)
    /// Retrieves the domains that you have defined for the specified firewall domain list.
    ///          A single call might return only a partial list of the domains. For information, see MaxResults.
    func listFirewallDomains(input: ListFirewallDomainsInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallDomainsOutputResponse, ListFirewallDomainsOutputError>) -> Void)
    /// Retrieves the firewall rule group associations that you have defined. Each association enables DNS filtering for a VPC with one rule group.
    ///          A single call might return only a partial list of the associations. For information, see MaxResults.
    func listFirewallRuleGroupAssociations(input: ListFirewallRuleGroupAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallRuleGroupAssociationsOutputResponse, ListFirewallRuleGroupAssociationsOutputError>) -> Void)
    /// Retrieves the minimal high-level information for the rule groups that you have defined.
    ///          A single call might return only a partial list of the rule groups. For information, see MaxResults.
    func listFirewallRuleGroups(input: ListFirewallRuleGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallRuleGroupsOutputResponse, ListFirewallRuleGroupsOutputError>) -> Void)
    /// Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC.
    ///          A single call might return only a partial list of the rules. For information, see MaxResults.
    func listFirewallRules(input: ListFirewallRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListFirewallRulesOutputResponse, ListFirewallRulesOutputError>) -> Void)
    /// Lists the configurations for DNSSEC validation that are associated with the current AWS account.
    func listResolverDnssecConfigs(input: ListResolverDnssecConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverDnssecConfigsOutputResponse, ListResolverDnssecConfigsOutputError>) -> Void)
    /// Gets the IP addresses for a specified Resolver endpoint.
    func listResolverEndpointIpAddresses(input: ListResolverEndpointIpAddressesInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverEndpointIpAddressesOutputResponse, ListResolverEndpointIpAddressesOutputError>) -> Void)
    /// Lists all the Resolver endpoints that were created using the current AWS account.
    func listResolverEndpoints(input: ListResolverEndpointsInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverEndpointsOutputResponse, ListResolverEndpointsOutputError>) -> Void)
    /// Lists information about associations between Amazon VPCs and query logging configurations.
    func listResolverQueryLogConfigAssociations(input: ListResolverQueryLogConfigAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverQueryLogConfigAssociationsOutputResponse, ListResolverQueryLogConfigAssociationsOutputError>) -> Void)
    /// Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save
    /// 			DNS query logs and specifies the VPCs that you want to log queries for.
    func listResolverQueryLogConfigs(input: ListResolverQueryLogConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverQueryLogConfigsOutputResponse, ListResolverQueryLogConfigsOutputError>) -> Void)
    /// Lists the associations that were created between Resolver rules and VPCs using the current AWS account.
    func listResolverRuleAssociations(input: ListResolverRuleAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverRuleAssociationsOutputResponse, ListResolverRuleAssociationsOutputError>) -> Void)
    /// Lists the Resolver rules that were created using the current AWS account.
    func listResolverRules(input: ListResolverRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListResolverRulesOutputResponse, ListResolverRulesOutputError>) -> Void)
    /// Lists the tags that you associated with the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Attaches an AWS Identity and Access Management (AWS IAM) policy for sharing the rule
    /// 			group. You can use the policy to share the rule group using AWS Resource Access Manager
    /// 			(AWS RAM).
    func putFirewallRuleGroupPolicy(input: PutFirewallRuleGroupPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutFirewallRuleGroupPolicyOutputResponse, PutFirewallRuleGroupPolicyOutputError>) -> Void)
    /// Specifies an AWS account that you want to share a query logging configuration with, the query logging configuration that you want to share,
    /// 			and the operations that you want the account to be able to perform on the configuration.
    func putResolverQueryLogConfigPolicy(input: PutResolverQueryLogConfigPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutResolverQueryLogConfigPolicyOutputResponse, PutResolverQueryLogConfigPolicyOutputError>) -> Void)
    /// Specifies an AWS rule that you want to share with another account, the account that you want to share the rule with,
    /// 			and the operations that you want the account to be able to perform on the rule.
    func putResolverRulePolicy(input: PutResolverRulePolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutResolverRulePolicyOutputResponse, PutResolverRulePolicyOutputError>) -> Void)
    /// Adds one or more tags to a specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags from a specified resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the configuration of the firewall behavior provided by DNS Firewall for a single
    /// 			VPC from Amazon Virtual Private Cloud (Amazon VPC).
    func updateFirewallConfig(input: UpdateFirewallConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFirewallConfigOutputResponse, UpdateFirewallConfigOutputError>) -> Void)
    /// Updates the firewall domain list from an array of domain specifications.
    func updateFirewallDomains(input: UpdateFirewallDomainsInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFirewallDomainsOutputResponse, UpdateFirewallDomainsOutputError>) -> Void)
    /// Updates the specified firewall rule.
    func updateFirewallRule(input: UpdateFirewallRuleInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFirewallRuleOutputResponse, UpdateFirewallRuleOutputError>) -> Void)
    /// Changes the association of a FirewallRuleGroup with a VPC. The association enables DNS filtering for the VPC.
    func updateFirewallRuleGroupAssociation(input: UpdateFirewallRuleGroupAssociationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFirewallRuleGroupAssociationOutputResponse, UpdateFirewallRuleGroupAssociationOutputError>) -> Void)
    /// Updates an existing DNSSEC validation configuration. If there is no existing DNSSEC validation configuration, one is created.
    func updateResolverDnssecConfig(input: UpdateResolverDnssecConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResolverDnssecConfigOutputResponse, UpdateResolverDnssecConfigOutputError>) -> Void)
    /// Updates the name of an inbound or an outbound Resolver endpoint.
    func updateResolverEndpoint(input: UpdateResolverEndpointInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResolverEndpointOutputResponse, UpdateResolverEndpointOutputError>) -> Void)
    /// Updates settings for a specified Resolver rule. ResolverRuleId is required, and all other parameters are optional.
    /// 			If you don't specify a parameter, it retains its current value.
    func updateResolverRule(input: UpdateResolverRuleInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResolverRuleOutputResponse, UpdateResolverRuleOutputError>) -> Void)
}

public enum Route53ResolverClientTypes {}
