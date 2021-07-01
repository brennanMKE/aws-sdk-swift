// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents one of the following:</p>
///          <ul>
///             <li>
///                <p>A new replica to be added to an existing regional table or global table. This
///                request invokes the <code>CreateTableReplica</code> action in the destination
///                Region.</p>
///             </li>
///             <li>
///                <p>New parameters for an existing replica. This request invokes the
///                <code>UpdateTable</code> action in the destination Region.</p>
///             </li>
///             <li>
///                <p>An existing replica to be deleted. The request invokes the
///                <code>DeleteTableReplica</code> action in the destination Region, deleting the
///                replica and all if its items in the destination Region.</p>
///             </li>
///          </ul>
public struct ReplicationGroupUpdate: Equatable {
    /// <p>The parameters required for creating a replica for the table.</p>
    public let create: CreateReplicationGroupMemberAction?
    /// <p>The parameters required for deleting a replica for the table.</p>
    public let delete: DeleteReplicationGroupMemberAction?
    /// <p>The parameters required for updating a replica for the table.</p>
    public let update: UpdateReplicationGroupMemberAction?

    public init (
        create: CreateReplicationGroupMemberAction? = nil,
        delete: DeleteReplicationGroupMemberAction? = nil,
        update: UpdateReplicationGroupMemberAction? = nil
    )
    {
        self.create = create
        self.delete = delete
        self.update = update
    }
}

extension ReplicationGroupUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplicationGroupUpdate(create: \(String(describing: create)), delete: \(String(describing: delete)), update: \(String(describing: update)))"}
}