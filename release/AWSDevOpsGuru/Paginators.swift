// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeOrganizationResourceCollectionHealthOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeOrganizationResourceCollectionHealthInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeOrganizationResourceCollectionHealthOutputResponse`
extension DevOpsGuruClient {
    public func describeOrganizationResourceCollectionHealthPaginated(input: DescribeOrganizationResourceCollectionHealthInput) -> ClientRuntime.PaginatorSequence<DescribeOrganizationResourceCollectionHealthInput, DescribeOrganizationResourceCollectionHealthOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeOrganizationResourceCollectionHealthInput, DescribeOrganizationResourceCollectionHealthOutputResponse>(input: input, inputKey: \DescribeOrganizationResourceCollectionHealthInput.nextToken, outputKey: \DescribeOrganizationResourceCollectionHealthOutputResponse.nextToken, paginationFunction: self.describeOrganizationResourceCollectionHealth(input:))
    }
}

extension DescribeOrganizationResourceCollectionHealthInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOrganizationResourceCollectionHealthInput {
        return DescribeOrganizationResourceCollectionHealthInput(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token,
            organizationResourceCollectionType: self.organizationResourceCollectionType,
            organizationalUnitIds: self.organizationalUnitIds
        )}
}

/// Paginate over `[DescribeResourceCollectionHealthOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeResourceCollectionHealthInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeResourceCollectionHealthOutputResponse`
extension DevOpsGuruClient {
    public func describeResourceCollectionHealthPaginated(input: DescribeResourceCollectionHealthInput) -> ClientRuntime.PaginatorSequence<DescribeResourceCollectionHealthInput, DescribeResourceCollectionHealthOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeResourceCollectionHealthInput, DescribeResourceCollectionHealthOutputResponse>(input: input, inputKey: \DescribeResourceCollectionHealthInput.nextToken, outputKey: \DescribeResourceCollectionHealthOutputResponse.nextToken, paginationFunction: self.describeResourceCollectionHealth(input:))
    }
}

extension DescribeResourceCollectionHealthInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeResourceCollectionHealthInput {
        return DescribeResourceCollectionHealthInput(
            nextToken: token,
            resourceCollectionType: self.resourceCollectionType
        )}
}

/// Paginate over `[GetCostEstimationOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetCostEstimationInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetCostEstimationOutputResponse`
extension DevOpsGuruClient {
    public func getCostEstimationPaginated(input: GetCostEstimationInput) -> ClientRuntime.PaginatorSequence<GetCostEstimationInput, GetCostEstimationOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetCostEstimationInput, GetCostEstimationOutputResponse>(input: input, inputKey: \GetCostEstimationInput.nextToken, outputKey: \GetCostEstimationOutputResponse.nextToken, paginationFunction: self.getCostEstimation(input:))
    }
}

extension GetCostEstimationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCostEstimationInput {
        return GetCostEstimationInput(
            nextToken: token
        )}
}

/// Paginate over `[GetResourceCollectionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetResourceCollectionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetResourceCollectionOutputResponse`
extension DevOpsGuruClient {
    public func getResourceCollectionPaginated(input: GetResourceCollectionInput) -> ClientRuntime.PaginatorSequence<GetResourceCollectionInput, GetResourceCollectionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetResourceCollectionInput, GetResourceCollectionOutputResponse>(input: input, inputKey: \GetResourceCollectionInput.nextToken, outputKey: \GetResourceCollectionOutputResponse.nextToken, paginationFunction: self.getResourceCollection(input:))
    }
}

extension GetResourceCollectionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourceCollectionInput {
        return GetResourceCollectionInput(
            nextToken: token,
            resourceCollectionType: self.resourceCollectionType
        )}
}

/// Paginate over `[ListAnomaliesForInsightOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAnomaliesForInsightInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAnomaliesForInsightOutputResponse`
extension DevOpsGuruClient {
    public func listAnomaliesForInsightPaginated(input: ListAnomaliesForInsightInput) -> ClientRuntime.PaginatorSequence<ListAnomaliesForInsightInput, ListAnomaliesForInsightOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnomaliesForInsightInput, ListAnomaliesForInsightOutputResponse>(input: input, inputKey: \ListAnomaliesForInsightInput.nextToken, outputKey: \ListAnomaliesForInsightOutputResponse.nextToken, paginationFunction: self.listAnomaliesForInsight(input:))
    }
}

extension ListAnomaliesForInsightInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnomaliesForInsightInput {
        return ListAnomaliesForInsightInput(
            accountId: self.accountId,
            insightId: self.insightId,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange
        )}
}

/// Paginate over `[ListEventsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEventsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEventsOutputResponse`
extension DevOpsGuruClient {
    public func listEventsPaginated(input: ListEventsInput) -> ClientRuntime.PaginatorSequence<ListEventsInput, ListEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEventsInput, ListEventsOutputResponse>(input: input, inputKey: \ListEventsInput.nextToken, outputKey: \ListEventsOutputResponse.nextToken, paginationFunction: self.listEvents(input:))
    }
}

