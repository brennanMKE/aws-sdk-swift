// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The Amazon Resource Name (ARN) of the user or identity is not valid.</p>
public struct InvalidReactionUserArnException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Any message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension InvalidReactionUserArnException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidReactionUserArnException(message: \(String(describing: message)))"}
}