// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DeleteReplicationSubnetGroupInput: Equatable {
    /// <p>The subnet group name of the replication instance.</p>
    public let replicationSubnetGroupIdentifier: String?

    public init (
        replicationSubnetGroupIdentifier: String? = nil
    )
    {
        self.replicationSubnetGroupIdentifier = replicationSubnetGroupIdentifier
    }
}

extension DeleteReplicationSubnetGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteReplicationSubnetGroupInput(replicationSubnetGroupIdentifier: \(String(describing: replicationSubnetGroupIdentifier)))"}
}