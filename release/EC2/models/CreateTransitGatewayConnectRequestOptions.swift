// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The options for a Connect attachment.</p>
public struct CreateTransitGatewayConnectRequestOptions: Equatable {
    /// <p>The tunnel protocol.</p>
    public let `protocol`: ProtocolValue?

    public init (
        `protocol`: ProtocolValue? = nil
    )
    {
        self.`protocol` = `protocol`
    }
}

extension CreateTransitGatewayConnectRequestOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTransitGatewayConnectRequestOptions(protocol: \(String(describing: `protocol`)))"}
}