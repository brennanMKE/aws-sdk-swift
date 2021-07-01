// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The current action was prevented because it would lock the caller out from performing
/// 			subsequent actions. Verify that the specified parameters would not result in the caller
/// 			being denied access to the resource. </p>
public struct LockoutPreventedException: ClientRuntime.ServiceError, Equatable {
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

extension LockoutPreventedException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LockoutPreventedException(message: \(String(describing: message)))"}
}