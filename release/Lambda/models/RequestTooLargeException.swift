// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request payload exceeded the <code>Invoke</code> request body JSON input limit. For more information, see
///         <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a>. </p>
public struct RequestTooLargeException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    public var type: String?

    public init (
        message: String? = nil,
        type: String? = nil
    )
    {
        self.message = message
        self.type = type
    }
}

extension RequestTooLargeException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RequestTooLargeException(type: \(String(describing: type)), message: \(String(describing: message)))"}
}