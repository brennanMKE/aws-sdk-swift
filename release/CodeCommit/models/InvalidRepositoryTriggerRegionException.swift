// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The AWS Region for the trigger target does not match the AWS Region for the
///             repository. Triggers must be created in the same Region as the target for the
///             trigger.</p>
public struct InvalidRepositoryTriggerRegionException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidRepositoryTriggerRegionException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidRepositoryTriggerRegionException(message: \(String(describing: message)))"}
}