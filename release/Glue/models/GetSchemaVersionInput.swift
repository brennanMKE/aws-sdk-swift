// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSchemaVersionInput: Equatable {
    /// <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    /// 	        <ul>
    ///             <li>
    ///                <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    ///             </li>
    ///             <li>
    ///                <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    ///             </li>
    ///          </ul>
    public let schemaId: SchemaId?
    /// <p>The <code>SchemaVersionId</code> of the schema version. This field is required for fetching by schema ID. Either this or the <code>SchemaId</code> wrapper has to be provided.</p>
    public let schemaVersionId: String?
    /// <p>The version number of the schema.</p>
    public let schemaVersionNumber: SchemaVersionNumber?

    public init (
        schemaId: SchemaId? = nil,
        schemaVersionId: String? = nil,
        schemaVersionNumber: SchemaVersionNumber? = nil
    )
    {
        self.schemaId = schemaId
        self.schemaVersionId = schemaVersionId
        self.schemaVersionNumber = schemaVersionNumber
    }
}

extension GetSchemaVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSchemaVersionInput(schemaId: \(String(describing: schemaId)), schemaVersionId: \(String(describing: schemaVersionId)), schemaVersionNumber: \(String(describing: schemaVersionNumber)))"}
}