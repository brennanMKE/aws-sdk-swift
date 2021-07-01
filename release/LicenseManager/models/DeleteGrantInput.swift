// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteGrantInput: Equatable {
    /// <p>Amazon Resource Name (ARN) of the grant.</p>
    public let grantArn: String?
    /// <p>Current version of the grant.</p>
    public let version: String?

    public init (
        grantArn: String? = nil,
        version: String? = nil
    )
    {
        self.grantArn = grantArn
        self.version = version
    }
}

extension DeleteGrantInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteGrantInput(grantArn: \(String(describing: grantArn)), version: \(String(describing: version)))"}
}