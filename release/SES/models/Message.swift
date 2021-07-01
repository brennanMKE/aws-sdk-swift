// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the message to be sent, composed of a subject and a body.</p>
public struct Message: Equatable {
    /// <p>The message body.</p>
    public let body: Body?
    /// <p>The subject of the message: A short summary of the content, which will appear in the
    ///             recipient's inbox.</p>
    public let subject: Content?

    public init (
        body: Body? = nil,
        subject: Content? = nil
    )
    {
        self.body = body
        self.subject = subject
    }
}

extension Message: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Message(body: \(String(describing: body)), subject: \(String(describing: subject)))"}
}