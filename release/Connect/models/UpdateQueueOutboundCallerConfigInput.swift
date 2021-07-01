// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateQueueOutboundCallerConfigInput: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    public let outboundCallerConfig: OutboundCallerConfig?
    /// <p>The identifier for the queue.</p>
    public let queueId: String?

    public init (
        instanceId: String? = nil,
        outboundCallerConfig: OutboundCallerConfig? = nil,
        queueId: String? = nil
    )
    {
        self.instanceId = instanceId
        self.outboundCallerConfig = outboundCallerConfig
        self.queueId = queueId
    }
}

extension UpdateQueueOutboundCallerConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateQueueOutboundCallerConfigInput(instanceId: \(String(describing: instanceId)), outboundCallerConfig: \(String(describing: outboundCallerConfig)), queueId: \(String(describing: queueId)))"}
}