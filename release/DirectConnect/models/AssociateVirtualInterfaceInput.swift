// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateVirtualInterfaceInput: Equatable {
    /// <p>The ID of the LAG or connection.</p>
    public let connectionId: String?
    /// <p>The ID of the virtual interface.</p>
    public let virtualInterfaceId: String?

    public init (
        connectionId: String? = nil,
        virtualInterfaceId: String? = nil
    )
    {
        self.connectionId = connectionId
        self.virtualInterfaceId = virtualInterfaceId
    }
}

extension AssociateVirtualInterfaceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateVirtualInterfaceInput(connectionId: \(String(describing: connectionId)), virtualInterfaceId: \(String(describing: virtualInterfaceId)))"}
}