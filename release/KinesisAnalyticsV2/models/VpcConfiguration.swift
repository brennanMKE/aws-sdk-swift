// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the parameters of a VPC used by the application.</p>
public struct VpcConfiguration: Equatable {
    /// <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html">SecurityGroup</a>
    ///         IDs used by the VPC configuration.</p>
    public let securityGroupIds: [String]?
    /// <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html">Subnet</a> IDs
    ///         used by the VPC configuration.</p>
    public let subnetIds: [String]?

    public init (
        securityGroupIds: [String]? = nil,
        subnetIds: [String]? = nil
    )
    {
        self.securityGroupIds = securityGroupIds
        self.subnetIds = subnetIds
    }
}

extension VpcConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VpcConfiguration(securityGroupIds: \(String(describing: securityGroupIds)), subnetIds: \(String(describing: subnetIds)))"}
}