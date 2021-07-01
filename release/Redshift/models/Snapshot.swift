// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a snapshot.</p>
public struct Snapshot: Equatable {
    /// <p>A list of the AWS customer accounts authorized to restore the snapshot. Returns
    ///                 <code>null</code> if no accounts are authorized. Visible only to the snapshot owner.
    ///         </p>
    public let accountsWithRestoreAccess: [AccountWithRestoreAccess]?
    /// <p>The size of the incremental backup.</p>
    public let actualIncrementalBackupSizeInMegaBytes: Double
    /// <p>The Availability Zone in which the cluster was created.</p>
    public let availabilityZone: String?
    /// <p>The number of megabytes that have been transferred to the snapshot
    ///             backup.</p>
    public let backupProgressInMegaBytes: Double
    /// <p>The time (UTC) when the cluster was originally created.</p>
    public let clusterCreateTime: Date?
    /// <p>The identifier of the cluster for which the snapshot was taken.</p>
    public let clusterIdentifier: String?
    /// <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
    public let clusterVersion: String?
    /// <p>The number of megabytes per second being transferred to the snapshot backup.
    ///             Returns <code>0</code> for a completed backup. </p>
    public let currentBackupRateInMegaBytesPerSecond: Double
    /// <p>The name of the database that was created when the cluster was created.</p>
    public let dBName: String?
    /// <p>The amount of time an in-progress snapshot backup has been running, or the amount
    ///             of time it took a completed backup to finish.</p>
    public let elapsedTimeInSeconds: Int
    /// <p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>
    public let encrypted: Bool
    /// <p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys
    ///             of the source cluster. <code>true</code> indicates that the data is encrypted using HSM
    ///             keys.</p>
    public let encryptedWithHSM: Bool
    /// <p>The cluster version of the cluster used to create the snapshot. For example, 1.0.15503. </p>
    public let engineFullVersion: String?
    /// <p>An option that specifies whether to create the cluster with enhanced VPC routing
    ///             enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    ///             VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    ///             the Amazon Redshift Cluster Management Guide.</p>
    ///         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    ///         <p>Default: false</p>
    public let enhancedVpcRouting: Bool
    /// <p>The estimate of the time remaining before the snapshot backup will complete.
    ///             Returns <code>0</code> for a completed backup. </p>
    public let estimatedSecondsToCompletion: Int
    /// <p>The AWS Key Management Service (KMS) key ID of the encryption key that was used to
    ///             encrypt data in the cluster from which the snapshot was taken.</p>
    public let kmsKeyId: String?
    /// <p>The name of the maintenance track for the snapshot.</p>
    public let maintenanceTrackName: String?
    /// <p>The number of days until a manual snapshot will pass its retention period.</p>
    public let manualSnapshotRemainingDays: Int?
    /// <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    ///             snapshot is retained indefinitely. </p>
    ///
    ///         <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    public let manualSnapshotRetentionPeriod: Int?
    /// <p>The master user name for the cluster.</p>
    public let masterUsername: String?
    /// <p>The node type of the nodes in the cluster.</p>
    public let nodeType: String?
    /// <p>The number of nodes in the cluster.</p>
    public let numberOfNodes: Int
    /// <p>For manual snapshots, the AWS customer account used to create or copy the snapshot.
    ///             For automatic snapshots, the owner of the cluster. The owner can perform all snapshot
    ///             actions, such as sharing a manual snapshot.</p>
    public let ownerAccount: String?
    /// <p>The port that the cluster is listening on.</p>
    public let port: Int
    /// <p>The list of node types that this cluster snapshot is able to restore
    ///             into.</p>
    public let restorableNodeTypes: [String]?
    /// <p>The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a
    ///             copy of the cluster data as of this exact time.</p>
    public let snapshotCreateTime: Date?
    /// <p>The snapshot identifier that is provided in the request.</p>
    public let snapshotIdentifier: String?
    /// <p>A timestamp representing the start of the retention period for the snapshot.</p>
    public let snapshotRetentionStartTime: Date?
    /// <p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a>
    ///             and <a>CopyClusterSnapshot</a> are of type "manual". </p>
    public let snapshotType: String?
    /// <p>The source region from which the snapshot was copied.</p>
    public let sourceRegion: String?
    /// <p>The snapshot status. The value of the status depends on the API operation used: </p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as "creating". </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <a>DescribeClusterSnapshots</a> returns status as "creating",
    ///                     "available", "final snapshot", or "failed".</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <a>DeleteClusterSnapshot</a> returns status as "deleted".</p>
    ///             </li>
    ///          </ul>
    public let status: String?
    /// <p>The list of tags for the cluster snapshot.</p>
    public let tags: [Tag]?
    /// <p>The size of the complete set of backup data that would be used to restore the
    ///             cluster.</p>
    public let totalBackupSizeInMegaBytes: Double
    /// <p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC.
    ///             Otherwise, this field is not in the output.</p>
    public let vpcId: String?

