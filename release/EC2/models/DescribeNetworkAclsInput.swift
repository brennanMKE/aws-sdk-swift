// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeNetworkAclsInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>One or more filters.</p>
    /// 		       <ul>
    ///             <li>
    /// 		             <p>
    ///                   <code>association.association-id</code> - The ID of an association ID for the ACL.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>association.network-acl-id</code> - The ID of the network ACL involved in the association.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>association.subnet-id</code> - The ID of the subnet involved in the association.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>default</code> - Indicates whether the ACL is the default network ACL for the VPC.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.cidr</code> - The IPv4 CIDR range specified in the entry.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.icmp.code</code> - The ICMP code specified in the entry, if any.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.icmp.type</code> - The ICMP type specified in the entry, if any.</p>
    /// 		          </li>
    ///             <li>
    ///                   <p>
    ///                   <code>entry.ipv6-cidr</code> - The IPv6 CIDR range specified in the entry.</p>
    ///                </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.port-range.from</code> - The start of the port range specified in the entry. </p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.port-range.to</code> - The end of the port range specified in the entry. </p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.protocol</code> - The protocol specified in the entry (<code>tcp</code> | <code>udp</code> | <code>icmp</code> or a protocol number).</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.rule-action</code> - Allows or denies the matching traffic (<code>allow</code> | <code>deny</code>).</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>entry.rule-number</code> - The number of an entry (in other words, rule) in
    ///                     the set of ACL entries.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>network-acl-id</code> - The ID of the network ACL.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>owner-id</code> - The ID of the AWS account that owns the network ACL.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>tag</code>:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value.
    ///     For example, to find all resources that have a tag with the key <code>Owner</code> and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>tag-key</code> - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.</p>
    /// 		          </li>
    ///             <li>
    /// 		             <p>
    ///                   <code>vpc-id</code> - The ID of the VPC for the network ACL.</p>
    /// 		          </li>
    ///          </ul>
    public let filters: [Filter]?
    /// <p>The maximum number of results to return with a single call.
    /// 	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    public let maxResults: Int
    /// <p>One or more network ACL IDs.</p>
    /// 		       <p>Default: Describes all your network ACLs.</p>
    public let networkAclIds: [String]?
    /// <p>The token for the next page of results.</p>
    public let nextToken: String?

    public init (
        dryRun: Bool = false,
        filters: [Filter]? = nil,
        maxResults: Int = 0,
        networkAclIds: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.networkAclIds = networkAclIds
        self.nextToken = nextToken
    }
}

extension DescribeNetworkAclsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeNetworkAclsInput(dryRun: \(String(describing: dryRun)), filters: \(String(describing: filters)), maxResults: \(String(describing: maxResults)), networkAclIds: \(String(describing: networkAclIds)), nextToken: \(String(describing: nextToken)))"}
}