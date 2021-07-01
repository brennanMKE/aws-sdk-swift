// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteUserInput: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The identifier of the user.</p>
    public let userId: String?

    public init (
        instanceId: String? = nil,
        userId: String? = nil
    )
    {
        self.instanceId = instanceId
        self.userId = userId
    }
}

extension DeleteUserInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteUserInput(instanceId: \(String(describing: instanceId)), userId: \(String(describing: userId)))"}
}