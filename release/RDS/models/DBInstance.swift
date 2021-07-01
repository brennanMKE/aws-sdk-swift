// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains the details of an Amazon RDS DB instance.
///       </p>
///          <p>This data type is used as a response element in the <code>DescribeDBInstances</code> action.
///       </p>
public struct DBInstance: Equatable {
    /// <p>Specifies the allocated storage size specified in gibibytes.</p>
    public let allocatedStorage: Int
    /// <p>
    ///             The AWS Identity and Access Management (IAM) roles associated with the DB instance.
    ///         </p>
    public let associatedRoles: [DBInstanceRole]?
    /// <p>A value that indicates that minor version patches are applied automatically.</p>
    public let autoMinorVersionUpgrade: Bool
    /// <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
    public let availabilityZone: String?
    /// <p>The Amazon Resource Name (ARN) of the recovery point in AWS Backup.</p>
    public let awsBackupRecoveryPointArn: String?
    /// <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    public let backupRetentionPeriod: Int
    /// <p>The identifier of the CA certificate for this DB instance.</p>
    public let cACertificateIdentifier: String?
    /// <p>If present, specifies the name of the character set that this instance is associated with.</p>
    public let characterSetName: String?
    /// <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
    ///          <p>
    ///             <b>Amazon Aurora</b>
    ///          </p>
    ///          <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
    ///             value for an Aurora DB instance has no effect on the DB cluster setting. For more
    ///             information, see <code>DBCluster</code>.</p>
    public let copyTagsToSnapshot: Bool
    /// <p>Specifies whether a customer-owned IP address (CoIP) is enabled for an RDS on Outposts DB instance.</p>
    ///         <p>A <i>CoIP </i>provides local or external connectivity to resources in
    ///             your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    ///             provide lower latency for connections to the DB instance from outside of its virtual
    ///             private cloud (VPC) on your local network.</p>
    ///         <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on AWS Outposts</a>
    ///             in the <i>Amazon RDS User Guide</i>.</p>
    ///         <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing">Customer-owned IP addresses</a>
    ///             in the <i>AWS Outposts User Guide</i>.</p>
    public let customerOwnedIpEnabled: Bool?
    /// <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
    public let dBClusterIdentifier: String?
    /// <p>The Amazon Resource Name (ARN) for the DB instance.</p>
    public let dBInstanceArn: String?
    /// <p>The list of replicated automated backups associated with the DB instance.</p>
    public let dBInstanceAutomatedBackupsReplications: [DBInstanceAutomatedBackupsReplication]?
    /// <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
    public let dBInstanceClass: String?
    /// <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
    public let dBInstanceIdentifier: String?
    /// <p>Specifies the current state of this database.</p>
    ///          <p>For information about DB instance statuses, see
    ///           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/accessing-monitoring.html#Overview.DBInstance.Status">Viewing DB instance status</a>
    ///           in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let dBInstanceStatus: String?
    /// <p>The meaning of this parameter differs according to the database engine you use.</p>
    ///          <p>
    ///             <b>MySQL, MariaDB, SQL Server, PostgreSQL</b>
    ///          </p>
    ///          <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p>
    ///          <p>Type: String</p>
    ///          <p>
    ///             <b>Oracle</b>
    ///          </p>
    ///          <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>
    public let dBName: String?
    /// <p>Provides the list of DB parameter groups applied to this DB instance.</p>
    public let dBParameterGroups: [DBParameterGroupStatus]?
    /// <p>
    ///         A list of DB security group elements containing
    ///         <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements.
    ///         </p>
    public let dBSecurityGroups: [DBSecurityGroupMembership]?
    /// <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
    public let dBSubnetGroup: DBSubnetGroup?
    /// <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
    public let dbInstancePort: Int
    /// <p>The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log
    ///           entries whenever the AWS KMS customer master key (CMK) for the DB instance is accessed.</p>
    public let dbiResourceId: String?
    /// <p>Indicates if the DB instance has deletion protection enabled.
    ///             The database can't be deleted when deletion protection is enabled.
    ///             For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    ///                 Deleting a DB Instance</a>.
    ///         </p>
    public let deletionProtection: Bool
    /// <p>The Active Directory Domain membership records associated with the DB instance.</p>
    public let domainMemberships: [DomainMembership]?
    /// <p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p>
    ///         <p>Log types vary by DB engine. For information about the log types for each DB engine, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html">Amazon RDS Database Log Files</a> in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let enabledCloudwatchLogsExports: [String]?
    /// <p>Specifies the connection endpoint.</p>
    public let endpoint: Endpoint?
    /// <p>The name of the database engine to be used for this DB instance.</p>
    public let engine: String?
    /// <p>Indicates the database engine version.</p>
    public let engineVersion: String?
    /// <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
    public let enhancedMonitoringResourceArn: String?
    /// <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
    ///
    ///          <p>IAM database authentication can be enabled for the following database engines</p>
    ///          <ul>
    ///             <li>
    ///                <p>For MySQL 5.6, minor version 5.6.34 or higher</p>
    ///             </li>
    ///             <li>
    ///                <p>For MySQL 5.7, minor version 5.7.16 or higher</p>
    ///             </li>
    ///             <li>
    ///                <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p>
    ///             </li>
    ///          </ul>
    public let iAMDatabaseAuthenticationEnabled: Bool
    /// <p>Provides the date and time the DB instance was created.</p>
    public let instanceCreateTime: Date?
    /// <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
    public let iops: Int?
    /// <p>
    ///             If <code>StorageEncrypted</code> is true, the AWS KMS key identifier
    ///             for the encrypted DB instance.
    ///         </p>
    ///          <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
    public let kmsKeyId: String?
    /// <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
    public let latestRestorableTime: Date?
    /// <p>License model information for this DB instance.</p>
    public let licenseModel: String?
    /// <p>Specifies the listener connection endpoint for SQL Server Always On.</p>
    public let listenerEndpoint: Endpoint?
    /// <p>Contains the master username for the DB instance.</p>
    public let masterUsername: String?
    /// <p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    public let maxAllocatedStorage: Int?
    /// <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
    public let monitoringInterval: Int?
    /// <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>
    public let monitoringRoleArn: String?
    /// <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
    public let multiAZ: Bool
    /// <p>The name of the NCHAR character set for the Oracle DB instance. This character set specifies the
    ///             Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
    ///         </p>
    public let ncharCharacterSetName: String?
    /// <p>Provides the list of option group memberships for this DB instance.</p>
    public let optionGroupMemberships: [OptionGroupMembership]?
    /// <p>A value that specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
    public let pendingModifiedValues: PendingModifiedValues?
    /// <p>True if Performance Insights is enabled for the DB instance, and otherwise false.</p>
    public let performanceInsightsEnabled: Bool?
    /// <p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
    ///         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
    public let performanceInsightsKMSKeyId: String?
    /// <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>
    public let performanceInsightsRetentionPeriod: Int?
    /// <p>
    ///         Specifies the daily time range during which automated backups are
    ///         created if automated backups are enabled, as determined
    ///         by the <code>BackupRetentionPeriod</code>.
    ///         </p>
    public let preferredBackupWindow: String?
    /// <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    public let preferredMaintenanceWindow: String?
    /// <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    public let processorFeatures: [ProcessorFeature]?
    /// <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance
    ///       after a failure of the existing primary instance. For more information,
    ///       see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance">
    ///           Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.
    ///     </p>
    public let promotionTier: Int?
    /// <p>Specifies the accessibility options for the DB instance.</p>
    ///          <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC,
    ///           and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses,
    ///           and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    ///          <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    ///          <p>For more information, see <a>CreateDBInstance</a>.</p>
    public let publiclyAccessible: Bool
    /// <p>Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance
    ///             is replicated as a read replica. For example, when you create an Aurora read replica of
    ///             an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is
    ///             shown. This output does not contain information about cross region Aurora read
    ///             replicas.</p>
    ///         <note>
    ///             <p>Currently, each RDS DB instance can have only one Aurora read replica.</p>
    ///         </note>
    public let readReplicaDBClusterIdentifiers: [String]?
    /// <p>Contains one or more identifiers of the read replicas associated with this DB
    ///             instance.</p>
    public let readReplicaDBInstanceIdentifiers: [String]?
    /// <p>Contains the identifier of the source DB instance if this DB instance is a read
    ///             replica.</p>
    public let readReplicaSourceDBInstanceIdentifier: String?
    /// <p>The open mode of an Oracle read replica. The default is <code>open-read-only</code>.
    ///             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Working with Oracle Read Replicas for Amazon RDS</a>
    ///             in the <i>Amazon RDS User Guide</i>.</p>
    ///         <note>
    ///             <p>This attribute is only supported in RDS for Oracle.</p>
    ///         </note>
    public let replicaMode: ReplicaMode?
    /// <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
    public let secondaryAvailabilityZone: String?
    /// <p>The status of a read replica. If the instance isn't a read replica, this is
    ///             blank.</p>
    public let statusInfos: [DBInstanceStatusInfo]?
    /// <p>Specifies whether the DB instance is encrypted.</p>
    public let storageEncrypted: Bool
    /// <p>Specifies the storage type associated with DB instance.</p>
    public let storageType: String?
    /// <p>A list of tags.
    ///           For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let tagList: [Tag]?
    /// <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
    public let tdeCredentialArn: String?
    /// <p>The time zone of the DB instance.
    ///             In most cases, the <code>Timezone</code> element is empty.
    ///             <code>Timezone</code> content appears only for
    ///             Microsoft SQL Server DB instances
    ///             that were created with a time zone specified.
    ///         </p>
    public let timezone: String?
    /// <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
    public let vpcSecurityGroups: [VpcSecurityGroupMembership]?

