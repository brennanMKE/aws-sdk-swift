// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Information about a resource definition version.
public struct ResourceDefinitionVersion: Equatable {
    /// A list of resources.
    public let resources: [Resource]?

    public init (
        resources: [Resource]? = nil
    )
    {
        self.resources = resources
    }
}

extension ResourceDefinitionVersion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceDefinitionVersion(resources: \(String(describing: resources)))"}
}