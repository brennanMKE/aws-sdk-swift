// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified object could not be found. For any operation that depends on the existence
///          of a scalable target, this exception is thrown if the scalable target with the specified
///          service namespace, resource ID, and scalable dimension does not exist. For any operation
///          that deletes or deregisters a resource, this exception is thrown if the resource cannot be
///          found.</p>
public struct ObjectNotFoundException: ClientRuntime.ServiceError, Equatable {
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

extension ObjectNotFoundException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ObjectNotFoundException(message: \(String(describing: message)))"}
}