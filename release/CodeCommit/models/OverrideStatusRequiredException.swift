// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An override status is required, but no value was provided. Valid values include OVERRIDE and REVOKE.</p>
public struct OverrideStatusRequiredException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Any message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension OverrideStatusRequiredException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OverrideStatusRequiredException(message: \(String(describing: message)))"}
}