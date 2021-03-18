// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the description of the backup created for the table.</p>
public struct BackupDescription: Equatable {
    /// <p>Contains the details of the backup created for the table. </p>
    public let backupDetails: BackupDetails?
    /// <p>Contains the details of the table when the backup was created. </p>
    public let sourceTableDetails: SourceTableDetails?
    /// <p>Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.</p>
    public let sourceTableFeatureDetails: SourceTableFeatureDetails?

    public init (
        backupDetails: BackupDetails? = nil,
        sourceTableDetails: SourceTableDetails? = nil,
        sourceTableFeatureDetails: SourceTableFeatureDetails? = nil
    )
    {
        self.backupDetails = backupDetails
        self.sourceTableDetails = sourceTableDetails
        self.sourceTableFeatureDetails = sourceTableFeatureDetails
    }
}
