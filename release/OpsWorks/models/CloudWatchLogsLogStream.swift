// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
public struct CloudWatchLogsLogStream: Equatable {
    /// <p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>
    public let batchCount: Int?
    /// <p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes.
    ///             The default value is 32768 bytes. This size is calculated as the sum of all event messages
    ///             in UTF-8, plus 26 bytes for each log event.</p>
    public let batchSize: Int?
    /// <p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>
    public let bufferDuration: Int?
    /// <p>Specifies how the time stamp is extracted from logs. For more information, see the
    ///             <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
    public let datetimeFormat: String?
    /// <p>Specifies the encoding of the log file so that the file can be read correctly.
    ///             The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
    public let encoding: CloudWatchLogsEncoding?
    /// <p>Specifies log files that you want to push to CloudWatch Logs.</p>
    ///         <p>
    ///             <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>).
    ///             Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series
    ///             of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on
    ///             by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types,
    ///             such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another
    ///             log stream entry to the configuration file, so that each log file type is stored in a different log group.</p>
    ///         <p>Zipped files are not supported.</p>
    public let file: String?
    /// <p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers,
    ///             such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are
    ///             not sent to CloudWatch Logs unless all specified lines are available.</p>
    public let fileFingerprintLines: String?
    /// <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file.
    ///             This setting is only used if there is no state persisted for that log stream.</p>
    public let initialPosition: CloudWatchLogsInitialPosition?
    /// <p>Specifies the destination log group. A log group is created automatically if it doesn't already exist.
    ///             Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore),
    ///             '-' (hyphen), '/' (forward slash), and '.' (period).</p>
    public let logGroupName: String?
    /// <p>Specifies the pattern for identifying the start of a log message.</p>
    public let multiLineStartPattern: String?
    /// <p>Specifies the time zone of log event time stamps.</p>
    public let timeZone: CloudWatchLogsTimeZone?

    public init (
        batchCount: Int? = nil,
        batchSize: Int? = nil,
        bufferDuration: Int? = nil,
        datetimeFormat: String? = nil,
        encoding: CloudWatchLogsEncoding? = nil,
        file: String? = nil,
        fileFingerprintLines: String? = nil,
        initialPosition: CloudWatchLogsInitialPosition? = nil,
        logGroupName: String? = nil,
        multiLineStartPattern: String? = nil,
        timeZone: CloudWatchLogsTimeZone? = nil
    )
    {
        self.batchCount = batchCount
        self.batchSize = batchSize
        self.bufferDuration = bufferDuration
        self.datetimeFormat = datetimeFormat
        self.encoding = encoding
        self.file = file
        self.fileFingerprintLines = fileFingerprintLines
        self.initialPosition = initialPosition
        self.logGroupName = logGroupName
        self.multiLineStartPattern = multiLineStartPattern
        self.timeZone = timeZone
    }
}

extension CloudWatchLogsLogStream: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudWatchLogsLogStream(batchCount: \(String(describing: batchCount)), batchSize: \(String(describing: batchSize)), bufferDuration: \(String(describing: bufferDuration)), datetimeFormat: \(String(describing: datetimeFormat)), encoding: \(String(describing: encoding)), file: \(String(describing: file)), fileFingerprintLines: \(String(describing: fileFingerprintLines)), initialPosition: \(String(describing: initialPosition)), logGroupName: \(String(describing: logGroupName)), multiLineStartPattern: \(String(describing: multiLineStartPattern)), timeZone: \(String(describing: timeZone)))"}
}