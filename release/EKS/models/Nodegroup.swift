// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An object representing an Amazon EKS managed node group.</p>
public struct Nodegroup: Equatable {
    /// <p>If the node group was deployed using a launch template with a custom AMI, then this is
    ///                 <code>CUSTOM</code>. For node groups that weren't deployed using a launch template,
    ///             this is the AMI type that was specified in the node group configuration.</p>
    public let amiType: AMITypes?
    /// <p>The capacity type of your managed node group.</p>
    public let capacityType: CapacityTypes?
    /// <p>The name of the cluster that the managed node group resides in.</p>
    public let clusterName: String?
    /// <p>The Unix epoch timestamp in seconds for when the managed node group was
    ///             created.</p>
    public let createdAt: Date?
    /// <p>If the node group wasn't deployed with a launch template, then this is the disk size
    ///             in the node group configuration. If the node group was deployed with a launch template,
    ///             then this is <code>null</code>.</p>
    public let diskSize: Int?
    /// <p>The health status of the node group. If there are issues with your node group's
    ///             health, they are listed here.</p>
    public let health: NodegroupHealth?
    /// <p>If the node group wasn't deployed with a launch template, then this is the instance
    ///             type that is associated with the node group. If the node group was deployed with a
    ///             launch template, then this is <code>null</code>.</p>
    public let instanceTypes: [String]?
    /// <p>The Kubernetes labels applied to the nodes in the node group.</p>
    ///         <note>
    ///             <p>Only labels that are applied with the Amazon EKS API are shown here. There may be other
    ///                 Kubernetes labels applied to the nodes in this group.</p>
    ///         </note>
    public let labels: [String:String]?
    /// <p>If a launch template was used to create the node group, then this is the launch
    ///             template that was used.</p>
    public let launchTemplate: LaunchTemplateSpecification?
    /// <p>The Unix epoch timestamp in seconds for when the managed node group was last
    ///             modified.</p>
    public let modifiedAt: Date?
    /// <p>The IAM role associated with your node group. The Amazon EKS node <code>kubelet</code>
    ///             daemon makes calls to AWS APIs on your behalf. Nodes receive permissions for these API
    ///             calls through an IAM instance profile and associated policies.</p>
    public let nodeRole: String?
    /// <p>The Amazon Resource Name (ARN) associated with the managed node group.</p>
    public let nodegroupArn: String?
    /// <p>The name associated with an Amazon EKS managed node group.</p>
    public let nodegroupName: String?
    /// <p>If the node group was deployed using a launch template with a custom AMI, then this is
    ///             the AMI ID that was specified in the launch template. For node groups that weren't
    ///             deployed using a launch template, this is the version of the Amazon EKS optimized AMI that
    ///             the node group was deployed with.</p>
    public let releaseVersion: String?
    /// <p>If the node group wasn't deployed with a launch template, then this is the remote
    ///             access configuration that is associated with the node group. If the node group was
    ///             deployed with a launch template, then this is <code>null</code>.</p>
    public let remoteAccess: RemoteAccessConfig?
    /// <p>The resources associated with the node group, such as Auto Scaling groups and security
    ///             groups for remote access.</p>
    public let resources: NodegroupResources?
    /// <p>The scaling configuration details for the Auto Scaling group that is associated with
    ///             your node group.</p>
    public let scalingConfig: NodegroupScalingConfig?
    /// <p>The current status of the managed node group.</p>
    public let status: NodegroupStatus?
    /// <p>The subnets that were specified for the Auto Scaling group that is associated with
    ///             your node group.</p>
    public let subnets: [String]?
    /// <p>The metadata applied to the node group to assist with categorization and organization.
    ///             Each tag consists of a key and an optional value, both of which you define. Node group
    ///             tags do not propagate to any other resources associated with the node group, such as the
    ///             Amazon EC2 instances or subnets. </p>
    public let tags: [String:String]?
    /// <p>The Kubernetes taints to be applied to the nodes in the node group when they are
    ///             created. Effect is one of <code>NoSchedule</code>, <code>PreferNoSchedule</code>, or <code>NoExecute</code>. Kubernetes taints
    ///             can be used together with tolerations to control how workloads are scheduled to your
    ///             nodes.</p>
    public let taints: [Taint]?
    /// <p>The Kubernetes version of the managed node group.</p>
    public let version: String?

    public init (
        amiType: AMITypes? = nil,
        capacityType: CapacityTypes? = nil,
        clusterName: String? = nil,
        createdAt: Date? = nil,
        diskSize: Int? = nil,
        health: NodegroupHealth? = nil,
        instanceTypes: [String]? = nil,
        labels: [String:String]? = nil,
        launchTemplate: LaunchTemplateSpecification? = nil,
        modifiedAt: Date? = nil,
        nodeRole: String? = nil,
        nodegroupArn: String? = nil,
        nodegroupName: String? = nil,
        releaseVersion: String? = nil,
        remoteAccess: RemoteAccessConfig? = nil,
        resources: NodegroupResources? = nil,
        scalingConfig: NodegroupScalingConfig? = nil,
        status: NodegroupStatus? = nil,
        subnets: [String]? = nil,
        tags: [String:String]? = nil,
        taints: [Taint]? = nil,
        version: String? = nil
    )
    {
        self.amiType = amiType
        self.capacityType = capacityType
        self.clusterName = clusterName
        self.createdAt = createdAt
        self.diskSize = diskSize
        self.health = health
        self.instanceTypes = instanceTypes
        self.labels = labels
        self.launchTemplate = launchTemplate
        self.modifiedAt = modifiedAt
        self.nodeRole = nodeRole
        self.nodegroupArn = nodegroupArn
        self.nodegroupName = nodegroupName
        self.releaseVersion = releaseVersion
        self.remoteAccess = remoteAccess
        self.resources = resources
        self.scalingConfig = scalingConfig
        self.status = status
        self.subnets = subnets
        self.tags = tags
        self.taints = taints
        self.version = version
    }
}

extension Nodegroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Nodegroup(amiType: \(String(describing: amiType)), capacityType: \(String(describing: capacityType)), clusterName: \(String(describing: clusterName)), createdAt: \(String(describing: createdAt)), diskSize: \(String(describing: diskSize)), health: \(String(describing: health)), instanceTypes: \(String(describing: instanceTypes)), labels: \(String(describing: labels)), launchTemplate: \(String(describing: launchTemplate)), modifiedAt: \(String(describing: modifiedAt)), nodeRole: \(String(describing: nodeRole)), nodegroupArn: \(String(describing: nodegroupArn)), nodegroupName: \(String(describing: nodegroupName)), releaseVersion: \(String(describing: releaseVersion)), remoteAccess: \(String(describing: remoteAccess)), resources: \(String(describing: resources)), scalingConfig: \(String(describing: scalingConfig)), status: \(String(describing: status)), subnets: \(String(describing: subnets)), tags: \(String(describing: tags)), taints: \(String(describing: taints)), version: \(String(describing: version)))"}
}