// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Settings related to the Amazon Chime account. This includes settings that start or stop
///             remote control of shared screens, or start or stop the dial-out option in the Amazon
///             Chime web application. For more information about these settings, see <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies
///                 Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>
public struct AccountSettings: Equatable {
    /// <p>Setting that stops or starts remote control of shared screens during meetings.</p>
    public let disableRemoteControl: Bool?
    /// <p>Setting that allows meeting participants to choose the <b>Call me at a
    ///                 phone number</b> option. For more information, see <a href="https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html">Join a Meeting
    ///                 without the Amazon Chime App</a>.</p>
    public let enableDialOut: Bool?

    public init (
        disableRemoteControl: Bool? = nil,
        enableDialOut: Bool? = nil
    )
    {
        self.disableRemoteControl = disableRemoteControl
        self.enableDialOut = enableDialOut
    }
}

extension AccountSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccountSettings(disableRemoteControl: \(String(describing: disableRemoteControl)), enableDialOut: \(String(describing: enableDialOut)))"}
}