// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the allowed node types you can use to modify your cluster or replication group.</p>
public struct ListAllowedNodeTypeModificationsOutputResponse: Equatable {
    /// <p>A string list, each element of which specifies a cache node type which you can use to scale your cluster or replication group.
    ///
    ///             When scaling down a Redis cluster or replication group using ModifyCacheCluster or ModifyReplicationGroup, use a value from this list for the CacheNodeType parameter. </p>
    public let scaleDownModifications: [String]?
    /// <p>A string list, each element of which specifies a cache node type which you can use
    ///             to scale your cluster or replication group.</p>
    ///         <p>When scaling up a Redis cluster or replication group using <code>ModifyCacheCluster</code> or
    ///             <code>ModifyReplicationGroup</code>,
    ///             use a value from this list for the <code>CacheNodeType</code> parameter.</p>
    public let scaleUpModifications: [String]?

    public init (
        scaleDownModifications: [String]? = nil,
        scaleUpModifications: [String]? = nil
    )
    {
        self.scaleDownModifications = scaleDownModifications
        self.scaleUpModifications = scaleUpModifications
    }
}

extension ListAllowedNodeTypeModificationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAllowedNodeTypeModificationsOutputResponse(scaleDownModifications: \(String(describing: scaleDownModifications)), scaleUpModifications: \(String(describing: scaleUpModifications)))"}
}