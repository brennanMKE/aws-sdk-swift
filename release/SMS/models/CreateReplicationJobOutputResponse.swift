// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateReplicationJobOutputResponse: Equatable {
    /// <p>The unique identifier of the replication job.</p>
    public let replicationJobId: String?

    public init (
        replicationJobId: String? = nil
    )
    {
        self.replicationJobId = replicationJobId
    }
}

extension CreateReplicationJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateReplicationJobOutputResponse(replicationJobId: \(String(describing: replicationJobId)))"}
}