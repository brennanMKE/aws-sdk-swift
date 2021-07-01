// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the configuration of a destination in Splunk.</p>
public struct SplunkDestinationConfiguration: Equatable {
    /// <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    public let cloudWatchLoggingOptions: CloudWatchLoggingOptions?
    /// <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
    ///          Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose
    ///          either tries to send the data again or considers it an error, based on your retry
    ///          settings.</p>
    public let hECAcknowledgmentTimeoutInSeconds: Int?
    /// <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
    ///          data.</p>
    public let hECEndpoint: String?
    /// <p>This type can be either "Raw" or "Event."</p>
    public let hECEndpointType: HECEndpointType?
    /// <p>This is a GUID that you obtain from your Splunk cluster when you create a new HEC
    ///          endpoint.</p>
    public let hECToken: String?
    /// <p>The data processing configuration.</p>
    public let processingConfiguration: ProcessingConfiguration?
    /// <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk,
    ///          or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    public let retryOptions: SplunkRetryOptions?
    /// <p>Defines how documents should be delivered to Amazon S3. When set to
    ///             <code>FailedEventsOnly</code>, Kinesis Data Firehose writes any data that could not be
    ///          indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
    ///          Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
    ///          documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
    ///          <p>You can update this backup mode from <code>FailedEventsOnly</code> to
    ///             <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
    ///             <code>FailedEventsOnly</code>.</p>
    public let s3BackupMode: SplunkS3BackupMode?
    /// <p>The configuration for the backup Amazon S3 location.</p>
    public let s3Configuration: S3DestinationConfiguration?

    public init (
        cloudWatchLoggingOptions: CloudWatchLoggingOptions? = nil,
        hECAcknowledgmentTimeoutInSeconds: Int? = nil,
        hECEndpoint: String? = nil,
        hECEndpointType: HECEndpointType? = nil,
        hECToken: String? = nil,
        processingConfiguration: ProcessingConfiguration? = nil,
        retryOptions: SplunkRetryOptions? = nil,
        s3BackupMode: SplunkS3BackupMode? = nil,
        s3Configuration: S3DestinationConfiguration? = nil
    )
    {
        self.cloudWatchLoggingOptions = cloudWatchLoggingOptions
        self.hECAcknowledgmentTimeoutInSeconds = hECAcknowledgmentTimeoutInSeconds
        self.hECEndpoint = hECEndpoint
        self.hECEndpointType = hECEndpointType
        self.hECToken = hECToken
        self.processingConfiguration = processingConfiguration
        self.retryOptions = retryOptions
        self.s3BackupMode = s3BackupMode
        self.s3Configuration = s3Configuration
    }
}

extension SplunkDestinationConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SplunkDestinationConfiguration(cloudWatchLoggingOptions: \(String(describing: cloudWatchLoggingOptions)), hECAcknowledgmentTimeoutInSeconds: \(String(describing: hECAcknowledgmentTimeoutInSeconds)), hECEndpoint: \(String(describing: hECEndpoint)), hECEndpointType: \(String(describing: hECEndpointType)), hECToken: \(String(describing: hECToken)), processingConfiguration: \(String(describing: processingConfiguration)), retryOptions: \(String(describing: retryOptions)), s3BackupMode: \(String(describing: s3BackupMode)), s3Configuration: \(String(describing: s3Configuration)))"}
}