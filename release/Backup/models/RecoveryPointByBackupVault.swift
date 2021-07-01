// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains detailed information about the recovery points stored in a backup vault.</p>
public struct RecoveryPointByBackupVault: Equatable {
    /// <p>The size, in bytes, of a backup.</p>
    public let backupSizeInBytes: Int?
    /// <p>An ARN that uniquely identifies a backup vault; for example,
    ///             <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    public let backupVaultArn: String?
    /// <p>The name of a logical container where backups are stored. Backup vaults are identified
    ///          by names that are unique to the account used to create them and the AWS Region where they
    ///          are created. They consist of lowercase letters, numbers, and hyphens.</p>
    public let backupVaultName: String?
    /// <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    ///             <code>MoveToColdStorageAt</code> timestamps.</p>
    public let calculatedLifecycle: CalculatedLifecycle?
    /// <p>The date and time a job to restore a recovery point is completed, in Unix format and
    ///          Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    ///          milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    ///          12:11:30.087 AM.</p>
    public let completionDate: Date?
    /// <p>Contains identifying information about the creation of a recovery point, including the
    ///             <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    ///          and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>
    public let createdBy: RecoveryPointCreator?
    /// <p>The date and time a recovery point is created, in Unix format and Coordinated Universal
    ///          Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    ///          example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    ///          AM.</p>
    public let creationDate: Date?
    /// <p>The server-side encryption key that is used to protect your backups; for example,
    ///             <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    public let encryptionKeyArn: String?
    /// <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    ///             <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    public let iamRoleArn: String?
    /// <p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
    ///          encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>
    public let isEncrypted: Bool
    /// <p>The date and time a recovery point was last restored, in Unix format and Coordinated
    ///          Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
    ///          milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    ///          12:11:30.087 AM.</p>
    public let lastRestoreTime: Date?
    /// <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    ///          it expires. AWS Backup transitions and expires backups automatically according to the
    ///          lifecycle that you define. </p>
    ///          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    ///          days. Therefore, the “expire after days” setting must be 90 days greater than the
    ///          “transition to cold after days” setting. The “transition to cold after days” setting cannot
    ///          be changed after a backup has been transitioned to cold. </p>
    ///          <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>
    public let lifecycle: Lifecycle?
    /// <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    ///             <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    public let recoveryPointArn: String?
    /// <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    ///          resource type.</p>
    public let resourceArn: String?
    /// <p>The type of AWS resource saved as a recovery point; for example, an Amazon Elastic Block
    ///          Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.
    ///          For VSS Windows backups, the only supported resource type is Amazon EC2.</p>
    public let resourceType: String?
    /// <p>The backup vault where the recovery point was originally copied from. If the recovery
    ///          point is restored to the same account this value will be <code>null</code>.</p>
    public let sourceBackupVaultArn: String?
    /// <p>A status code specifying the state of the recovery point.</p>
    public let status: RecoveryPointStatus?

    public init (
        backupSizeInBytes: Int? = nil,
        backupVaultArn: String? = nil,
        backupVaultName: String? = nil,
        calculatedLifecycle: CalculatedLifecycle? = nil,
        completionDate: Date? = nil,
        createdBy: RecoveryPointCreator? = nil,
        creationDate: Date? = nil,
        encryptionKeyArn: String? = nil,
        iamRoleArn: String? = nil,
        isEncrypted: Bool = false,
        lastRestoreTime: Date? = nil,
        lifecycle: Lifecycle? = nil,
        recoveryPointArn: String? = nil,
        resourceArn: String? = nil,
        resourceType: String? = nil,
        sourceBackupVaultArn: String? = nil,
        status: RecoveryPointStatus? = nil
    )
    {
        self.backupSizeInBytes = backupSizeInBytes
        self.backupVaultArn = backupVaultArn
        self.backupVaultName = backupVaultName
        self.calculatedLifecycle = calculatedLifecycle
        self.completionDate = completionDate
        self.createdBy = createdBy
        self.creationDate = creationDate
        self.encryptionKeyArn = encryptionKeyArn
        self.iamRoleArn = iamRoleArn
        self.isEncrypted = isEncrypted
        self.lastRestoreTime = lastRestoreTime
        self.lifecycle = lifecycle
        self.recoveryPointArn = recoveryPointArn
        self.resourceArn = resourceArn
        self.resourceType = resourceType
        self.sourceBackupVaultArn = sourceBackupVaultArn
        self.status = status
    }
}

extension RecoveryPointByBackupVault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RecoveryPointByBackupVault(backupSizeInBytes: \(String(describing: backupSizeInBytes)), backupVaultArn: \(String(describing: backupVaultArn)), backupVaultName: \(String(describing: backupVaultName)), calculatedLifecycle: \(String(describing: calculatedLifecycle)), completionDate: \(String(describing: completionDate)), createdBy: \(String(describing: createdBy)), creationDate: \(String(describing: creationDate)), encryptionKeyArn: \(String(describing: encryptionKeyArn)), iamRoleArn: \(String(describing: iamRoleArn)), isEncrypted: \(String(describing: isEncrypted)), lastRestoreTime: \(String(describing: lastRestoreTime)), lifecycle: \(String(describing: lifecycle)), recoveryPointArn: \(String(describing: recoveryPointArn)), resourceArn: \(String(describing: resourceArn)), resourceType: \(String(describing: resourceType)), sourceBackupVaultArn: \(String(describing: sourceBackupVaultArn)), status: \(String(describing: status)))"}
}