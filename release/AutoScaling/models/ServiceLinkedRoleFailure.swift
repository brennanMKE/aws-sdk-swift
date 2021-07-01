// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The service-linked role is not yet ready for use.</p>
public struct ServiceLinkedRoleFailure: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension ServiceLinkedRoleFailure: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ServiceLinkedRoleFailure(message: \(String(describing: message)))"}
}