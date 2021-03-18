// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableKinesisStreamingDestinationInput: Equatable {
    /// <p>The ARN for a Kinesis data stream.</p>
    public let streamArn: String?
    /// <p>The name of the DynamoDB table.</p>
    public let tableName: String?

    public init (
        streamArn: String? = nil,
        tableName: String? = nil
    )
    {
        self.streamArn = streamArn
        self.tableName = tableName
    }
}
