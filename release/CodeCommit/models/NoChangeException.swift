// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The commit cannot be created because no changes will be made to the repository as a result of this commit. A commit must contain at least one change.</p>
public struct NoChangeException: ClientRuntime.ServiceError, Equatable {
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

extension NoChangeException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NoChangeException(message: \(String(describing: message)))"}
}