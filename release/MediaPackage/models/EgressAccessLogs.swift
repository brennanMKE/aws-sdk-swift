// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Configure egress access logging.
public struct EgressAccessLogs: Equatable {
    /// Customize the log group name.
    public let logGroupName: String?

    public init (
        logGroupName: String? = nil
    )
    {
        self.logGroupName = logGroupName
    }
}

extension EgressAccessLogs: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EgressAccessLogs(logGroupName: \(String(describing: logGroupName)))"}
}