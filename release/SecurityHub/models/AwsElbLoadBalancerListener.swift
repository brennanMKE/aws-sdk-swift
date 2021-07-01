// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a load balancer listener.</p>
public struct AwsElbLoadBalancerListener: Equatable {
    /// <p>The load balancer transport protocol to use for routing.</p>
    ///          <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
    ///             <code>SSL</code>
    ///          </p>
    public let `protocol`: String?
    /// <p>The port on which the instance is listening.</p>
    public let instancePort: Int
    /// <p>The protocol to use to route traffic to instances.</p>
    ///          <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
    ///             <code>SSL</code>
    ///          </p>
    public let instanceProtocol: String?
    /// <p>The port on which the load balancer is listening.</p>
    ///          <p>On EC2-VPC, you can specify any port from the range 1-65535.</p>
    ///          <p>On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587,
    ///          1024-65535.</p>
    public let loadBalancerPort: Int
    /// <p>The ARN of the server certificate.</p>
    public let sslCertificateId: String?

    public init (
        `protocol`: String? = nil,
        instancePort: Int = 0,
        instanceProtocol: String? = nil,
        loadBalancerPort: Int = 0,
        sslCertificateId: String? = nil
    )
    {
        self.`protocol` = `protocol`
        self.instancePort = instancePort
        self.instanceProtocol = instanceProtocol
        self.loadBalancerPort = loadBalancerPort
        self.sslCertificateId = sslCertificateId
    }
}

extension AwsElbLoadBalancerListener: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsElbLoadBalancerListener(instancePort: \(String(describing: instancePort)), instanceProtocol: \(String(describing: instanceProtocol)), loadBalancerPort: \(String(describing: loadBalancerPort)), protocol: \(String(describing: `protocol`)), sslCertificateId: \(String(describing: sslCertificateId)))"}
}