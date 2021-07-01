// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides a description of a mount target.</p>
public struct MountTargetDescription: Equatable {
    /// <p>The unique and consistent identifier of the Availability Zone that the mount target resides in.
    ///       For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it has the same location in every AWS account.</p>
    public let availabilityZoneId: String?
    /// <p>The name of the Availability Zone in which the mount target is located. Availability Zones are
    ///       independently mapped to names for each AWS account. For example, the Availability Zone
    ///       <code>us-east-1a</code> for your AWS account might not be the same location as <code>us-east-1a</code> for another AWS account.</p>
    public let availabilityZoneName: String?
    /// <p>The ID of the file system for which the mount target is intended.</p>
    public let fileSystemId: String?
    /// <p>Address at which the file system can be mounted by using the mount target.</p>
    public let ipAddress: String?
    /// <p>Lifecycle state of the mount target.</p>
    public let lifeCycleState: LifeCycleState?
    /// <p>System-assigned mount target ID.</p>
    public let mountTargetId: String?
    /// <p>The ID of the network interface that Amazon EFS created when it created the mount
    ///       target.</p>
    public let networkInterfaceId: String?
    /// <p>AWS account ID that owns the resource.</p>
    public let ownerId: String?
    /// <p>The ID of the mount target's subnet.</p>
    public let subnetId: String?
    /// <p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>
    public let vpcId: String?

    public init (
        availabilityZoneId: String? = nil,
        availabilityZoneName: String? = nil,
        fileSystemId: String? = nil,
        ipAddress: String? = nil,
        lifeCycleState: LifeCycleState? = nil,
        mountTargetId: String? = nil,
        networkInterfaceId: String? = nil,
        ownerId: String? = nil,
        subnetId: String? = nil,
        vpcId: String? = nil
    )
    {
        self.availabilityZoneId = availabilityZoneId
        self.availabilityZoneName = availabilityZoneName
        self.fileSystemId = fileSystemId
        self.ipAddress = ipAddress
        self.lifeCycleState = lifeCycleState
        self.mountTargetId = mountTargetId
        self.networkInterfaceId = networkInterfaceId
        self.ownerId = ownerId
        self.subnetId = subnetId
        self.vpcId = vpcId
    }
}

extension MountTargetDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MountTargetDescription(availabilityZoneId: \(String(describing: availabilityZoneId)), availabilityZoneName: \(String(describing: availabilityZoneName)), fileSystemId: \(String(describing: fileSystemId)), ipAddress: \(String(describing: ipAddress)), lifeCycleState: \(String(describing: lifeCycleState)), mountTargetId: \(String(describing: mountTargetId)), networkInterfaceId: \(String(describing: networkInterfaceId)), ownerId: \(String(describing: ownerId)), subnetId: \(String(describing: subnetId)), vpcId: \(String(describing: vpcId)))"}
}