// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified image is tagged with a tag that already exists. The repository is
///          configured for tag immutability.</p>
public struct ImageTagAlreadyExistsException: ClientRuntime.ServiceError, Equatable {
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

extension ImageTagAlreadyExistsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImageTagAlreadyExistsException(message: \(String(describing: message)))"}
}