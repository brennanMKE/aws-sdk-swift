// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This exception is thrown when a precondition is not met.</p>
public struct PreconditionNotMetException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    /// <p>The message returned when a precondition is not met.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}
