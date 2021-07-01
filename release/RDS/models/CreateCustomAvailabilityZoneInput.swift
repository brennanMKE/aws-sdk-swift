// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct CreateCustomAvailabilityZoneInput: Equatable {
    /// <p>The name of the custom Availability Zone (AZ).</p>
    public let customAvailabilityZoneName: String?
    /// <p>The ID of an existing virtual private network (VPN) between the Amazon RDS website and
    ///             the VMware vSphere cluster.</p>
    public let existingVpnId: String?
    /// <p>The name of a new VPN tunnel between the Amazon RDS website and the VMware vSphere cluster.</p>
    ///         <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>
    public let newVpnTunnelName: String?
    /// <p>The IP address of network traffic from your on-premises data center. A custom AZ receives the network traffic.</p>
    ///         <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>
    public let vpnTunnelOriginatorIP: String?

    public init (
        customAvailabilityZoneName: String? = nil,
        existingVpnId: String? = nil,
        newVpnTunnelName: String? = nil,
        vpnTunnelOriginatorIP: String? = nil
    )
    {
        self.customAvailabilityZoneName = customAvailabilityZoneName
        self.existingVpnId = existingVpnId
        self.newVpnTunnelName = newVpnTunnelName
        self.vpnTunnelOriginatorIP = vpnTunnelOriginatorIP
    }
}

extension CreateCustomAvailabilityZoneInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCustomAvailabilityZoneInput(customAvailabilityZoneName: \(String(describing: customAvailabilityZoneName)), existingVpnId: \(String(describing: existingVpnId)), newVpnTunnelName: \(String(describing: newVpnTunnelName)), vpnTunnelOriginatorIP: \(String(describing: vpnTunnelOriginatorIP)))"}
}