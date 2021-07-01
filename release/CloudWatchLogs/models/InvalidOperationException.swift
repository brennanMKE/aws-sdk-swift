// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The operation is not valid on the specified resource.</p>
public struct InvalidOperationException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidOperationException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidOperationException(message: \(String(describing: message)))"}
}