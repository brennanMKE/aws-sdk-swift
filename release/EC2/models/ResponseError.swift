// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the error that's returned when you cannot delete a launch template
///             version.</p>
public struct ResponseError: Equatable {
    /// <p>The error code.</p>
    public let code: LaunchTemplateErrorCode?
    /// <p>The error message, if applicable.</p>
    public let message: String?

    public init (
        code: LaunchTemplateErrorCode? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension ResponseError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResponseError(code: \(String(describing: code)), message: \(String(describing: message)))"}
}