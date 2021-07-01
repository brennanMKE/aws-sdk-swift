// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPublicKeyInput: Equatable {
    /// <p>The identifier of the public key you are getting.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetPublicKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPublicKeyInput(id: \(String(describing: id)))"}
}