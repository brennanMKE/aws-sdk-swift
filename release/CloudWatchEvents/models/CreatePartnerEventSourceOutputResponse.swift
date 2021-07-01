// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePartnerEventSourceOutputResponse: Equatable {
    /// <p>The ARN of the partner event source.</p>
    public let eventSourceArn: String?

    public init (
        eventSourceArn: String? = nil
    )
    {
        self.eventSourceArn = eventSourceArn
    }
}

extension CreatePartnerEventSourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePartnerEventSourceOutputResponse(eventSourceArn: \(String(describing: eventSourceArn)))"}
}