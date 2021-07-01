// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the properties of the access that was specified.</p>
public struct DescribedAccess: Equatable {
    /// <p>A unique identifier that might be required when you assume a role in another account.
    ///       Think of the <code>ExternalID</code> as a group membership mechanism that uses a unique
    ///       identifier (often a SID, but could be a group name or something else) as a basis. If the
    ///       administrator of the account to which the role belongs provided you with an external ID, then
    ///       provide that value in the <code>ExternalId</code> parameter. A cross-account role is usually
    ///       set up to trust everyone in an account. Therefore, the administrator of the trusting account
    ///       might send an external ID to the administrator of the trusted account. That way, only someone
    ///       with the ID can assume the role, rather than everyone in the account.</p>
    ///          <p>The regex used to validate this parameter is a string of characters consisting of
    ///       uppercase and lowercase alphanumeric characters with no spaces. You can also include
    ///       underscores or any of the following characters: =,.@:/-</p>
    public let externalId: String?
    /// <p>Specifies the landing directory (or folder), which is the location that files are written
    ///       to or read from in an Amazon S3 bucket, for the described access.</p>
    public let homeDirectory: String?
    /// <p>Specifies the logical directory mappings that specify what Amazon S3 or Amazon EFS paths
    ///       and keys should be visible to the associated access and how you want to make them visible. You
    ///       must specify the "<code>Entry</code>" and "<code>Target</code>" pair, where <code>Entry</code>
    ///       shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or EFS
    ///       path. If you only specify a target, it will be displayed as is. You also must ensure that your
    ///       AWS Identity and Access Management (IAM) role provides access to paths in
    ///       <code>Target</code>.</p>
    ///
    ///          <p>In most cases, you can use this value instead of the scope-down policy to lock down the
    ///       associated access to the designated home directory ("<code>chroot</code>"). To do this, you
    ///       can set <code>Entry</code> to '/' and set <code>Target</code> to the
    ///         <code>HomeDirectory</code> parameter value.</p>
    public let homeDirectoryMappings: [HomeDirectoryMapEntry]?
    /// <p>The type of landing directory (folder) that you want your users' home directory to be when
    ///       they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute
    ///       Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it to
    ///         <code>LOGICAL</code>, you must provide mappings in the <code>HomeDirectoryMappings</code>
    ///       for how you want to make Amazon S3 paths visible to your users.</p>
    public let homeDirectoryType: HomeDirectoryType?
    /// <p>A scope-down policy for your user so that you can use the same AWS Identity and Access
    ///       Management (IAM) role across multiple users. This policy scopes down user access to portions
    ///       of their Amazon S3 bucket. Variables that you can use inside this policy include
    ///         <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and
    ///         <code>${Transfer:HomeBucket}</code>.</p>
    public let policy: String?
    /// <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    ///       (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    ///       your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    ///       files and directories in your file system determine the level of access your users get when
    ///       transferring files into and out of your Amazon EFS file systems.</p>
    public let posixProfile: PosixProfile?
    /// <p>The IAM role that controls access to your Amazon S3 bucket from the specified associated
    ///       access. The policies attached to this role will determine the level of access that you want to
    ///       provide the associated access when transferring files into and out of your Amazon S3 bucket or
    ///       buckets. The IAM role should also contain a trust relationship that allows a server to access
    ///       your resources when servicing transfer requests for the associated access.</p>
    public let role: String?

    public init (
        externalId: String? = nil,
        homeDirectory: String? = nil,
        homeDirectoryMappings: [HomeDirectoryMapEntry]? = nil,
        homeDirectoryType: HomeDirectoryType? = nil,
        policy: String? = nil,
        posixProfile: PosixProfile? = nil,
        role: String? = nil
    )
    {
        self.externalId = externalId
        self.homeDirectory = homeDirectory
        self.homeDirectoryMappings = homeDirectoryMappings
        self.homeDirectoryType = homeDirectoryType
        self.policy = policy
        self.posixProfile = posixProfile
        self.role = role
    }
}

extension DescribedAccess: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribedAccess(externalId: \(String(describing: externalId)), homeDirectory: \(String(describing: homeDirectory)), homeDirectoryMappings: \(String(describing: homeDirectoryMappings)), homeDirectoryType: \(String(describing: homeDirectoryType)), policy: \(String(describing: policy)), posixProfile: \(String(describing: posixProfile)), role: \(String(describing: role)))"}
}