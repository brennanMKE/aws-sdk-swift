// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the private IPv4 address of a network interface.</p>
public struct NetworkInterfacePrivateIpAddress: Equatable {
    /// <p>The association information for an Elastic IP address (IPv4) associated with the network interface.</p>
    public let association: NetworkInterfaceAssociation?
    /// <p>Indicates whether this IPv4 address is the primary private IPv4 address of the network interface.</p>
    public let primary: Bool
    /// <p>The private DNS name.</p>
    public let privateDnsName: String?
    /// <p>The private IPv4 address.</p>
    public let privateIpAddress: String?

    public init (
        association: NetworkInterfaceAssociation? = nil,
        primary: Bool = false,
        privateDnsName: String? = nil,
        privateIpAddress: String? = nil
    )
    {
        self.association = association
        self.primary = primary
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
    }
}

extension NetworkInterfacePrivateIpAddress: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NetworkInterfacePrivateIpAddress(association: \(String(describing: association)), primary: \(String(describing: primary)), privateDnsName: \(String(describing: privateDnsName)), privateIpAddress: \(String(describing: privateIpAddress)))"}
}