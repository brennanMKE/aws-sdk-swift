// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object containing the error encountered with the last update: <code>ErrorCode</code>, <code>ErrorMessage</code>.</p>
public struct UpdateError: Equatable {
    /// <p>The error code that corresponds to the error with the last update.</p>
    public let errorCode: String?
    /// <p>The error message that corresponds to the error code.</p>
    public let errorMessage: String?

    public init (
        errorCode: String? = nil,
        errorMessage: String? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }
}

extension UpdateError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateError(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)))"}
}