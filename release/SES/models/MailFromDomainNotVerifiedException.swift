// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p> Indicates that the message could not be sent because Amazon SES could not read the MX
///             record required to use the specified MAIL FROM domain. For information about editing the
///             custom MAIL FROM domain settings for an identity, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer
///                 Guide</a>.</p>
public struct MailFromDomainNotVerifiedException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension MailFromDomainNotVerifiedException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MailFromDomainNotVerifiedException(message: \(String(describing: message)))"}
}