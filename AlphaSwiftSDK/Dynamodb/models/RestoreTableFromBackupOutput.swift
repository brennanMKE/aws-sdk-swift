// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RestoreTableFromBackupOutput: Equatable {
    /// <p>The description of the table created from an existing backup.</p>
    public let tableDescription: TableDescription?

    public init (
        tableDescription: TableDescription? = nil
    )
    {
        self.tableDescription = tableDescription
    }
}
