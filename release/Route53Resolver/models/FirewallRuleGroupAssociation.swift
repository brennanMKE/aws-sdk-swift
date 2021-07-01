// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An association between a firewall rule group and a VPC, which enables DNS filtering for
/// 			the VPC. </p>
public struct FirewallRuleGroupAssociation: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the firewall rule group association.</p>
    public let arn: String?
    /// <p>The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    public let creationTime: String?
    /// <p>A unique string defined by you to identify the request. This allows you to retry failed
    /// 			requests without the risk of running the operation twice. This can be any unique string,
    /// 			for example, a timestamp. </p>
    public let creatorRequestId: String?
    /// <p>The unique identifier of the firewall rule group. </p>
    public let firewallRuleGroupId: String?
    /// <p>The identifier for the association.</p>
    public let id: String?
    /// <p>The owner of the association, used only for associations that are not managed by you. If you use AWS Firewall Manager to
    ///    manage your DNS Firewalls, then this reports Firewall Manager as the managed owner.</p>
    public let managedOwnerName: String?
    /// <p>The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    public let modificationTime: String?
    /// <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    public let mutationProtection: MutationProtectionStatus?
    /// <p>The name of the association.</p>
    public let name: String?
    /// <p>The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC. DNS Firewall
    ///            filters VPC traffic starting from rule group with the lowest numeric priority setting. </p>
    public let priority: Int?
    /// <p>The current status of the association.</p>
    public let status: FirewallRuleGroupAssociationStatus?
    /// <p>Additional information about the status of the response, if available.</p>
    public let statusMessage: String?
    /// <p>The unique identifier of the VPC that is associated with the rule group. </p>
    public let vpcId: String?

    public init (
        arn: String? = nil,
        creationTime: String? = nil,
        creatorRequestId: String? = nil,
        firewallRuleGroupId: String? = nil,
        id: String? = nil,
        managedOwnerName: String? = nil,
        modificationTime: String? = nil,
        mutationProtection: MutationProtectionStatus? = nil,
        name: String? = nil,
        priority: Int? = nil,
        status: FirewallRuleGroupAssociationStatus? = nil,
        statusMessage: String? = nil,
        vpcId: String? = nil
    )
    {
        self.arn = arn
        self.creationTime = creationTime
        self.creatorRequestId = creatorRequestId
        self.firewallRuleGroupId = firewallRuleGroupId
        self.id = id
        self.managedOwnerName = managedOwnerName
        self.modificationTime = modificationTime
        self.mutationProtection = mutationProtection
        self.name = name
        self.priority = priority
        self.status = status
        self.statusMessage = statusMessage
        self.vpcId = vpcId
    }
}

extension FirewallRuleGroupAssociation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FirewallRuleGroupAssociation(arn: \(String(describing: arn)), creationTime: \(String(describing: creationTime)), creatorRequestId: \(String(describing: creatorRequestId)), firewallRuleGroupId: \(String(describing: firewallRuleGroupId)), id: \(String(describing: id)), managedOwnerName: \(String(describing: managedOwnerName)), modificationTime: \(String(describing: modificationTime)), mutationProtection: \(String(describing: mutationProtection)), name: \(String(describing: name)), priority: \(String(describing: priority)), status: \(String(describing: status)), statusMessage: \(String(describing: statusMessage)), vpcId: \(String(describing: vpcId)))"}
}