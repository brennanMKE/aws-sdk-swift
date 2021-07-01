// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Your account is not authorized to use the EC2 Serial Console. To authorize your
///             account, run the EnableSerialConsoleAccess API. For more information, see
///             <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html">EnableSerialConsoleAccess</a> in the <i>Amazon EC2 API Reference</i>.</p>
public struct SerialConsoleAccessDisabledException: ClientRuntime.ServiceError, Equatable {
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

extension SerialConsoleAccessDisabledException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SerialConsoleAccessDisabledException(message: \(String(describing: message)))"}
}