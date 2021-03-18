// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of a <code>ListTables</code> operation.</p>
public struct ListTablesInput: Equatable {
    /**
     <p>The first table name that this operation will evaluate. Use the value that was returned for
             <code>LastEvaluatedTableName</code> in a previous operation, so that you can obtain the next page
           of results.</p>
     */
    public let exclusiveStartTableName: String?
    /// <p>A maximum number of table names to return. If this parameter is not specified, the limit is 100.</p>
    public let limit: Int?

    public init (
        exclusiveStartTableName: String? = nil,
        limit: Int? = nil
    )
    {
        self.exclusiveStartTableName = exclusiveStartTableName
        self.limit = limit
    }
}
