// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>Represents the auto scaling settings of a global secondary index for a global table
          that will be modified.</p>
 */
public struct GlobalSecondaryIndexAutoScalingUpdate: Equatable {
    /// <p>The name of the global secondary index.</p>
    public let indexName: String?
    /**
     <p>Represents the auto scaling settings to be modified for a global table or global
              secondary index.</p>
     */
    public let provisionedWriteCapacityAutoScalingUpdate: AutoScalingSettingsUpdate?

    public init (
        indexName: String? = nil,
        provisionedWriteCapacityAutoScalingUpdate: AutoScalingSettingsUpdate? = nil
    )
    {
        self.indexName = indexName
        self.provisionedWriteCapacityAutoScalingUpdate = provisionedWriteCapacityAutoScalingUpdate
    }
}
