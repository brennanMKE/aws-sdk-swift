// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a snapshot.</p>
public struct Snapshot: Equatable {
    /// <p>The data encryption key identifier for the snapshot. This value is a unique identifier
    ///       that corresponds to the data encryption key that was used to encrypt the original volume or
    ///       snapshot copy. Because data encryption keys are inherited by volumes created from snapshots,
    ///       and vice versa, if snapshots share the same data encryption key identifier, then they belong
    ///       to the same volume/snapshot lineage. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
    public let dataEncryptionKeyId: String?
    /// <p>The description for the snapshot.</p>
    public let description: String?
    /// <p>Indicates whether the snapshot is encrypted.</p>
    public let encrypted: Bool
    /// <p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the
    ///       volume encryption key for the parent volume.</p>
    public let kmsKeyId: String?
    /// <p>The ARN of the AWS Outpost on which the snapshot is stored. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html">EBS Local Snapshot on Outposts</a> in the
    ///   		<i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    public let outpostArn: String?
    /// <p>The AWS owner alias, from an Amazon-maintained list (<code>amazon</code>). This is not
    ///       the user-configured AWS account alias set using the IAM console.</p>
    public let ownerAlias: String?
    /// <p>The AWS account ID of the EBS snapshot owner.</p>
    public let ownerId: String?
    /// <p>The progress of the snapshot, as a percentage.</p>
    public let progress: String?
    /// <p>The ID of the snapshot. Each snapshot receives a unique identifier when it is
    ///       created.</p>
    public let snapshotId: String?
    /// <p>The time stamp when the snapshot was initiated.</p>
    public let startTime: Date?
    /// <p>The snapshot state.</p>
    public let state: SnapshotState?
    /// <p>Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails
    ///       (for example, if the proper AWS Key Management Service (AWS KMS) permissions are not obtained) this field displays error
    ///       state details to help you diagnose why the error occurred. This parameter is only returned by
    ///       <a>DescribeSnapshots</a>.</p>
    public let stateMessage: String?
    /// <p>Any tags assigned to the snapshot.</p>
    public let tags: [Tag]?
    /// <p>The ID of the volume that was used to create the snapshot. Snapshots created by the <a>CopySnapshot</a> action have an arbitrary volume ID that should not be used for any
    ///       purpose.</p>
    public let volumeId: String?
    /// <p>The size of the volume, in GiB.</p>
    public let volumeSize: Int

    public init (
        dataEncryptionKeyId: String? = nil,
        description: String? = nil,
        encrypted: Bool = false,
        kmsKeyId: String? = nil,
        outpostArn: String? = nil,
        ownerAlias: String? = nil,
        ownerId: String? = nil,
        progress: String? = nil,
        snapshotId: String? = nil,
        startTime: Date? = nil,
        state: SnapshotState? = nil,
        stateMessage: String? = nil,
        tags: [Tag]? = nil,
        volumeId: String? = nil,
        volumeSize: Int = 0
    )
    {
        self.dataEncryptionKeyId = dataEncryptionKeyId
        self.description = description
        self.encrypted = encrypted
        self.kmsKeyId = kmsKeyId
        self.outpostArn = outpostArn
        self.ownerAlias = ownerAlias
        self.ownerId = ownerId
        self.progress = progress
        self.snapshotId = snapshotId
        self.startTime = startTime
        self.state = state
        self.stateMessage = stateMessage
        self.tags = tags
        self.volumeId = volumeId
        self.volumeSize = volumeSize
    }
}

extension Snapshot: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Snapshot(dataEncryptionKeyId: \(String(describing: dataEncryptionKeyId)), description: \(String(describing: description)), encrypted: \(String(describing: encrypted)), kmsKeyId: \(String(describing: kmsKeyId)), outpostArn: \(String(describing: outpostArn)), ownerAlias: \(String(describing: ownerAlias)), ownerId: \(String(describing: ownerId)), progress: \(String(describing: progress)), snapshotId: \(String(describing: snapshotId)), startTime: \(String(describing: startTime)), state: \(String(describing: state)), stateMessage: \(String(describing: stateMessage)), tags: \(String(describing: tags)), volumeId: \(String(describing: volumeId)), volumeSize: \(String(describing: volumeSize)))"}
}