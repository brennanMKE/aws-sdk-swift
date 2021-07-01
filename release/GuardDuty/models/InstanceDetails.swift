// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about the details of an instance.</p>
public struct InstanceDetails: Equatable {
    /// <p>The Availability Zone of the EC2 instance.</p>
    public let availabilityZone: String?
    /// <p>The profile information of the EC2 instance.</p>
    public let iamInstanceProfile: IamInstanceProfile?
    /// <p>The image description of the EC2 instance.</p>
    public let imageDescription: String?
    /// <p>The image ID of the EC2 instance.</p>
    public let imageId: String?
    /// <p>The ID of the EC2 instance.</p>
    public let instanceId: String?
    /// <p>The state of the EC2 instance.</p>
    public let instanceState: String?
    /// <p>The type of the EC2 instance.</p>
    public let instanceType: String?
    /// <p>The launch time of the EC2 instance.</p>
    public let launchTime: String?
    /// <p>The elastic network interface information of the EC2 instance.</p>
    public let networkInterfaces: [NetworkInterface]?
    /// <p>The Amazon Resource Name (ARN) of the AWS Outpost. Only applicable to AWS Outposts
    ///       instances.</p>
    public let outpostArn: String?
    /// <p>The platform of the EC2 instance.</p>
    public let platform: String?
    /// <p>The product code of the EC2 instance.</p>
    public let productCodes: [ProductCode]?
    /// <p>The tags of the EC2 instance.</p>
    public let tags: [Tag]?

    public init (
        availabilityZone: String? = nil,
        iamInstanceProfile: IamInstanceProfile? = nil,
        imageDescription: String? = nil,
        imageId: String? = nil,
        instanceId: String? = nil,
        instanceState: String? = nil,
        instanceType: String? = nil,
        launchTime: String? = nil,
        networkInterfaces: [NetworkInterface]? = nil,
        outpostArn: String? = nil,
        platform: String? = nil,
        productCodes: [ProductCode]? = nil,
        tags: [Tag]? = nil
    )
    {
        self.availabilityZone = availabilityZone
        self.iamInstanceProfile = iamInstanceProfile
        self.imageDescription = imageDescription
        self.imageId = imageId
        self.instanceId = instanceId
        self.instanceState = instanceState
        self.instanceType = instanceType
        self.launchTime = launchTime
        self.networkInterfaces = networkInterfaces
        self.outpostArn = outpostArn
        self.platform = platform
        self.productCodes = productCodes
        self.tags = tags
    }
}

extension InstanceDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceDetails(availabilityZone: \(String(describing: availabilityZone)), iamInstanceProfile: \(String(describing: iamInstanceProfile)), imageDescription: \(String(describing: imageDescription)), imageId: \(String(describing: imageId)), instanceId: \(String(describing: instanceId)), instanceState: \(String(describing: instanceState)), instanceType: \(String(describing: instanceType)), launchTime: \(String(describing: launchTime)), networkInterfaces: \(String(describing: networkInterfaces)), outpostArn: \(String(describing: outpostArn)), platform: \(String(describing: platform)), productCodes: \(String(describing: productCodes)), tags: \(String(describing: tags)))"}
}