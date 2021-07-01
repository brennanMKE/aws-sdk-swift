// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
public struct FirewallPolicyResponse: Equatable {
    /// <p>A description of the firewall policy.</p>
    public let description: String?
    /// <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    ///          <note>
    ///             <p>If this response is for a create request that had <code>DryRun</code> set to
    ///                <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
    ///             resource.</p>
    ///          </note>
    public let firewallPolicyArn: String?
    /// <p>The unique identifier for the firewall policy. </p>
    public let firewallPolicyId: String?
    /// <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    public let firewallPolicyName: String?
    /// <p>The current status of the firewall policy. You can retrieve this for a firewall policy
    ///          by calling <a>DescribeFirewallPolicy</a> and providing the firewall policy's
    ///          name or ARN.</p>
    public let firewallPolicyStatus: ResourceStatus?
    /// <p>The key:value pairs to associate with the resource.</p>
    public let tags: [Tag]?

    public init (
        description: String? = nil,
        firewallPolicyArn: String? = nil,
        firewallPolicyId: String? = nil,
        firewallPolicyName: String? = nil,
        firewallPolicyStatus: ResourceStatus? = nil,
        tags: [Tag]? = nil
    )
    {
        self.description = description
        self.firewallPolicyArn = firewallPolicyArn
        self.firewallPolicyId = firewallPolicyId
        self.firewallPolicyName = firewallPolicyName
        self.firewallPolicyStatus = firewallPolicyStatus
        self.tags = tags
    }
}

extension FirewallPolicyResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FirewallPolicyResponse(description: \(String(describing: description)), firewallPolicyArn: \(String(describing: firewallPolicyArn)), firewallPolicyId: \(String(describing: firewallPolicyId)), firewallPolicyName: \(String(describing: firewallPolicyName)), firewallPolicyStatus: \(String(describing: firewallPolicyStatus)), tags: \(String(describing: tags)))"}
}