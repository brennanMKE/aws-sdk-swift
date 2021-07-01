// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetManagedScalingPolicyInput: Equatable {
    /// <p>Specifies the ID of the cluster for which the managed scaling policy will be fetched.
    ///       </p>
    public let clusterId: String?

    public init (
        clusterId: String? = nil
    )
    {
        self.clusterId = clusterId
    }
}

extension GetManagedScalingPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetManagedScalingPolicyInput(clusterId: \(String(describing: clusterId)))"}
}