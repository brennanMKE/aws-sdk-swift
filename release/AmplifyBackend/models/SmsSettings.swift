// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>SMS settings for authentication.</p>
public struct SmsSettings: Equatable {
    /// <p>The body of the SMS message.</p>
    public let smsMessage: String?

    public init (
        smsMessage: String? = nil
    )
    {
        self.smsMessage = smsMessage
    }
}

extension SmsSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SmsSettings(smsMessage: \(String(describing: smsMessage)))"}
}