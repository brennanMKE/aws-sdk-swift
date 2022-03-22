// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccessPreviewFindingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccessPreviewFindingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccessPreviewFindingsOutputResponse`
extension AccessAnalyzerClient {
    public func listAccessPreviewFindingsPaginated(input: ListAccessPreviewFindingsInput) -> ClientRuntime.PaginatorSequence<ListAccessPreviewFindingsInput, ListAccessPreviewFindingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccessPreviewFindingsInput, ListAccessPreviewFindingsOutputResponse>(input: input, inputKey: \ListAccessPreviewFindingsInput.nextToken, outputKey: \ListAccessPreviewFindingsOutputResponse.nextToken, paginationFunction: self.listAccessPreviewFindings(input:))
    }
}

extension ListAccessPreviewFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccessPreviewFindingsInput {
        return ListAccessPreviewFindingsInput(
            accessPreviewId: self.accessPreviewId,
            analyzerArn: self.analyzerArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccessPreviewFindingsPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.AccessPreviewFinding]`
/// - Returns: `[AccessAnalyzerClientTypes.AccessPreviewFinding]`
extension PaginatorSequence where Input == ListAccessPreviewFindingsInput, Output == ListAccessPreviewFindingsOutputResponse {
    func findings() async throws -> [AccessAnalyzerClientTypes.AccessPreviewFinding] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}

/// Paginate over `[ListAccessPreviewsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccessPreviewsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccessPreviewsOutputResponse`
extension AccessAnalyzerClient {
    public func listAccessPreviewsPaginated(input: ListAccessPreviewsInput) -> ClientRuntime.PaginatorSequence<ListAccessPreviewsInput, ListAccessPreviewsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccessPreviewsInput, ListAccessPreviewsOutputResponse>(input: input, inputKey: \ListAccessPreviewsInput.nextToken, outputKey: \ListAccessPreviewsOutputResponse.nextToken, paginationFunction: self.listAccessPreviews(input:))
    }
}

extension ListAccessPreviewsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccessPreviewsInput {
        return ListAccessPreviewsInput(
            analyzerArn: self.analyzerArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccessPreviewsPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.AccessPreviewSummary]`
/// - Returns: `[AccessAnalyzerClientTypes.AccessPreviewSummary]`
extension PaginatorSequence where Input == ListAccessPreviewsInput, Output == ListAccessPreviewsOutputResponse {
    func accessPreviews() async throws -> [AccessAnalyzerClientTypes.AccessPreviewSummary] {
        return try await self.asyncCompactMap { item in item.accessPreviews }
    }
}

/// Paginate over `[ListAnalyzedResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAnalyzedResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAnalyzedResourcesOutputResponse`
extension AccessAnalyzerClient {
    public func listAnalyzedResourcesPaginated(input: ListAnalyzedResourcesInput) -> ClientRuntime.PaginatorSequence<ListAnalyzedResourcesInput, ListAnalyzedResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnalyzedResourcesInput, ListAnalyzedResourcesOutputResponse>(input: input, inputKey: \ListAnalyzedResourcesInput.nextToken, outputKey: \ListAnalyzedResourcesOutputResponse.nextToken, paginationFunction: self.listAnalyzedResources(input:))
    }
}

extension ListAnalyzedResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnalyzedResourcesInput {
        return ListAnalyzedResourcesInput(
            analyzerArn: self.analyzerArn,
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAnalyzedResourcesPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.AnalyzedResourceSummary]`
/// - Returns: `[AccessAnalyzerClientTypes.AnalyzedResourceSummary]`
extension PaginatorSequence where Input == ListAnalyzedResourcesInput, Output == ListAnalyzedResourcesOutputResponse {
    func analyzedResources() async throws -> [AccessAnalyzerClientTypes.AnalyzedResourceSummary] {
        return try await self.asyncCompactMap { item in item.analyzedResources }
    }
}

/// Paginate over `[ListFindingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFindingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFindingsOutputResponse`
extension AccessAnalyzerClient {
    public func listFindingsPaginated(input: ListFindingsInput) -> ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutputResponse>(input: input, inputKey: \ListFindingsInput.nextToken, outputKey: \ListFindingsOutputResponse.nextToken, paginationFunction: self.listFindings(input:))
    }
}

extension ListFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingsInput {
        return ListFindingsInput(
            analyzerArn: self.analyzerArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFindingsPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.FindingSummary]`
/// - Returns: `[AccessAnalyzerClientTypes.FindingSummary]`
extension PaginatorSequence where Input == ListFindingsInput, Output == ListFindingsOutputResponse {
    func findings() async throws -> [AccessAnalyzerClientTypes.FindingSummary] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}

/// Paginate over `[ListPolicyGenerationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPolicyGenerationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPolicyGenerationsOutputResponse`
extension AccessAnalyzerClient {
    public func listPolicyGenerationsPaginated(input: ListPolicyGenerationsInput) -> ClientRuntime.PaginatorSequence<ListPolicyGenerationsInput, ListPolicyGenerationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPolicyGenerationsInput, ListPolicyGenerationsOutputResponse>(input: input, inputKey: \ListPolicyGenerationsInput.nextToken, outputKey: \ListPolicyGenerationsOutputResponse.nextToken, paginationFunction: self.listPolicyGenerations(input:))
    }
}

extension ListPolicyGenerationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPolicyGenerationsInput {
        return ListPolicyGenerationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            principalArn: self.principalArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPolicyGenerationsPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.PolicyGeneration]`
/// - Returns: `[AccessAnalyzerClientTypes.PolicyGeneration]`
extension PaginatorSequence where Input == ListPolicyGenerationsInput, Output == ListPolicyGenerationsOutputResponse {
    func policyGenerations() async throws -> [AccessAnalyzerClientTypes.PolicyGeneration] {
        return try await self.asyncCompactMap { item in item.policyGenerations }
    }
}

/// Paginate over `[ValidatePolicyOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ValidatePolicyInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ValidatePolicyOutputResponse`
extension AccessAnalyzerClient {
    public func validatePolicyPaginated(input: ValidatePolicyInput) -> ClientRuntime.PaginatorSequence<ValidatePolicyInput, ValidatePolicyOutputResponse> {
        return ClientRuntime.PaginatorSequence<ValidatePolicyInput, ValidatePolicyOutputResponse>(input: input, inputKey: \ValidatePolicyInput.nextToken, outputKey: \ValidatePolicyOutputResponse.nextToken, paginationFunction: self.validatePolicy(input:))
    }
}

extension ValidatePolicyInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ValidatePolicyInput {
        return ValidatePolicyInput(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            policyDocument: self.policyDocument,
            policyType: self.policyType,
            validatePolicyResourceType: self.validatePolicyResourceType
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `validatePolicyPaginated`
/// to access the nested member `[AccessAnalyzerClientTypes.ValidatePolicyFinding]`
/// - Returns: `[AccessAnalyzerClientTypes.ValidatePolicyFinding]`
extension PaginatorSequence where Input == ValidatePolicyInput, Output == ValidatePolicyOutputResponse {
    func findings() async throws -> [AccessAnalyzerClientTypes.ValidatePolicyFinding] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}
