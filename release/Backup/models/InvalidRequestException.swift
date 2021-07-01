// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Indicates that something is wrong with the input to the request. For example, a
///          parameter is of the wrong type.</p>
public struct InvalidRequestException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var code: String?
    /// <p></p>
    public var context: String?
    public var message: String?
    /// <p></p>
    public var type: String?

    public init (
        code: String? = nil,
        context: String? = nil,
        message: String? = nil,
        type: String? = nil
    )
    {
        self.code = code
        self.context = context
        self.message = message
        self.type = type
    }
}

extension InvalidRequestException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidRequestException(code: \(String(describing: code)), context: \(String(describing: context)), message: \(String(describing: message)), type: \(String(describing: type)))"}
}