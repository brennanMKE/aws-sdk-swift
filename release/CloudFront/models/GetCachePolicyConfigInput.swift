// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCachePolicyConfigInput: Equatable {
    /// <p>The unique identifier for the cache policy. If the cache policy is attached to a
    /// 			distribution’s cache behavior, you can get the policy’s identifier using
    /// 			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    /// 			not attached to a cache behavior, you can get the identifier using
    /// 			<code>ListCachePolicies</code>.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetCachePolicyConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCachePolicyConfigInput(id: \(String(describing: id)))"}
}