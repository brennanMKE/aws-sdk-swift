// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateOpsMetadataInput: Equatable {
    /// <p>The metadata keys to delete from the OpsMetadata object. </p>
    public let keysToDelete: [String]?
    /// <p>Metadata to add to an OpsMetadata object.</p>
    public let metadataToUpdate: [String:MetadataValue]?
    /// <p>The Amazon Resoure Name (ARN) of the OpsMetadata Object to update.</p>
    public let opsMetadataArn: String?

    public init (
        keysToDelete: [String]? = nil,
        metadataToUpdate: [String:MetadataValue]? = nil,
        opsMetadataArn: String? = nil
    )
    {
        self.keysToDelete = keysToDelete
        self.metadataToUpdate = metadataToUpdate
        self.opsMetadataArn = opsMetadataArn
    }
}

extension UpdateOpsMetadataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateOpsMetadataInput(keysToDelete: \(String(describing: keysToDelete)), metadataToUpdate: \(String(describing: metadataToUpdate)), opsMetadataArn: \(String(describing: opsMetadataArn)))"}
}