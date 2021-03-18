// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the properties of a replica global secondary index.</p>
public struct ReplicaGlobalSecondaryIndex: Equatable {
    /// <p>The name of the global secondary index.</p>
    public let indexName: String?
    /**
     <p>Replica table GSI-specific provisioned throughput. If not specified, uses the
              source table GSI's read capacity settings.</p>
     */
    public let provisionedThroughputOverride: ProvisionedThroughputOverride?

    public init (
        indexName: String? = nil,
        provisionedThroughputOverride: ProvisionedThroughputOverride? = nil
    )
    {
        self.indexName = indexName
        self.provisionedThroughputOverride = provisionedThroughputOverride
    }
}