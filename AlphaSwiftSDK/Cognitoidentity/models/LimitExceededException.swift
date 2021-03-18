// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
public struct LimitExceededException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    /// <p>The message returned by a LimitExceededException.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}
