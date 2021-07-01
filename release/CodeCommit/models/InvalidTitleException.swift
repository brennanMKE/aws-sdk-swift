// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The title of the pull request is not valid. Pull request titles cannot exceed 100 characters in length.</p>
public struct InvalidTitleException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidTitleException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidTitleException(message: \(String(describing: message)))"}
}