// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteFirewallRuleInput: Equatable {
    /// <p>The ID of the domain list that's used in the rule.  </p>
    public let firewallDomainListId: String?
    /// <p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>
    public let firewallRuleGroupId: String?

    public init (
        firewallDomainListId: String? = nil,
        firewallRuleGroupId: String? = nil
    )
    {
        self.firewallDomainListId = firewallDomainListId
        self.firewallRuleGroupId = firewallRuleGroupId
    }
}

extension DeleteFirewallRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteFirewallRuleInput(firewallDomainListId: \(String(describing: firewallDomainListId)), firewallRuleGroupId: \(String(describing: firewallRuleGroupId)))"}
}