// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You are not authorized for the SNS subscription.</p>
public struct SNSNoAuthorizationFault: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p></p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension SNSNoAuthorizationFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SNSNoAuthorizationFault(message: \(String(describing: message)))"}
}