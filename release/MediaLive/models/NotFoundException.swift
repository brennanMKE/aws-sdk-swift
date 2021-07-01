// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Placeholder documentation for NotFoundException
public struct NotFoundException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// Placeholder documentation for __string
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension NotFoundException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotFoundException(message: \(String(describing: message)))"}
}