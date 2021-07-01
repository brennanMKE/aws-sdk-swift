// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteSchemaInput: Equatable {
    /// <p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    public let schemaId: SchemaId?

    public init (
        schemaId: SchemaId? = nil
    )
    {
        self.schemaId = schemaId
    }
}

extension DeleteSchemaInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteSchemaInput(schemaId: \(String(describing: schemaId)))"}
}