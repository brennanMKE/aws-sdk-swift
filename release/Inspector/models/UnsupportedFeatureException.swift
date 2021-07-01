// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected
///          because you tried to generate a report for an assessment run that existed before reporting
///          was supported in Amazon Inspector. You can only generate reports for assessment runs that
///          took place or will take place after generating reports in Amazon Inspector became
///          available.</p>
public struct UnsupportedFeatureException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var canRetry: Bool?
    public var message: String?

    public init (
        canRetry: Bool? = nil,
        message: String? = nil
    )
    {
        self.canRetry = canRetry
        self.message = message
    }
}

extension UnsupportedFeatureException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UnsupportedFeatureException(canRetry: \(String(describing: canRetry)), message: \(String(describing: message)))"}
}