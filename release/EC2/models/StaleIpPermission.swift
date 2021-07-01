// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a stale rule in a security group.</p>
public struct StaleIpPermission: Equatable {
    /// <p>The start of the port range for the TCP and UDP protocols, or an ICMP type number. A value of
    ///         <code>-1</code> indicates all ICMP types. </p>
    public let fromPort: Int
    /// <p>The IP protocol name (for <code>tcp</code>, <code>udp</code>, and <code>icmp</code>) or number  (see <a href="http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol Numbers)</a>.</p>
    public let ipProtocol: String?
    /// <p>The IP ranges. Not applicable for stale security group rules.</p>
    public let ipRanges: [String]?
    /// <p>The prefix list IDs. Not applicable for stale security group rules.</p>
    public let prefixListIds: [String]?
    /// <p>The end of the port range for the TCP and UDP protocols, or an ICMP type number. A value of
    ///         <code>-1</code> indicates all ICMP types. </p>
    public let toPort: Int
    /// <p>The security group pairs. Returns the ID of the referenced security group and VPC, and the ID and status of the VPC peering connection.</p>
    public let userIdGroupPairs: [UserIdGroupPair]?

    public init (
        fromPort: Int = 0,
        ipProtocol: String? = nil,
        ipRanges: [String]? = nil,
        prefixListIds: [String]? = nil,
        toPort: Int = 0,
        userIdGroupPairs: [UserIdGroupPair]? = nil
    )
    {
        self.fromPort = fromPort
        self.ipProtocol = ipProtocol
        self.ipRanges = ipRanges
        self.prefixListIds = prefixListIds
        self.toPort = toPort
        self.userIdGroupPairs = userIdGroupPairs
    }
}

extension StaleIpPermission: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StaleIpPermission(fromPort: \(String(describing: fromPort)), ipProtocol: \(String(describing: ipProtocol)), ipRanges: \(String(describing: ipRanges)), prefixListIds: \(String(describing: prefixListIds)), toPort: \(String(describing: toPort)), userIdGroupPairs: \(String(describing: userIdGroupPairs)))"}
}