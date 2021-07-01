// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>High-level information about a list of firewall domains for use in a <a>FirewallRule</a>. This is returned by <a>GetFirewallDomainList</a>.</p>
///          <p>To retrieve the domains that are defined for this domain list, call <a>ListFirewallDomains</a>.</p>
public struct FirewallDomainList: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the firewall domain list.</p>
    public let arn: String?
    /// <p>The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    public let creationTime: String?
    /// <p>A unique string defined by you to identify the request. This allows you to retry failed
    /// 			requests without the risk of running the operation twice. This can be any unique string,
    /// 			for example, a timestamp. </p>
    public let creatorRequestId: String?
    /// <p>The number of domain names that are specified in the domain list.</p>
    public let domainCount: Int?
    /// <p>The ID of the domain list. </p>
    public let id: String?
    /// <p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>
    public let managedOwnerName: String?
    /// <p>The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC). </p>
    public let modificationTime: String?
    /// <p>The name of the domain list. </p>
    public let name: String?
    /// <p>The status of the domain list.  </p>
    public let status: FirewallDomainListStatus?
    /// <p>Additional information about the status of the list, if available.</p>
    public let statusMessage: String?

    public init (
        arn: String? = nil,
        creationTime: String? = nil,
        creatorRequestId: String? = nil,
        domainCount: Int? = nil,
        id: String? = nil,
        managedOwnerName: String? = nil,
        modificationTime: String? = nil,
        name: String? = nil,
        status: FirewallDomainListStatus? = nil,
        statusMessage: String? = nil
    )
    {
        self.arn = arn
        self.creationTime = creationTime
        self.creatorRequestId = creatorRequestId
        self.domainCount = domainCount
        self.id = id
        self.managedOwnerName = managedOwnerName
        self.modificationTime = modificationTime
        self.name = name
        self.status = status
        self.statusMessage = statusMessage
    }
}

extension FirewallDomainList: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FirewallDomainList(arn: \(String(describing: arn)), creationTime: \(String(describing: creationTime)), creatorRequestId: \(String(describing: creatorRequestId)), domainCount: \(String(describing: domainCount)), id: \(String(describing: id)), managedOwnerName: \(String(describing: managedOwnerName)), modificationTime: \(String(describing: modificationTime)), name: \(String(describing: name)), status: \(String(describing: status)), statusMessage: \(String(describing: statusMessage)))"}
}