// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an EC2 Fleet error.</p>
public struct DeleteFleetError: Equatable {
    /// <p>The error code.</p>
    public let code: DeleteFleetErrorCode?
    /// <p>The description for the error code.</p>
    public let message: String?

    public init (
        code: DeleteFleetErrorCode? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension DeleteFleetError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteFleetError(code: \(String(describing: code)), message: \(String(describing: message)))"}
}