    public init (
        accountsWithRestoreAccess: [AccountWithRestoreAccess]? = nil,
        actualIncrementalBackupSizeInMegaBytes: Double = 0.0,
        availabilityZone: String? = nil,
        backupProgressInMegaBytes: Double = 0.0,
        clusterCreateTime: Date? = nil,
        clusterIdentifier: String? = nil,
        clusterVersion: String? = nil,
        currentBackupRateInMegaBytesPerSecond: Double = 0.0,
        dBName: String? = nil,
        elapsedTimeInSeconds: Int = 0,
        encrypted: Bool = false,
        encryptedWithHSM: Bool = false,
        engineFullVersion: String? = nil,
        enhancedVpcRouting: Bool = false,
        estimatedSecondsToCompletion: Int = 0,
        kmsKeyId: String? = nil,
        maintenanceTrackName: String? = nil,
        manualSnapshotRemainingDays: Int? = nil,
        manualSnapshotRetentionPeriod: Int? = nil,
        masterUsername: String? = nil,
        nodeType: String? = nil,
        numberOfNodes: Int = 0,
        ownerAccount: String? = nil,
        port: Int = 0,
        restorableNodeTypes: [String]? = nil,
        snapshotCreateTime: Date? = nil,
        snapshotIdentifier: String? = nil,
        snapshotRetentionStartTime: Date? = nil,
        snapshotType: String? = nil,
        sourceRegion: String? = nil,
        status: String? = nil,
        tags: [Tag]? = nil,
        totalBackupSizeInMegaBytes: Double = 0.0,
        vpcId: String? = nil
    )
    {
        self.accountsWithRestoreAccess = accountsWithRestoreAccess
        self.actualIncrementalBackupSizeInMegaBytes = actualIncrementalBackupSizeInMegaBytes
        self.availabilityZone = availabilityZone
        self.backupProgressInMegaBytes = backupProgressInMegaBytes
        self.clusterCreateTime = clusterCreateTime
        self.clusterIdentifier = clusterIdentifier
        self.clusterVersion = clusterVersion
        self.currentBackupRateInMegaBytesPerSecond = currentBackupRateInMegaBytesPerSecond
        self.dBName = dBName
        self.elapsedTimeInSeconds = elapsedTimeInSeconds
        self.encrypted = encrypted
        self.encryptedWithHSM = encryptedWithHSM
        self.engineFullVersion = engineFullVersion
        self.enhancedVpcRouting = enhancedVpcRouting
        self.estimatedSecondsToCompletion = estimatedSecondsToCompletion
        self.kmsKeyId = kmsKeyId
        self.maintenanceTrackName = maintenanceTrackName
        self.manualSnapshotRemainingDays = manualSnapshotRemainingDays
        self.manualSnapshotRetentionPeriod = manualSnapshotRetentionPeriod
        self.masterUsername = masterUsername
        self.nodeType = nodeType
        self.numberOfNodes = numberOfNodes
        self.ownerAccount = ownerAccount
        self.port = port
        self.restorableNodeTypes = restorableNodeTypes
        self.snapshotCreateTime = snapshotCreateTime
        self.snapshotIdentifier = snapshotIdentifier
        self.snapshotRetentionStartTime = snapshotRetentionStartTime
        self.snapshotType = snapshotType
        self.sourceRegion = sourceRegion
        self.status = status
        self.tags = tags
        self.totalBackupSizeInMegaBytes = totalBackupSizeInMegaBytes
        self.vpcId = vpcId
    }
}

extension Snapshot: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Snapshot(accountsWithRestoreAccess: \(String(describing: accountsWithRestoreAccess)), actualIncrementalBackupSizeInMegaBytes: \(String(describing: actualIncrementalBackupSizeInMegaBytes)), availabilityZone: \(String(describing: availabilityZone)), backupProgressInMegaBytes: \(String(describing: backupProgressInMegaBytes)), clusterCreateTime: \(String(describing: clusterCreateTime)), clusterIdentifier: \(String(describing: clusterIdentifier)), clusterVersion: \(String(describing: clusterVersion)), currentBackupRateInMegaBytesPerSecond: \(String(describing: currentBackupRateInMegaBytesPerSecond)), dBName: \(String(describing: dBName)), elapsedTimeInSeconds: \(String(describing: elapsedTimeInSeconds)), encrypted: \(String(describing: encrypted)), encryptedWithHSM: \(String(describing: encryptedWithHSM)), engineFullVersion: \(String(describing: engineFullVersion)), enhancedVpcRouting: \(String(describing: enhancedVpcRouting)), estimatedSecondsToCompletion: \(String(describing: estimatedSecondsToCompletion)), kmsKeyId: \(String(describing: kmsKeyId)), maintenanceTrackName: \(String(describing: maintenanceTrackName)), manualSnapshotRemainingDays: \(String(describing: manualSnapshotRemainingDays)), manualSnapshotRetentionPeriod: \(String(describing: manualSnapshotRetentionPeriod)), masterUsername: \(String(describing: masterUsername)), nodeType: \(String(describing: nodeType)), numberOfNodes: \(String(describing: numberOfNodes)), ownerAccount: \(String(describing: ownerAccount)), port: \(String(describing: port)), restorableNodeTypes: \(String(describing: restorableNodeTypes)), snapshotCreateTime: \(String(describing: snapshotCreateTime)), snapshotIdentifier: \(String(describing: snapshotIdentifier)), snapshotRetentionStartTime: \(String(describing: snapshotRetentionStartTime)), snapshotType: \(String(describing: snapshotType)), sourceRegion: \(String(describing: sourceRegion)), status: \(String(describing: status)), tags: \(String(describing: tags)), totalBackupSizeInMegaBytes: \(String(describing: totalBackupSizeInMegaBytes)), vpcId: \(String(describing: vpcId)))"}
}