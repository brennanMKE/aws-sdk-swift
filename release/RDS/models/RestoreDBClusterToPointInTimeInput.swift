// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p></p>
public struct RestoreDBClusterToPointInTimeInput: Equatable {
    /// <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    ///             0.</p>
    ///         <note>
    ///             <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
    ///         </note>
    ///         <p>Default: 0</p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    ///             </li>
    ///          </ul>
    public let backtrackWindow: Int?
    /// <p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>
    public let copyTagsToSnapshot: Bool?
    /// <p>The name of the new DB cluster to be created.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    ///             </li>
    ///          </ul>
    public let dBClusterIdentifier: String?
    /// <p>The name of the DB cluster parameter group to associate with this DB cluster.
    ///             If this argument is omitted, the default DB cluster parameter group for the specified engine is used.</p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                 <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterParameterGroupName: String?
    /// <p>The DB subnet group name to use for the new DB cluster.</p>
    ///          <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    ///          <p>Example: <code>mySubnetgroup</code>
    ///          </p>
    public let dBSubnetGroupName: String?
    /// <p>A value that indicates whether the DB cluster has deletion protection enabled.
    ///             The database can't be deleted when deletion protection is enabled. By default,
    ///             deletion protection is disabled.
    ///         </p>
    public let deletionProtection: Bool?
    /// <p>Specify the Active Directory directory ID to restore the DB cluster in.
    ///           The domain must be created prior to this operation.
    ///       </p>
    ///          <p>
    ///         For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
    ///         For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos Authentication</a>
    ///         in the <i>Amazon Aurora User Guide</i>.
    ///       </p>
    public let domain: String?
    /// <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    public let domainIAMRoleName: String?
    /// <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values
    ///             in the list depend on the DB engine being used. For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    public let enableCloudwatchLogsExports: [String]?
    /// <p>A value that indicates whether to enable mapping of AWS Identity and Access
    ///             Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
    ///
    ///         <p>For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    ///                 IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
    ///          </p>
    public let enableIAMDatabaseAuthentication: Bool?
    /// <p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p>
    ///          <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
    ///           To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
    ///          <p>You can restore to a new DB cluster and encrypt the new DB cluster with a AWS KMS CMK that is different than the
    ///       AWS KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the AWS KMS CMK
    ///       identified by the <code>KmsKeyId</code> parameter.</p>
    ///          <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the source DB cluster.</p>
    ///             </li>
    ///             <li>
    ///                <p>If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted.</p>
    ///             </li>
    ///          </ul>
    ///
    ///          <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that isn't encrypted, then the restore request
    ///       is rejected.</p>
    public let kmsKeyId: String?
    /// <p>The name of the option group for the new DB cluster.</p>
    public let optionGroupName: String?
    /// <p>The port number on which the new DB cluster accepts connections.</p>
    ///          <p>Constraints: A value from <code>1150-65535</code>.
    ///       </p>
    ///          <p>Default: The default port for the engine.</p>
    public let port: Int?
    /// <p>The date and time to restore the DB cluster to.</p>
    ///          <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must be before the latest restorable time for the DB instance</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be specified if <code>UseLatestRestorableTime</code> parameter isn't provided</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///          <p>Example: <code>2015-03-07T23:45:00Z</code>
    ///          </p>
    public let restoreToTime: Date?
    /// <p>The type of restore to be performed. You can specify one of the following values:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>full-copy</code> - The new DB cluster is restored as a full copy of the
    ///                 source DB cluster.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>copy-on-write</code> - The new DB cluster is restored as a clone of the
    ///                 source DB cluster.</p>
    ///             </li>
    ///          </ul>
    ///         <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p>
    ///         <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is
    ///             restored as a full copy of the source DB cluster.</p>
    public let restoreType: String?
    /// <p>The identifier of the source DB cluster from which to restore.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must match the identifier of an existing DBCluster.</p>
    ///             </li>
    ///          </ul>
    public let sourceDBClusterIdentifier: String?
    /// <p>A list of tags.
    ///           For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let tags: [Tag]?
    /// <p>A value that indicates whether to restore the DB cluster to the latest
    ///             restorable backup time. By default, the DB cluster isn't restored to the latest
    ///             restorable backup time.
    ///       </p>
    ///          <p>Constraints: Can't be specified if <code>RestoreToTime</code> parameter is provided.</p>
    public let useLatestRestorableTime: Bool
    /// <p>A list of VPC security groups that the new DB cluster belongs to.</p>
    public let vpcSecurityGroupIds: [String]?

    public init (
        backtrackWindow: Int? = nil,
        copyTagsToSnapshot: Bool? = nil,
        dBClusterIdentifier: String? = nil,
        dBClusterParameterGroupName: String? = nil,
        dBSubnetGroupName: String? = nil,
        deletionProtection: Bool? = nil,
        domain: String? = nil,
        domainIAMRoleName: String? = nil,
        enableCloudwatchLogsExports: [String]? = nil,
        enableIAMDatabaseAuthentication: Bool? = nil,
        kmsKeyId: String? = nil,
        optionGroupName: String? = nil,
        port: Int? = nil,
        restoreToTime: Date? = nil,
        restoreType: String? = nil,
        sourceDBClusterIdentifier: String? = nil,
        tags: [Tag]? = nil,
        useLatestRestorableTime: Bool = false,
        vpcSecurityGroupIds: [String]? = nil
    )
    {
        self.backtrackWindow = backtrackWindow
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.kmsKeyId = kmsKeyId
        self.optionGroupName = optionGroupName
        self.port = port
        self.restoreToTime = restoreToTime
        self.restoreType = restoreType
        self.sourceDBClusterIdentifier = sourceDBClusterIdentifier
        self.tags = tags
        self.useLatestRestorableTime = useLatestRestorableTime
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }
}

extension RestoreDBClusterToPointInTimeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RestoreDBClusterToPointInTimeInput(backtrackWindow: \(String(describing: backtrackWindow)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterParameterGroupName: \(String(describing: dBClusterParameterGroupName)), dBSubnetGroupName: \(String(describing: dBSubnetGroupName)), deletionProtection: \(String(describing: deletionProtection)), domain: \(String(describing: domain)), domainIAMRoleName: \(String(describing: domainIAMRoleName)), enableCloudwatchLogsExports: \(String(describing: enableCloudwatchLogsExports)), enableIAMDatabaseAuthentication: \(String(describing: enableIAMDatabaseAuthentication)), kmsKeyId: \(String(describing: kmsKeyId)), optionGroupName: \(String(describing: optionGroupName)), port: \(String(describing: port)), restoreToTime: \(String(describing: restoreToTime)), restoreType: \(String(describing: restoreType)), sourceDBClusterIdentifier: \(String(describing: sourceDBClusterIdentifier)), tags: \(String(describing: tags)), useLatestRestorableTime: \(String(describing: useLatestRestorableTime)), vpcSecurityGroupIds: \(String(describing: vpcSecurityGroupIds)))"}
}