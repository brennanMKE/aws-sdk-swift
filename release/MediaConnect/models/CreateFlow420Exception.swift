// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
public struct CreateFlow420Exception: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// The error message returned by AWS Elemental MediaConnect.
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension CreateFlow420Exception: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFlow420Exception(message: \(String(describing: message)))"}
}