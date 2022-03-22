// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListJobsByPipelineOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsByPipelineInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsByPipelineOutputResponse`
extension ElasticTranscoderClient {
    public func listJobsByPipelinePaginated(input: ListJobsByPipelineInput) -> ClientRuntime.PaginatorSequence<ListJobsByPipelineInput, ListJobsByPipelineOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsByPipelineInput, ListJobsByPipelineOutputResponse>(input: input, inputKey: \ListJobsByPipelineInput.pageToken, outputKey: \ListJobsByPipelineOutputResponse.nextPageToken, paginationFunction: self.listJobsByPipeline(input:))
    }
}

extension ListJobsByPipelineInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsByPipelineInput {
        return ListJobsByPipelineInput(
            ascending: self.ascending,
            pageToken: token,
            pipelineId: self.pipelineId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsByPipelinePaginated`
/// to access the nested member `[ElasticTranscoderClientTypes.Job]`
/// - Returns: `[ElasticTranscoderClientTypes.Job]`
extension PaginatorSequence where Input == ListJobsByPipelineInput, Output == ListJobsByPipelineOutputResponse {
    func jobs() async throws -> [ElasticTranscoderClientTypes.Job] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}

/// Paginate over `[ListJobsByStatusOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsByStatusInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsByStatusOutputResponse`
extension ElasticTranscoderClient {
    public func listJobsByStatusPaginated(input: ListJobsByStatusInput) -> ClientRuntime.PaginatorSequence<ListJobsByStatusInput, ListJobsByStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsByStatusInput, ListJobsByStatusOutputResponse>(input: input, inputKey: \ListJobsByStatusInput.pageToken, outputKey: \ListJobsByStatusOutputResponse.nextPageToken, paginationFunction: self.listJobsByStatus(input:))
    }
}

extension ListJobsByStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsByStatusInput {
        return ListJobsByStatusInput(
            ascending: self.ascending,
            pageToken: token,
            status: self.status
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsByStatusPaginated`
/// to access the nested member `[ElasticTranscoderClientTypes.Job]`
/// - Returns: `[ElasticTranscoderClientTypes.Job]`
extension PaginatorSequence where Input == ListJobsByStatusInput, Output == ListJobsByStatusOutputResponse {
    func jobs() async throws -> [ElasticTranscoderClientTypes.Job] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}

/// Paginate over `[ListPipelinesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPipelinesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPipelinesOutputResponse`
extension ElasticTranscoderClient {
    public func listPipelinesPaginated(input: ListPipelinesInput) -> ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse>(input: input, inputKey: \ListPipelinesInput.pageToken, outputKey: \ListPipelinesOutputResponse.nextPageToken, paginationFunction: self.listPipelines(input:))
    }
}

extension ListPipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelinesInput {
        return ListPipelinesInput(
            ascending: self.ascending,
            pageToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPipelinesPaginated`
/// to access the nested member `[ElasticTranscoderClientTypes.Pipeline]`
/// - Returns: `[ElasticTranscoderClientTypes.Pipeline]`
extension PaginatorSequence where Input == ListPipelinesInput, Output == ListPipelinesOutputResponse {
    func pipelines() async throws -> [ElasticTranscoderClientTypes.Pipeline] {
        return try await self.asyncCompactMap { item in item.pipelines }
    }
}

/// Paginate over `[ListPresetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPresetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPresetsOutputResponse`
extension ElasticTranscoderClient {
    public func listPresetsPaginated(input: ListPresetsInput) -> ClientRuntime.PaginatorSequence<ListPresetsInput, ListPresetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPresetsInput, ListPresetsOutputResponse>(input: input, inputKey: \ListPresetsInput.pageToken, outputKey: \ListPresetsOutputResponse.nextPageToken, paginationFunction: self.listPresets(input:))
    }
}

extension ListPresetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPresetsInput {
        return ListPresetsInput(
            ascending: self.ascending,
            pageToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPresetsPaginated`
/// to access the nested member `[ElasticTranscoderClientTypes.Preset]`
/// - Returns: `[ElasticTranscoderClientTypes.Preset]`
extension PaginatorSequence where Input == ListPresetsInput, Output == ListPresetsOutputResponse {
    func presets() async throws -> [ElasticTranscoderClientTypes.Preset] {
        return try await self.asyncCompactMap { item in item.presets }
    }
}
