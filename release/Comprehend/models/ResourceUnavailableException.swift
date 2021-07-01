// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified resource is not available. Check the resource and try your request
///       again.</p>
public struct ResourceUnavailableException: ClientRuntime.ServiceError, Equatable {
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

extension ResourceUnavailableException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceUnavailableException(message: \(String(describing: message)))"}
}