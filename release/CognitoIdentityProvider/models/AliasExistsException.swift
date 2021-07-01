// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This exception is thrown when a user tries to confirm the account with an email or
///             phone number that has already been supplied as an alias from a different account. This
///             exception tells user that an account with this email or phone already exists.</p>
public struct AliasExistsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message sent to the user when an alias exists.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension AliasExistsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AliasExistsException(message: \(String(describing: message)))"}
}