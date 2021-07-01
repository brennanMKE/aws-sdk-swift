// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for DescribeNetworkInterfacePermissions.</p>
public struct DescribeNetworkInterfacePermissionsInput: Equatable {
    /// <p>One or more filters.</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <code>network-interface-permission.network-interface-permission-id</code> - The ID of the
    /// 				permission.</p>
    ///             </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>network-interface-permission.network-interface-id</code> - The ID of
    /// 					the network interface.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>network-interface-permission.aws-account-id</code> - The AWS account
    /// 					ID.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>network-interface-permission.aws-service</code> - The AWS
    /// 					service.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>network-interface-permission.permission</code> - The type of
    /// 					permission (<code>INSTANCE-ATTACH</code> |
    /// 					<code>EIP-ASSOCIATE</code>).</p>
    /// 			         </li>
    ///          </ul>
    public let filters: [Filter]?
    /// <p>The maximum number of results to return in a single call. To retrieve the remaining results,
    /// 			make another call with the returned <code>NextToken</code> value. If this parameter is not specified, up to 50 results are returned by default.</p>
    public let maxResults: Int
    /// <p>One or more network interface permission IDs.</p>
    public let networkInterfacePermissionIds: [String]?
    /// <p>The token to request the next page of results.</p>
    public let nextToken: String?

    public init (
        filters: [Filter]? = nil,
        maxResults: Int = 0,
        networkInterfacePermissionIds: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.filters = filters
        self.maxResults = maxResults
        self.networkInterfacePermissionIds = networkInterfacePermissionIds
        self.nextToken = nextToken
    }
}

extension DescribeNetworkInterfacePermissionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeNetworkInterfacePermissionsInput(filters: \(String(describing: filters)), maxResults: \(String(describing: maxResults)), networkInterfacePermissionIds: \(String(describing: networkInterfacePermissionIds)), nextToken: \(String(describing: nextToken)))"}
}