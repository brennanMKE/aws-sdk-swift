// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteWirelessGatewayTaskDefinitionInput: Equatable {
    /// <p>The ID of the resource to delete.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension DeleteWirelessGatewayTaskDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteWirelessGatewayTaskDefinitionInput(id: \(String(describing: id)))"}
}