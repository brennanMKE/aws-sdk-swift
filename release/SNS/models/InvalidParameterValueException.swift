// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Indicates that a request parameter does not comply with the associated
///             constraints.</p>
public struct InvalidParameterValueException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The parameter value is invalid.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension InvalidParameterValueException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidParameterValueException(message: \(String(describing: message)))"}
}