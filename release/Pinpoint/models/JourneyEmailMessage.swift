// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the "From" address for an email message that's sent to participants in a journey.</p>
public struct JourneyEmailMessage: Equatable {
    /// <p>The verified email address to send the email message from. The default address is the FromAddress specified for the email channel for the application.</p>
    public let fromAddress: String?

    public init (
        fromAddress: String? = nil
    )
    {
        self.fromAddress = fromAddress
    }
}

extension JourneyEmailMessage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JourneyEmailMessage(fromAddress: \(String(describing: fromAddress)))"}
}