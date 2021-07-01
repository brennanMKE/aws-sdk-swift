// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about an email identity.</p>
public struct GetEmailIdentityOutputResponse: Equatable {
    /// <p>The configuration set used by default when sending from this identity.</p>
    public let configurationSetName: String?
    /// <p>An object that contains information about the DKIM attributes for the identity.</p>
    public let dkimAttributes: DkimAttributes?
    /// <p>The feedback forwarding configuration for the identity.</p>
    ///         <p>If the value is <code>true</code>, you receive email notifications when bounce or
    ///             complaint events occur. These notifications are sent to the address that you specified
    ///             in the <code>Return-Path</code> header of the original email.</p>
    ///         <p>You're required to have a method of tracking bounces and complaints. If you haven't
    ///             set up another mechanism for receiving bounce or complaint notifications (for example,
    ///             by setting up an event destination), you receive an email notification when these events
    ///             occur (even if this setting is disabled).</p>
    public let feedbackForwardingStatus: Bool
    /// <p>The email identity type.</p>
    public let identityType: IdentityType?
    /// <p>An object that contains information about the Mail-From attributes for the email
    ///             identity.</p>
    public let mailFromAttributes: MailFromAttributes?
    /// <p>A map of policy names to policies.</p>
    public let policies: [String:String]?
    /// <p>An array of objects that define the tags (keys and values) that are associated with
    ///             the email identity.</p>
    public let tags: [Tag]?
    /// <p>Specifies whether or not the identity is verified. You can only send email from
    ///             verified email addresses or domains. For more information about verifying identities,
    ///             see the <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html">Amazon Pinpoint User Guide</a>.</p>
    public let verifiedForSendingStatus: Bool

    public init (
        configurationSetName: String? = nil,
        dkimAttributes: DkimAttributes? = nil,
        feedbackForwardingStatus: Bool = false,
        identityType: IdentityType? = nil,
        mailFromAttributes: MailFromAttributes? = nil,
        policies: [String:String]? = nil,
        tags: [Tag]? = nil,
        verifiedForSendingStatus: Bool = false
    )
    {
        self.configurationSetName = configurationSetName
        self.dkimAttributes = dkimAttributes
        self.feedbackForwardingStatus = feedbackForwardingStatus
        self.identityType = identityType
        self.mailFromAttributes = mailFromAttributes
        self.policies = policies
        self.tags = tags
        self.verifiedForSendingStatus = verifiedForSendingStatus
    }
}

extension GetEmailIdentityOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetEmailIdentityOutputResponse(configurationSetName: \(String(describing: configurationSetName)), dkimAttributes: \(String(describing: dkimAttributes)), feedbackForwardingStatus: \(String(describing: feedbackForwardingStatus)), identityType: \(String(describing: identityType)), mailFromAttributes: \(String(describing: mailFromAttributes)), policies: \(String(describing: policies)), tags: \(String(describing: tags)), verifiedForSendingStatus: \(String(describing: verifiedForSendingStatus)))"}
}