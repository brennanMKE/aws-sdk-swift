// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateThingGroupOutputResponse: Equatable {
    /// <p>The version of the updated thing group.</p>
    public let version: Int

    public init (
        version: Int = 0
    )
    {
        self.version = version
    }
}

extension UpdateThingGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateThingGroupOutputResponse(version: \(String(describing: version)))"}
}