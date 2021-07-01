// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This user, group, or resource name is not allowed in Amazon WorkMail.</p>
public struct ReservedNameException: ClientRuntime.ServiceError, Equatable {
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

extension ReservedNameException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReservedNameException(message: \(String(describing: message)))"}
}