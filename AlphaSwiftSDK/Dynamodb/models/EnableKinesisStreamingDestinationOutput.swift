// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct EnableKinesisStreamingDestinationOutput: Equatable {
    /// <p>The current status of the replication.</p>
    public let destinationStatus: DestinationStatus?
    /// <p>The ARN for the specific Kinesis data stream.</p>
    public let streamArn: String?
    /// <p>The name of the table being modified.</p>
    public let tableName: String?

    public init (
        destinationStatus: DestinationStatus? = nil,
        streamArn: String? = nil,
        tableName: String? = nil
    )
    {
        self.destinationStatus = destinationStatus
        self.streamArn = streamArn
        self.tableName = tableName
    }
}
