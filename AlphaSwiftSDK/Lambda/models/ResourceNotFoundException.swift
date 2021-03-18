// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The resource specified in the request does not exist.</p>
public struct ResourceNotFoundException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
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
