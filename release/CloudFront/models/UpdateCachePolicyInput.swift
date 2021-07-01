// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateCachePolicyInput: Equatable {
    /// <p>A cache policy configuration.</p>
    public let cachePolicyConfig: CachePolicyConfig?
    /// <p>The unique identifier for the cache policy that you are updating. The identifier is returned
    /// 			in a cache behavior’s <code>CachePolicyId</code> field in the response to
    /// 			<code>GetDistributionConfig</code>.</p>
    public let id: String?
    /// <p>The version of the cache policy that you are updating. The version is returned in the cache
    /// 			policy’s <code>ETag</code> field in the response to
    /// 			<code>GetCachePolicyConfig</code>.</p>
    public let ifMatch: String?

    public init (
        cachePolicyConfig: CachePolicyConfig? = nil,
        id: String? = nil,
        ifMatch: String? = nil
    )
    {
        self.cachePolicyConfig = cachePolicyConfig
        self.id = id
        self.ifMatch = ifMatch
    }
}

extension UpdateCachePolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateCachePolicyInput(cachePolicyConfig: \(String(describing: cachePolicyConfig)), id: \(String(describing: id)), ifMatch: \(String(describing: ifMatch)))"}
}