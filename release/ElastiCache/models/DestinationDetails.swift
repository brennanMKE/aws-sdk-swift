// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.</p>
public struct DestinationDetails: Equatable {
    /// <p>The configuration details of the CloudWatch Logs destination.</p>
    public let cloudWatchLogsDetails: CloudWatchLogsDestinationDetails?
    /// <p>The configuration details of the Kinesis Data Firehose destination.</p>
    public let kinesisFirehoseDetails: KinesisFirehoseDestinationDetails?

    public init (
        cloudWatchLogsDetails: CloudWatchLogsDestinationDetails? = nil,
        kinesisFirehoseDetails: KinesisFirehoseDestinationDetails? = nil
    )
    {
        self.cloudWatchLogsDetails = cloudWatchLogsDetails
        self.kinesisFirehoseDetails = kinesisFirehoseDetails
    }
}

extension DestinationDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationDetails(cloudWatchLogsDetails: \(String(describing: cloudWatchLogsDetails)), kinesisFirehoseDetails: \(String(describing: kinesisFirehoseDetails)))"}
}