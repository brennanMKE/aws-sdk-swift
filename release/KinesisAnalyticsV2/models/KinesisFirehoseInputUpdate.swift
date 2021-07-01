// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application, when updating application
///       input configuration, provides information about a Kinesis Data Firehose delivery stream as the
///       streaming source.</p>
public struct KinesisFirehoseInputUpdate: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the input delivery stream to read.</p>
    public let resourceARNUpdate: String?

    public init (
        resourceARNUpdate: String? = nil
    )
    {
        self.resourceARNUpdate = resourceARNUpdate
    }
}

extension KinesisFirehoseInputUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KinesisFirehoseInputUpdate(resourceARNUpdate: \(String(describing: resourceARNUpdate)))"}
}