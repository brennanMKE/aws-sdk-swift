// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration setting for the log types to be enabled for export to Amazon
///             CloudWatch Logs for a specific instance or cluster.</p>
///         <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine
///             which logs are exported (or not exported) to CloudWatch Logs. The values within these
///             arrays depend on the engine that is being used.</p>
public struct CloudwatchLogsExportConfiguration: Equatable {
    /// <p>The list of log types to disable.</p>
    public let disableLogTypes: [String]?
    /// <p>The list of log types to enable.</p>
    public let enableLogTypes: [String]?

    public init (
        disableLogTypes: [String]? = nil,
        enableLogTypes: [String]? = nil
    )
    {
        self.disableLogTypes = disableLogTypes
        self.enableLogTypes = enableLogTypes
    }
}

extension CloudwatchLogsExportConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudwatchLogsExportConfiguration(disableLogTypes: \(String(describing: disableLogTypes)), enableLogTypes: \(String(describing: enableLogTypes)))"}
}