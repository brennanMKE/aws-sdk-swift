// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.</p>
public struct EC2UnexpectedException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .server
    public var eC2ErrorCode: String?
    public var message: String?
    public var type: String?

    public init (
        eC2ErrorCode: String? = nil,
        message: String? = nil,
        type: String? = nil
    )
    {
        self.eC2ErrorCode = eC2ErrorCode
        self.message = message
        self.type = type
    }
}
