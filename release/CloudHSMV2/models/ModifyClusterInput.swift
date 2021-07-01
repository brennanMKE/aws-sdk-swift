// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyClusterInput: Equatable {
    /// <p>A policy that defines how the service retains backups.</p>
    public let backupRetentionPolicy: BackupRetentionPolicy?
    /// <p>The identifier (ID) of the cluster that you want to modify. To find the cluster ID, use
    ///         <a>DescribeClusters</a>.</p>
    public let clusterId: String?

    public init (
        backupRetentionPolicy: BackupRetentionPolicy? = nil,
        clusterId: String? = nil
    )
    {
        self.backupRetentionPolicy = backupRetentionPolicy
        self.clusterId = clusterId
    }
}

extension ModifyClusterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyClusterInput(backupRetentionPolicy: \(String(describing: backupRetentionPolicy)), clusterId: \(String(describing: clusterId)))"}
}