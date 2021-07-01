// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeFirewallInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the firewall.</p>
    ///          <p>You must specify the ARN or the name, and you can specify both. </p>
    public let firewallArn: String?
    /// <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    ///          <p>You must specify the ARN or the name, and you can specify both. </p>
    public let firewallName: String?

    public init (
        firewallArn: String? = nil,
        firewallName: String? = nil
    )
    {
        self.firewallArn = firewallArn
        self.firewallName = firewallName
    }
}

extension DescribeFirewallInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFirewallInput(firewallArn: \(String(describing: firewallArn)), firewallName: \(String(describing: firewallName)))"}
}