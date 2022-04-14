// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListDeadLetterSourceQueuesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDeadLetterSourceQueuesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDeadLetterSourceQueuesOutputResponse`
extension SqsClient {
    public func listDeadLetterSourceQueuesPaginated(input: ListDeadLetterSourceQueuesInput) -> ClientRuntime.PaginatorSequence<ListDeadLetterSourceQueuesInput, ListDeadLetterSourceQueuesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeadLetterSourceQueuesInput, ListDeadLetterSourceQueuesOutputResponse>(input: input, inputKey: \ListDeadLetterSourceQueuesInput.nextToken, outputKey: \ListDeadLetterSourceQueuesOutputResponse.nextToken, paginationFunction: self.listDeadLetterSourceQueues(input:))
    }
}

extension ListDeadLetterSourceQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeadLetterSourceQueuesInput {
        return ListDeadLetterSourceQueuesInput(
            maxResults: self.maxResults,
            nextToken: token,
            queueUrl: self.queueUrl
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDeadLetterSourceQueuesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListDeadLetterSourceQueuesInput, Output == ListDeadLetterSourceQueuesOutputResponse {
    func queueUrls() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.queueUrls }
    }
}

/// Paginate over `[ListQueuesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListQueuesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListQueuesOutputResponse`
extension SqsClient {
    public func listQueuesPaginated(input: ListQueuesInput) -> ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutputResponse>(input: input, inputKey: \ListQueuesInput.nextToken, outputKey: \ListQueuesOutputResponse.nextToken, paginationFunction: self.listQueues(input:))
    }
}

extension ListQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListQueuesInput {
        return ListQueuesInput(
            maxResults: self.maxResults,
            nextToken: token,
            queueNamePrefix: self.queueNamePrefix
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listQueuesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListQueuesInput, Output == ListQueuesOutputResponse {
    func queueUrls() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.queueUrls }
    }
}