// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL. </p>
public struct SourceTableFeatureDetails: Equatable {
    /**
     <p>Represents the GSI properties for the table when the backup was created. It includes the
              IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the table at
              the time of backup. </p>
     */
    public let globalSecondaryIndexes: [GlobalSecondaryIndexInfo]?
    /// <p>Represents the LSI properties for the table when the backup was created. It includes the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup. </p>
    public let localSecondaryIndexes: [LocalSecondaryIndexInfo]?
    /// <p>The description of the server-side encryption status on the table when the backup was created.</p>
    public let sSEDescription: SSEDescription?
    /// <p>Stream settings on the table when the backup was created.</p>
    public let streamDescription: StreamSpecification?
    /// <p>Time to Live settings on the table when the backup was created.</p>
    public let timeToLiveDescription: TimeToLiveDescription?

    public init (
        globalSecondaryIndexes: [GlobalSecondaryIndexInfo]? = nil,
        localSecondaryIndexes: [LocalSecondaryIndexInfo]? = nil,
        sSEDescription: SSEDescription? = nil,
        streamDescription: StreamSpecification? = nil,
        timeToLiveDescription: TimeToLiveDescription? = nil
    )
    {
        self.globalSecondaryIndexes = globalSecondaryIndexes
        self.localSecondaryIndexes = localSecondaryIndexes
        self.sSEDescription = sSEDescription
        self.streamDescription = streamDescription
        self.timeToLiveDescription = timeToLiveDescription
    }
}
