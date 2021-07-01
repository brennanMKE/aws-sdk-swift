// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains other private IP address information of the EC2 instance.</p>
public struct PrivateIpAddressDetails: Equatable {
    /// <p>The private DNS name of the EC2 instance.</p>
    public let privateDnsName: String?
    /// <p>The private IP address of the EC2 instance.</p>
    public let privateIpAddress: String?

    public init (
        privateDnsName: String? = nil,
        privateIpAddress: String? = nil
    )
    {
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
    }
}

extension PrivateIpAddressDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PrivateIpAddressDetails(privateDnsName: \(String(describing: privateDnsName)), privateIpAddress: \(String(describing: privateIpAddress)))"}
}