extension ListEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventsInput {
        return ListEventsInput(
            accountId: self.accountId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEventsPaginated`
/// to access the nested member `[DevOpsGuruClientTypes.Event]`
/// - Returns: `[DevOpsGuruClientTypes.Event]`
extension PaginatorSequence where Input == ListEventsInput, Output == ListEventsOutputResponse {
    func events() async throws -> [DevOpsGuruClientTypes.Event] {
        return try await self.asyncCompactMap { item in item.events }
    }
}

/// Paginate over `[ListInsightsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInsightsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInsightsOutputResponse`
extension DevOpsGuruClient {
    public func listInsightsPaginated(input: ListInsightsInput) -> ClientRuntime.PaginatorSequence<ListInsightsInput, ListInsightsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInsightsInput, ListInsightsOutputResponse>(input: input, inputKey: \ListInsightsInput.nextToken, outputKey: \ListInsightsOutputResponse.nextToken, paginationFunction: self.listInsights(input:))
    }
}

extension ListInsightsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInsightsInput {
        return ListInsightsInput(
            maxResults: self.maxResults,
            nextToken: token,
            statusFilter: self.statusFilter
        )}
}

/// Paginate over `[ListNotificationChannelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNotificationChannelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNotificationChannelsOutputResponse`
extension DevOpsGuruClient {
    public func listNotificationChannelsPaginated(input: ListNotificationChannelsInput) -> ClientRuntime.PaginatorSequence<ListNotificationChannelsInput, ListNotificationChannelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNotificationChannelsInput, ListNotificationChannelsOutputResponse>(input: input, inputKey: \ListNotificationChannelsInput.nextToken, outputKey: \ListNotificationChannelsOutputResponse.nextToken, paginationFunction: self.listNotificationChannels(input:))
    }
}

extension ListNotificationChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotificationChannelsInput {
        return ListNotificationChannelsInput(
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listNotificationChannelsPaginated`
/// to access the nested member `[DevOpsGuruClientTypes.NotificationChannel]`
/// - Returns: `[DevOpsGuruClientTypes.NotificationChannel]`
extension PaginatorSequence where Input == ListNotificationChannelsInput, Output == ListNotificationChannelsOutputResponse {
    func channels() async throws -> [DevOpsGuruClientTypes.NotificationChannel] {
        return try await self.asyncCompactMap { item in item.channels }
    }
}

/// Paginate over `[ListOrganizationInsightsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOrganizationInsightsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationInsightsOutputResponse`
extension DevOpsGuruClient {
    public func listOrganizationInsightsPaginated(input: ListOrganizationInsightsInput) -> ClientRuntime.PaginatorSequence<ListOrganizationInsightsInput, ListOrganizationInsightsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrganizationInsightsInput, ListOrganizationInsightsOutputResponse>(input: input, inputKey: \ListOrganizationInsightsInput.nextToken, outputKey: \ListOrganizationInsightsOutputResponse.nextToken, paginationFunction: self.listOrganizationInsights(input:))
    }
}

extension ListOrganizationInsightsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationInsightsInput {
        return ListOrganizationInsightsInput(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token,
            organizationalUnitIds: self.organizationalUnitIds,
            statusFilter: self.statusFilter
        )}
}

/// Paginate over `[ListRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationsOutputResponse`
extension DevOpsGuruClient {
    public func listRecommendationsPaginated(input: ListRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutputResponse>(input: input, inputKey: \ListRecommendationsInput.nextToken, outputKey: \ListRecommendationsOutputResponse.nextToken, paginationFunction: self.listRecommendations(input:))
    }
}

extension ListRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationsInput {
        return ListRecommendationsInput(
            accountId: self.accountId,
            insightId: self.insightId,
            locale: self.locale,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listRecommendationsPaginated`
/// to access the nested member `[DevOpsGuruClientTypes.Recommendation]`
/// - Returns: `[DevOpsGuruClientTypes.Recommendation]`
extension PaginatorSequence where Input == ListRecommendationsInput, Output == ListRecommendationsOutputResponse {
    func recommendations() async throws -> [DevOpsGuruClientTypes.Recommendation] {
        return try await self.asyncCompactMap { item in item.recommendations }
    }
}

/// Paginate over `[SearchInsightsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchInsightsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchInsightsOutputResponse`
extension DevOpsGuruClient {
    public func searchInsightsPaginated(input: SearchInsightsInput) -> ClientRuntime.PaginatorSequence<SearchInsightsInput, SearchInsightsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchInsightsInput, SearchInsightsOutputResponse>(input: input, inputKey: \SearchInsightsInput.nextToken, outputKey: \SearchInsightsOutputResponse.nextToken, paginationFunction: self.searchInsights(input:))
    }
}

extension SearchInsightsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchInsightsInput {
        return SearchInsightsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange,
            type: self.type
        )}
}

/// Paginate over `[SearchOrganizationInsightsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchOrganizationInsightsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchOrganizationInsightsOutputResponse`
extension DevOpsGuruClient {
    public func searchOrganizationInsightsPaginated(input: SearchOrganizationInsightsInput) -> ClientRuntime.PaginatorSequence<SearchOrganizationInsightsInput, SearchOrganizationInsightsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchOrganizationInsightsInput, SearchOrganizationInsightsOutputResponse>(input: input, inputKey: \SearchOrganizationInsightsInput.nextToken, outputKey: \SearchOrganizationInsightsOutputResponse.nextToken, paginationFunction: self.searchOrganizationInsights(input:))
    }
}

extension SearchOrganizationInsightsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchOrganizationInsightsInput {
        return SearchOrganizationInsightsInput(
            accountIds: self.accountIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange,
            type: self.type
        )}
}
