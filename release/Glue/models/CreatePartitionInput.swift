// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePartitionInput: Equatable {
    /// <p>The AWS account ID of the catalog in which the partition is to be created.</p>
    public let catalogId: String?
    /// <p>The name of the metadata database in which the partition is
    ///       to be created.</p>
    public let databaseName: String?
    /// <p>A <code>PartitionInput</code> structure defining the partition
    ///       to be created.</p>
    public let partitionInput: PartitionInput?
    /// <p>The name of the metadata table in which the partition is to be created.</p>
    public let tableName: String?

    public init (
        catalogId: String? = nil,
        databaseName: String? = nil,
        partitionInput: PartitionInput? = nil,
        tableName: String? = nil
    )
    {
        self.catalogId = catalogId
        self.databaseName = databaseName
        self.partitionInput = partitionInput
        self.tableName = tableName
    }
}

extension CreatePartitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePartitionInput(catalogId: \(String(describing: catalogId)), databaseName: \(String(describing: databaseName)), partitionInput: \(String(describing: partitionInput)), tableName: \(String(describing: tableName)))"}
}