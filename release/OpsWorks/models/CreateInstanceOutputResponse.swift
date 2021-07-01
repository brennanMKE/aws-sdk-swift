// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a <code>CreateInstance</code> request.</p>
public struct CreateInstanceOutputResponse: Equatable {
    /// <p>The instance ID.</p>
    public let instanceId: String?

    public init (
        instanceId: String? = nil
    )
    {
        self.instanceId = instanceId
    }
}

extension CreateInstanceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateInstanceOutputResponse(instanceId: \(String(describing: instanceId)))"}
}