// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateTableReplicaAutoScalingInput: Equatable {
    /**
     <p>Represents the auto scaling settings of the global secondary indexes of the replica
               to be updated.</p>
     */
    public let globalSecondaryIndexUpdates: [GlobalSecondaryIndexAutoScalingUpdate]?
    /**
     <p>Represents the auto scaling settings to be modified for a global table or global
              secondary index.</p>
     */
    public let provisionedWriteCapacityAutoScalingUpdate: AutoScalingSettingsUpdate?
    /**
     <p>Represents the auto scaling settings of replicas of the table that will be
                modified.</p>
     */
    public let replicaUpdates: [ReplicaAutoScalingUpdate]?
    /// <p>The name of the global table to be updated.</p>
    public let tableName: String?

    public init (
        globalSecondaryIndexUpdates: [GlobalSecondaryIndexAutoScalingUpdate]? = nil,
        provisionedWriteCapacityAutoScalingUpdate: AutoScalingSettingsUpdate? = nil,
        replicaUpdates: [ReplicaAutoScalingUpdate]? = nil,
        tableName: String? = nil
    )
    {
        self.globalSecondaryIndexUpdates = globalSecondaryIndexUpdates
        self.provisionedWriteCapacityAutoScalingUpdate = provisionedWriteCapacityAutoScalingUpdate
        self.replicaUpdates = replicaUpdates
        self.tableName = tableName
    }
}
