// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListEndpointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEndpointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEndpointsOutputResponse`
extension S3OutpostsClient {
    public func listEndpointsPaginated(input: ListEndpointsInput) -> ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse>(input: input, inputKey: \ListEndpointsInput.nextToken, outputKey: \ListEndpointsOutputResponse.nextToken, paginationFunction: self.listEndpoints(input:))
    }
}

extension ListEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointsInput {
        return ListEndpointsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEndpointsPaginated`
/// to access the nested member `[S3OutpostsClientTypes.Endpoint]`
/// - Returns: `[S3OutpostsClientTypes.Endpoint]`
extension PaginatorSequence where Input == ListEndpointsInput, Output == ListEndpointsOutputResponse {
    func endpoints() async throws -> [S3OutpostsClientTypes.Endpoint] {
        return try await self.asyncCompactMap { item in item.endpoints }
    }
}