    public init (
        allocatedStorage: Int = 0,
        associatedRoles: [DBInstanceRole]? = nil,
        autoMinorVersionUpgrade: Bool = false,
        availabilityZone: String? = nil,
        awsBackupRecoveryPointArn: String? = nil,
        backupRetentionPeriod: Int = 0,
        cACertificateIdentifier: String? = nil,
        characterSetName: String? = nil,
        copyTagsToSnapshot: Bool = false,
        customerOwnedIpEnabled: Bool? = nil,
        dBClusterIdentifier: String? = nil,
        dBInstanceArn: String? = nil,
        dBInstanceAutomatedBackupsReplications: [DBInstanceAutomatedBackupsReplication]? = nil,
        dBInstanceClass: String? = nil,
        dBInstanceIdentifier: String? = nil,
        dBInstanceStatus: String? = nil,
        dBName: String? = nil,
        dBParameterGroups: [DBParameterGroupStatus]? = nil,
        dBSecurityGroups: [DBSecurityGroupMembership]? = nil,
        dBSubnetGroup: DBSubnetGroup? = nil,
        dbInstancePort: Int = 0,
        dbiResourceId: String? = nil,
        deletionProtection: Bool = false,
        domainMemberships: [DomainMembership]? = nil,
        enabledCloudwatchLogsExports: [String]? = nil,
        endpoint: Endpoint? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        enhancedMonitoringResourceArn: String? = nil,
        iAMDatabaseAuthenticationEnabled: Bool = false,
        instanceCreateTime: Date? = nil,
        iops: Int? = nil,
        kmsKeyId: String? = nil,
        latestRestorableTime: Date? = nil,
        licenseModel: String? = nil,
        listenerEndpoint: Endpoint? = nil,
        masterUsername: String? = nil,
        maxAllocatedStorage: Int? = nil,
        monitoringInterval: Int? = nil,
        monitoringRoleArn: String? = nil,
        multiAZ: Bool = false,
        ncharCharacterSetName: String? = nil,
        optionGroupMemberships: [OptionGroupMembership]? = nil,
        pendingModifiedValues: PendingModifiedValues? = nil,
        performanceInsightsEnabled: Bool? = nil,
        performanceInsightsKMSKeyId: String? = nil,
        performanceInsightsRetentionPeriod: Int? = nil,
        preferredBackupWindow: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        processorFeatures: [ProcessorFeature]? = nil,
        promotionTier: Int? = nil,
        publiclyAccessible: Bool = false,
        readReplicaDBClusterIdentifiers: [String]? = nil,
        readReplicaDBInstanceIdentifiers: [String]? = nil,
        readReplicaSourceDBInstanceIdentifier: String? = nil,
        replicaMode: ReplicaMode? = nil,
        secondaryAvailabilityZone: String? = nil,
        statusInfos: [DBInstanceStatusInfo]? = nil,
        storageEncrypted: Bool = false,
        storageType: String? = nil,
        tagList: [Tag]? = nil,
        tdeCredentialArn: String? = nil,
        timezone: String? = nil,
        vpcSecurityGroups: [VpcSecurityGroupMembership]? = nil
    )
    {
        self.allocatedStorage = allocatedStorage
        self.associatedRoles = associatedRoles
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.awsBackupRecoveryPointArn = awsBackupRecoveryPointArn
        self.backupRetentionPeriod = backupRetentionPeriod
        self.cACertificateIdentifier = cACertificateIdentifier
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.customerOwnedIpEnabled = customerOwnedIpEnabled
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBInstanceArn = dBInstanceArn
        self.dBInstanceAutomatedBackupsReplications = dBInstanceAutomatedBackupsReplications
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBInstanceStatus = dBInstanceStatus
        self.dBName = dBName
        self.dBParameterGroups = dBParameterGroups
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroup = dBSubnetGroup
        self.dbInstancePort = dbInstancePort
        self.dbiResourceId = dbiResourceId
        self.deletionProtection = deletionProtection
        self.domainMemberships = domainMemberships
        self.enabledCloudwatchLogsExports = enabledCloudwatchLogsExports
        self.endpoint = endpoint
        self.engine = engine
        self.engineVersion = engineVersion
        self.enhancedMonitoringResourceArn = enhancedMonitoringResourceArn
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.instanceCreateTime = instanceCreateTime
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.latestRestorableTime = latestRestorableTime
        self.licenseModel = licenseModel
        self.listenerEndpoint = listenerEndpoint
        self.masterUsername = masterUsername
        self.maxAllocatedStorage = maxAllocatedStorage
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.ncharCharacterSetName = ncharCharacterSetName
        self.optionGroupMemberships = optionGroupMemberships
        self.pendingModifiedValues = pendingModifiedValues
        self.performanceInsightsEnabled = performanceInsightsEnabled
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.promotionTier = promotionTier
        self.publiclyAccessible = publiclyAccessible
        self.readReplicaDBClusterIdentifiers = readReplicaDBClusterIdentifiers
        self.readReplicaDBInstanceIdentifiers = readReplicaDBInstanceIdentifiers
        self.readReplicaSourceDBInstanceIdentifier = readReplicaSourceDBInstanceIdentifier
        self.replicaMode = replicaMode
        self.secondaryAvailabilityZone = secondaryAvailabilityZone
        self.statusInfos = statusInfos
        self.storageEncrypted = storageEncrypted
        self.storageType = storageType
        self.tagList = tagList
        self.tdeCredentialArn = tdeCredentialArn
        self.timezone = timezone
        self.vpcSecurityGroups = vpcSecurityGroups
    }
}

