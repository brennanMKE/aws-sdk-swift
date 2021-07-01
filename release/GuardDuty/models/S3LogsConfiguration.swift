// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes whether S3 data event logs will be enabled as a data source.</p>
public struct S3LogsConfiguration: Equatable {
    /// <p> The status of S3 data event logs as a data source.</p>
    public let enable: Bool

    public init (
        enable: Bool = false
    )
    {
        self.enable = enable
    }
}

extension S3LogsConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3LogsConfiguration(enable: \(String(describing: enable)))"}
}