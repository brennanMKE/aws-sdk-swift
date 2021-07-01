// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyReplicationGroupOutputResponse: Equatable {
    /// <p>Contains all of the attributes of a specific Redis replication group.</p>
    public let replicationGroup: ReplicationGroup?

    public init (
        replicationGroup: ReplicationGroup? = nil
    )
    {
        self.replicationGroup = replicationGroup
    }
}

extension ModifyReplicationGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyReplicationGroupOutputResponse(replicationGroup: \(String(describing: replicationGroup)))"}
}