extension DBInstance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBInstance(allocatedStorage: \(String(describing: allocatedStorage)), associatedRoles: \(String(describing: associatedRoles)), autoMinorVersionUpgrade: \(String(describing: autoMinorVersionUpgrade)), availabilityZone: \(String(describing: availabilityZone)), awsBackupRecoveryPointArn: \(String(describing: awsBackupRecoveryPointArn)), backupRetentionPeriod: \(String(describing: backupRetentionPeriod)), cACertificateIdentifier: \(String(describing: cACertificateIdentifier)), characterSetName: \(String(describing: characterSetName)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), customerOwnedIpEnabled: \(String(describing: customerOwnedIpEnabled)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBInstanceArn: \(String(describing: dBInstanceArn)), dBInstanceAutomatedBackupsReplications: \(String(describing: dBInstanceAutomatedBackupsReplications)), dBInstanceClass: \(String(describing: dBInstanceClass)), dBInstanceIdentifier: \(String(describing: dBInstanceIdentifier)), dBInstanceStatus: \(String(describing: dBInstanceStatus)), dBName: \(String(describing: dBName)), dBParameterGroups: \(String(describing: dBParameterGroups)), dBSecurityGroups: \(String(describing: dBSecurityGroups)), dBSubnetGroup: \(String(describing: dBSubnetGroup)), dbInstancePort: \(String(describing: dbInstancePort)), dbiResourceId: \(String(describing: dbiResourceId)), deletionProtection: \(String(describing: deletionProtection)), domainMemberships: \(String(describing: domainMemberships)), enabledCloudwatchLogsExports: \(String(describing: enabledCloudwatchLogsExports)), endpoint: \(String(describing: endpoint)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), enhancedMonitoringResourceArn: \(String(describing: enhancedMonitoringResourceArn)), iAMDatabaseAuthenticationEnabled: \(String(describing: iAMDatabaseAuthenticationEnabled)), instanceCreateTime: \(String(describing: instanceCreateTime)), iops: \(String(describing: iops)), kmsKeyId: \(String(describing: kmsKeyId)), latestRestorableTime: \(String(describing: latestRestorableTime)), licenseModel: \(String(describing: licenseModel)), listenerEndpoint: \(String(describing: listenerEndpoint)), masterUsername: \(String(describing: masterUsername)), maxAllocatedStorage: \(String(describing: maxAllocatedStorage)), monitoringInterval: \(String(describing: monitoringInterval)), monitoringRoleArn: \(String(describing: monitoringRoleArn)), multiAZ: \(String(describing: multiAZ)), ncharCharacterSetName: \(String(describing: ncharCharacterSetName)), optionGroupMemberships: \(String(describing: optionGroupMemberships)), pendingModifiedValues: \(String(describing: pendingModifiedValues)), performanceInsightsEnabled: \(String(describing: performanceInsightsEnabled)), performanceInsightsKMSKeyId: \(String(describing: performanceInsightsKMSKeyId)), performanceInsightsRetentionPeriod: \(String(describing: performanceInsightsRetentionPeriod)), preferredBackupWindow: \(String(describing: preferredBackupWindow)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), processorFeatures: \(String(describing: processorFeatures)), promotionTier: \(String(describing: promotionTier)), publiclyAccessible: \(String(describing: publiclyAccessible)), readReplicaDBClusterIdentifiers: \(String(describing: readReplicaDBClusterIdentifiers)), readReplicaDBInstanceIdentifiers: \(String(describing: readReplicaDBInstanceIdentifiers)), readReplicaSourceDBInstanceIdentifier: \(String(describing: readReplicaSourceDBInstanceIdentifier)), replicaMode: \(String(describing: replicaMode)), secondaryAvailabilityZone: \(String(describing: secondaryAvailabilityZone)), statusInfos: \(String(describing: statusInfos)), storageEncrypted: \(String(describing: storageEncrypted)), storageType: \(String(describing: storageType)), tagList: \(String(describing: tagList)), tdeCredentialArn: \(String(describing: tdeCredentialArn)), timezone: \(String(describing: timezone)), vpcSecurityGroups: \(String(describing: vpcSecurityGroups)))"}
}