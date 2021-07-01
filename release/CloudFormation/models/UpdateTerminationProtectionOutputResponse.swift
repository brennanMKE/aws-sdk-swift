// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateTerminationProtectionOutputResponse: Equatable {
    /// <p>The unique ID of the stack.</p>
    public let stackId: String?

    public init (
        stackId: String? = nil
    )
    {
        self.stackId = stackId
    }
}

extension UpdateTerminationProtectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateTerminationProtectionOutputResponse(stackId: \(String(describing: stackId)))"}
}