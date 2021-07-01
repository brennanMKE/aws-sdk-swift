// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Exception that indicates that the resource state has been modified by another
///          client. Retrieve the resource and then retry your request.</p>
public struct OptimisticLockException: ClientRuntime.ServiceError, Equatable {
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

extension OptimisticLockException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OptimisticLockException(message: \(String(describing: message)))"}
}