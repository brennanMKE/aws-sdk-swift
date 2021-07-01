// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Settings for a private VPC Input.
/// When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
/// This property requires setting the roleArn property on Input creation.
/// Not compatible with the inputSecurityGroups property.
public struct InputVpcRequest: Equatable {
    /// A list of up to 5 EC2 VPC security group IDs to attach to the Input VPC network interfaces.
    /// Requires subnetIds. If none are specified then the VPC default security group will be used.
    public let securityGroupIds: [String]?
    /// A list of 2 VPC subnet IDs from the same VPC.
    /// Subnet IDs must be mapped to two unique availability zones (AZ).
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

extension InputVpcRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputVpcRequest(securityGroupIds: \(String(describing: securityGroupIds)), subnetIds: \(String(describing: subnetIds)))"}
}