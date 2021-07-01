// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the status and settings of the email channel for an application.</p>
public struct EmailChannelRequest: Equatable {
    /// <p>The <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html">Amazon SES configuration set</a> that you want to apply to messages that you send through the channel.</p>
    public let configurationSet: String?
    /// <p>Specifies whether to enable the email channel for the application.</p>
    public let enabled: Bool
    /// <p>The verified email address that you want to send email from when you send email through the channel.</p>
    public let fromAddress: String?
    /// <p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.</p>
    public let identity: String?
    /// <p>The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.</p>
    public let roleArn: String?

    public init (
        configurationSet: String? = nil,
        enabled: Bool = false,
        fromAddress: String? = nil,
        identity: String? = nil,
        roleArn: String? = nil
    )
    {
        self.configurationSet = configurationSet
        self.enabled = enabled
        self.fromAddress = fromAddress
        self.identity = identity
        self.roleArn = roleArn
    }
}

extension EmailChannelRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EmailChannelRequest(configurationSet: \(String(describing: configurationSet)), enabled: \(String(describing: enabled)), fromAddress: \(String(describing: fromAddress)), identity: \(String(describing: identity)), roleArn: \(String(describing: roleArn)))"}
}