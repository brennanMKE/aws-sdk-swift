// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The resource already exists.</p>
public struct ResourceAlreadyExistsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message for the exception.</p>
    public var message: String?
    /// <p>The ARN of the resource that caused the exception.</p>
    public var resourceArn: String?
    /// <p>The ID of the resource that caused the exception.</p>
    public var resourceId: String?

    public init (
        message: String? = nil,
        resourceArn: String? = nil,
        resourceId: String? = nil
    )
    {
        self.message = message
        self.resourceArn = resourceArn
        self.resourceId = resourceId
    }
}

extension ResourceAlreadyExistsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceAlreadyExistsException(message: \(String(describing: message)), resourceArn: \(String(describing: resourceArn)), resourceId: \(String(describing: resourceId)))"}
}