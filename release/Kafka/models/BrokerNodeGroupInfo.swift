// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the setup to be used for Kafka broker nodes in the cluster.</p>
public struct BrokerNodeGroupInfo: Equatable {
    /// <p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>
    ///          <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>
    public let brokerAZDistribution: BrokerAZDistribution?
    /// <p>The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't be in Availability Zone us-east-1e.</p>
    public let clientSubnets: [String]?
    /// <p>The type of Amazon EC2 instances to use for Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,
    /// kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.</p>
    public let instanceType: String?
    /// <p>The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster. If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.</p>
    public let securityGroups: [String]?
    /// <p>Contains information about storage volumes attached to MSK broker nodes.</p>
    public let storageInfo: StorageInfo?

    public init (
        brokerAZDistribution: BrokerAZDistribution? = nil,
        clientSubnets: [String]? = nil,
        instanceType: String? = nil,
        securityGroups: [String]? = nil,
        storageInfo: StorageInfo? = nil
    )
    {
        self.brokerAZDistribution = brokerAZDistribution
        self.clientSubnets = clientSubnets
        self.instanceType = instanceType
        self.securityGroups = securityGroups
        self.storageInfo = storageInfo
    }
}

extension BrokerNodeGroupInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BrokerNodeGroupInfo(brokerAZDistribution: \(String(describing: brokerAZDistribution)), clientSubnets: \(String(describing: clientSubnets)), instanceType: \(String(describing: instanceType)), securityGroups: \(String(describing: securityGroups)), storageInfo: \(String(describing: storageInfo)))"}
}