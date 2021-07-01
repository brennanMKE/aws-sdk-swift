// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The instance currently has 1 active serial console session. Only 1 session is supported at a time.</p>
public struct SerialConsoleSessionLimitExceededException: ClientRuntime.ServiceError, Equatable {
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

extension SerialConsoleSessionLimitExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SerialConsoleSessionLimitExceededException(message: \(String(describing: message)))"}
}