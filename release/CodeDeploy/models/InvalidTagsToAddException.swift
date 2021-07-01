// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p> The specified tags are not valid. </p>
public struct InvalidTagsToAddException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message that corresponds to the exception thrown by AWS CodeDeploy.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension InvalidTagsToAddException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidTagsToAddException(message: \(String(describing: message)))"}
}