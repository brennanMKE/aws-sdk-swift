// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Error returned when an idempotent operation is retried and the parameters don't match the
///    original call to the API with the same idempotency token. </p>
public struct IdempotentParameterMismatch: ClientRuntime.ServiceError, Equatable {
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

extension IdempotentParameterMismatch: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IdempotentParameterMismatch(message: \(String(describing: message)))"}
}