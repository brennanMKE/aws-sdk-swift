// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The workflow is in an invalid state to perform a requested operation.</p>
public struct IllegalWorkflowStateException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>A message describing the problem.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension IllegalWorkflowStateException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IllegalWorkflowStateException(message: \(String(describing: message)))"}
}