// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Limits settings on protections for your subscription. </p>
public struct ProtectionLimits: Equatable {
    /// <p>The maximum number of resource types that you can specify in a protection.</p>
    public let protectedResourceTypeLimits: [Limit]?

    public init (
        protectedResourceTypeLimits: [Limit]? = nil
    )
    {
        self.protectedResourceTypeLimits = protectedResourceTypeLimits
    }
}

extension ProtectionLimits: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProtectionLimits(protectedResourceTypeLimits: \(String(describing: protectedResourceTypeLimits)))"}
}