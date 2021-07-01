// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterSchemaVersionInput: Equatable {
    /// <p>The schema definition using the <code>DataFormat</code> setting for the <code>SchemaName</code>.</p>
    public let schemaDefinition: String?
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

    public init (
        schemaDefinition: String? = nil,
        schemaId: SchemaId? = nil
    )
    {
        self.schemaDefinition = schemaDefinition
        self.schemaId = schemaId
    }
}

extension RegisterSchemaVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterSchemaVersionInput(schemaDefinition: \(String(describing: schemaDefinition)), schemaId: \(String(describing: schemaId)))"}
}