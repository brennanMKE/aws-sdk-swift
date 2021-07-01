// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The transport parameters that are associated with an outbound media stream.
public struct DestinationConfiguration: Equatable {
    /// The IP address where contents of the media stream will be sent.
    public let destinationIp: String?
    /// The port to use when the content of the media stream is distributed to the output.
    public let destinationPort: Int
    /// The VPC interface that is used for the media stream associated with the output.
    public let interface: Interface?
    /// The IP address that the receiver requires in order to establish a connection with the flow. This value is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the CDI or ST 2110 JPEG XS protocol.
    public let outboundIp: String?

    public init (
        destinationIp: String? = nil,
        destinationPort: Int = 0,
        interface: Interface? = nil,
        outboundIp: String? = nil
    )
    {
        self.destinationIp = destinationIp
        self.destinationPort = destinationPort
        self.interface = interface
        self.outboundIp = outboundIp
    }
}

extension DestinationConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationConfiguration(destinationIp: \(String(describing: destinationIp)), destinationPort: \(String(describing: destinationPort)), interface: \(String(describing: interface)), outboundIp: \(String(describing: outboundIp)))"}
}