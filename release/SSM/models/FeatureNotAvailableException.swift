// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You attempted to register a LAMBDA or STEP_FUNCTIONS task in a region where the
///    corresponding service is not available. </p>
public struct FeatureNotAvailableException: ClientRuntime.ServiceError, Equatable {
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

extension FeatureNotAvailableException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FeatureNotAvailableException(message: \(String(describing: message)))"}
}