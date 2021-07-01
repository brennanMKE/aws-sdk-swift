// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RebootNodeOutputResponse: Equatable {
    /// <p>A description of the DAX cluster after a node has been rebooted.</p>
    public let cluster: Cluster?

    public init (
        cluster: Cluster? = nil
    )
    {
        self.cluster = cluster
    }
}

extension RebootNodeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RebootNodeOutputResponse(cluster: \(String(describing: cluster)))"}
}