// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <p>This exception is thrown when the user has made too many requests for a given
             operation.</p>
 */
public struct TooManyRequestsException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    /**
     <p>The message returned when the Amazon Cognito service returns a too many requests
                 exception.</p>
     */
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}
