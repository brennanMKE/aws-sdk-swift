// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct LaunchProfileInitialization: Equatable {
    /// <p>A LaunchProfileInitializationActiveDirectory resource.</p>
    public let activeDirectory: LaunchProfileInitializationActiveDirectory?
    /// <p>The EC2 security groups that control access to the studio component.</p>
    public let ec2SecurityGroupIds: [String]?
    /// <p>The launch profile ID.</p>
    public let launchProfileId: String?
    /// <p>The version number of the protocol that is used by the launch profile. The only valid version is "2021-03-31".</p>
    public let launchProfileProtocolVersion: String?
    /// <p>The launch purpose.</p>
    public let launchPurpose: String?
    /// <p>The name for the launch profile.</p>
    public let name: String?
    /// <p>The platform of the launch platform, either WINDOWS or LINUX.</p>
    public let platform: LaunchProfilePlatform?
    /// <p>The system initializtion scripts.</p>
    public let systemInitializationScripts: [LaunchProfileInitializationScript]?
    /// <p>The user initializtion scripts.</p>
    public let userInitializationScripts: [LaunchProfileInitializationScript]?

    public init (
        activeDirectory: LaunchProfileInitializationActiveDirectory? = nil,
        ec2SecurityGroupIds: [String]? = nil,
        launchProfileId: String? = nil,
        launchProfileProtocolVersion: String? = nil,
        launchPurpose: String? = nil,
        name: String? = nil,
        platform: LaunchProfilePlatform? = nil,
        systemInitializationScripts: [LaunchProfileInitializationScript]? = nil,
        userInitializationScripts: [LaunchProfileInitializationScript]? = nil
    )
    {
        self.activeDirectory = activeDirectory
        self.ec2SecurityGroupIds = ec2SecurityGroupIds
        self.launchProfileId = launchProfileId
        self.launchProfileProtocolVersion = launchProfileProtocolVersion
        self.launchPurpose = launchPurpose
        self.name = name
        self.platform = platform
        self.systemInitializationScripts = systemInitializationScripts
        self.userInitializationScripts = userInitializationScripts
    }
}

extension LaunchProfileInitialization: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LaunchProfileInitialization(activeDirectory: \(String(describing: activeDirectory)), ec2SecurityGroupIds: \(String(describing: ec2SecurityGroupIds)), launchProfileId: \(String(describing: launchProfileId)), launchProfileProtocolVersion: \(String(describing: launchProfileProtocolVersion)), launchPurpose: \(String(describing: launchPurpose)), name: \(String(describing: name)), platform: \(String(describing: platform)), systemInitializationScripts: \(String(describing: systemInitializationScripts)), userInitializationScripts: \(String(describing: userInitializationScripts)))"}
}