// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateClusterOutputResponse: Equatable {
    /// <p>Describes a cluster.</p>
    public let cluster: Cluster?

    public init (
        cluster: Cluster? = nil
    )
    {
        self.cluster = cluster
    }
}

extension CreateClusterOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateClusterOutputResponse(cluster: \(String(describing: cluster)))"}
}