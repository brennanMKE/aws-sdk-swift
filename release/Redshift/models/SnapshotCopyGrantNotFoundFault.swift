// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified snapshot copy grant can't be found. Make sure that the name is typed
///             correctly and that the grant exists in the destination region.</p>
public struct SnapshotCopyGrantNotFoundFault: ClientRuntime.ServiceError, Equatable {
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

extension SnapshotCopyGrantNotFoundFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SnapshotCopyGrantNotFoundFault(message: \(String(describing: message)))"}
}