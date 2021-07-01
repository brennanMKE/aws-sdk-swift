// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateLaunchConfigurationOutputResponse: Equatable {
    /// <p>Copy Private IP during Launch Configuration.</p>
    public let copyPrivateIp: Bool?
    /// <p>Copy Tags during Launch Configuration.</p>
    public let copyTags: Bool?
    /// <p>Configure EC2 lauch configuration template ID.</p>
    public let ec2LaunchTemplateID: String?
    /// <p>Configure launch dispostion for launch configuration.</p>
    public let launchDisposition: LaunchDisposition?
    /// <p>Configure launch configuration OS licensing.</p>
    public let licensing: Licensing?
    /// <p>Configure launch configuration name.</p>
    public let name: String?
    /// <p>Configure launch configuration Source Server ID.</p>
    public let sourceServerID: String?
    /// <p>Configure launch configuration Target instance type right sizing method.</p>
    public let targetInstanceTypeRightSizingMethod: TargetInstanceTypeRightSizingMethod?

    public init (
        copyPrivateIp: Bool? = nil,
        copyTags: Bool? = nil,
        ec2LaunchTemplateID: String? = nil,
        launchDisposition: LaunchDisposition? = nil,
        licensing: Licensing? = nil,
        name: String? = nil,
        sourceServerID: String? = nil,
        targetInstanceTypeRightSizingMethod: TargetInstanceTypeRightSizingMethod? = nil
    )
    {
        self.copyPrivateIp = copyPrivateIp
        self.copyTags = copyTags
        self.ec2LaunchTemplateID = ec2LaunchTemplateID
        self.launchDisposition = launchDisposition
        self.licensing = licensing
        self.name = name
        self.sourceServerID = sourceServerID
        self.targetInstanceTypeRightSizingMethod = targetInstanceTypeRightSizingMethod
    }
}

extension UpdateLaunchConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateLaunchConfigurationOutputResponse(copyPrivateIp: \(String(describing: copyPrivateIp)), copyTags: \(String(describing: copyTags)), ec2LaunchTemplateID: \(String(describing: ec2LaunchTemplateID)), launchDisposition: \(String(describing: launchDisposition)), licensing: \(String(describing: licensing)), name: \(String(describing: name)), sourceServerID: \(String(describing: sourceServerID)), targetInstanceTypeRightSizingMethod: \(String(describing: targetInstanceTypeRightSizingMethod)))"}
}