// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRealtimeLogConfigOutputResponse: Equatable {
    /// <p>A real-time log configuration.</p>
    public let realtimeLogConfig: RealtimeLogConfig?

    public init (
        realtimeLogConfig: RealtimeLogConfig? = nil
    )
    {
        self.realtimeLogConfig = realtimeLogConfig
    }
}

extension GetRealtimeLogConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRealtimeLogConfigOutputResponse(realtimeLogConfig: \(String(describing: realtimeLogConfig)))"}
}