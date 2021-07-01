// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveSchemaVersionMetadataInput: Equatable {
    /// <p>The value of the metadata key.</p>
    public let metadataKeyValue: MetadataKeyValuePair?
    /// <p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    public let schemaId: SchemaId?
    /// <p>The unique version ID of the schema version.</p>
    public let schemaVersionId: String?
    /// <p>The version number of the schema.</p>
    public let schemaVersionNumber: SchemaVersionNumber?

    public init (
        metadataKeyValue: MetadataKeyValuePair? = nil,
        schemaId: SchemaId? = nil,
        schemaVersionId: String? = nil,
        schemaVersionNumber: SchemaVersionNumber? = nil
    )
    {
        self.metadataKeyValue = metadataKeyValue
        self.schemaId = schemaId
        self.schemaVersionId = schemaVersionId
        self.schemaVersionNumber = schemaVersionNumber
    }
}

extension RemoveSchemaVersionMetadataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveSchemaVersionMetadataInput(metadataKeyValue: \(String(describing: metadataKeyValue)), schemaId: \(String(describing: schemaId)), schemaVersionId: \(String(describing: schemaVersionId)), schemaVersionNumber: \(String(describing: schemaVersionNumber)))"}
}