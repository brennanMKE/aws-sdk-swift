// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration properties relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>
public struct MemberFrameworkConfiguration: Equatable {
    /// <p>Attributes of Hyperledger Fabric for a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>
    public let fabric: MemberFabricConfiguration?

    public init (
        fabric: MemberFabricConfiguration? = nil
    )
    {
        self.fabric = fabric
    }
}

extension MemberFrameworkConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MemberFrameworkConfiguration(fabric: \(String(describing: fabric)))"}
}