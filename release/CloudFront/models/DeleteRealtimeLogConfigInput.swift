// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteRealtimeLogConfigInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>
    public let aRN: String?
    /// <p>The name of the real-time log configuration to delete.</p>
    public let name: String?

    public init (
        aRN: String? = nil,
        name: String? = nil
    )
    {
        self.aRN = aRN
        self.name = name
    }
}

extension DeleteRealtimeLogConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteRealtimeLogConfigInput(aRN: \(String(describing: aRN)), name: \(String(describing: name)))"}
}