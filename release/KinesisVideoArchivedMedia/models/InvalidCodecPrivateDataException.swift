// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The codec private data in at least one of the tracks of the video stream is not valid
///             for this operation.</p>
public struct InvalidCodecPrivateDataException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidCodecPrivateDataException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidCodecPrivateDataException(message: \(String(describing: message)))"}
}