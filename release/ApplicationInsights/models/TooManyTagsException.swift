// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The number of the provided tags is beyond the limit, or
///          the number of total tags you are trying to attach to the specified resource exceeds the limit.</p>
public struct TooManyTagsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    /// <p>The name of the resource with too many tags.</p>
    public var resourceName: String?

    public init (
        message: String? = nil,
        resourceName: String? = nil
    )
    {
        self.message = message
        self.resourceName = resourceName
    }
}

extension TooManyTagsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TooManyTagsException(message: \(String(describing: message)), resourceName: \(String(describing: resourceName)))"}
}