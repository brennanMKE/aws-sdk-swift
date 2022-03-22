// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListDatabasesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatabasesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatabasesOutputResponse`
extension TimestreamWriteClient {
    public func listDatabasesPaginated(input: ListDatabasesInput) -> ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutputResponse>(input: input, inputKey: \ListDatabasesInput.nextToken, outputKey: \ListDatabasesOutputResponse.nextToken, paginationFunction: self.listDatabases(input:))
    }
}

extension ListDatabasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatabasesInput {
        return ListDatabasesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTablesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTablesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTablesOutputResponse`
extension TimestreamWriteClient {
    public func listTablesPaginated(input: ListTablesInput) -> ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutputResponse>(input: input, inputKey: \ListTablesInput.nextToken, outputKey: \ListTablesOutputResponse.nextToken, paginationFunction: self.listTables(input:))
    }
}

extension ListTablesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTablesInput {
        return ListTablesInput(
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
