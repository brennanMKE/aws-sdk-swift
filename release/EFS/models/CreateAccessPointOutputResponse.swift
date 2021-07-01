// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides a description of an EFS file system access point.</p>
public struct CreateAccessPointOutputResponse: Equatable {
    /// <p>The  unique Amazon Resource Name (ARN) associated with the access point.</p>
    public let accessPointArn: String?
    /// <p>The ID of the access point, assigned by Amazon EFS.</p>
    public let accessPointId: String?
    /// <p>The opaque string specified in the request to ensure idempotent creation.</p>
    public let clientToken: String?
    /// <p>The ID of the EFS file system that the access point applies to.</p>
    public let fileSystemId: String?
    /// <p>Identifies the lifecycle phase of the access point.</p>
    public let lifeCycleState: LifeCycleState?
    /// <p>The name of the access point. This is the value of the <code>Name</code> tag.</p>
    public let name: String?
    /// <p>Identified the AWS account that owns the access point resource.</p>
    public let ownerId: String?
    /// <p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by
    ///       NFS clients using the access point.</p>
    public let posixUser: PosixUser?
    /// <p>The directory on the Amazon EFS file system that the access point exposes as the root directory to NFS clients using the access point.</p>
    public let rootDirectory: RootDirectory?
    /// <p>The tags associated with the access point, presented as an array of Tag objects.</p>
    public let tags: [Tag]?

    public init (
        accessPointArn: String? = nil,
        accessPointId: String? = nil,
        clientToken: String? = nil,
        fileSystemId: String? = nil,
        lifeCycleState: LifeCycleState? = nil,
        name: String? = nil,
        ownerId: String? = nil,
        posixUser: PosixUser? = nil,
        rootDirectory: RootDirectory? = nil,
        tags: [Tag]? = nil
    )
    {
        self.accessPointArn = accessPointArn
        self.accessPointId = accessPointId
        self.clientToken = clientToken
        self.fileSystemId = fileSystemId
        self.lifeCycleState = lifeCycleState
        self.name = name
        self.ownerId = ownerId
        self.posixUser = posixUser
        self.rootDirectory = rootDirectory
        self.tags = tags
    }
}

extension CreateAccessPointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccessPointOutputResponse(accessPointArn: \(String(describing: accessPointArn)), accessPointId: \(String(describing: accessPointId)), clientToken: \(String(describing: clientToken)), fileSystemId: \(String(describing: fileSystemId)), lifeCycleState: \(String(describing: lifeCycleState)), name: \(String(describing: name)), ownerId: \(String(describing: ownerId)), posixUser: \(String(describing: posixUser)), rootDirectory: \(String(describing: rootDirectory)), tags: \(String(describing: tags)))"}
}