// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a unique message ID.</p>
public struct SendEmailOutputResponse: Equatable {
    /// <p>The unique message identifier returned from the <code>SendEmail</code> action. </p>
    public let messageId: String?

    public init (
        messageId: String? = nil
    )
    {
        self.messageId = messageId
    }
}

extension SendEmailOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendEmailOutputResponse(messageId: \(String(describing: messageId)))"}
}