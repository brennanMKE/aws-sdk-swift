// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>There was a conflict when writing to the specified S3 bucket.</p>
public struct ExportConflictException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}
