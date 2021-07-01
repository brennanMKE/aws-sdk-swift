// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResourceDefinitionInput: Equatable {
    /// The ID of the resource definition.
    public let resourceDefinitionId: String?

    public init (
        resourceDefinitionId: String? = nil
    )
    {
        self.resourceDefinitionId = resourceDefinitionId
    }
}

extension GetResourceDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourceDefinitionInput(resourceDefinitionId: \(String(describing: resourceDefinitionId)))"}
}