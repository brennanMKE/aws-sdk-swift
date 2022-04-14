// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListApplicationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListApplicationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutputResponse`
extension AppConfigClient {
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse>(input: input, inputKey: \ListApplicationsInput.nextToken, outputKey: \ListApplicationsOutputResponse.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListConfigurationProfilesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListConfigurationProfilesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListConfigurationProfilesOutputResponse`
extension AppConfigClient {
    public func listConfigurationProfilesPaginated(input: ListConfigurationProfilesInput) -> ClientRuntime.PaginatorSequence<ListConfigurationProfilesInput, ListConfigurationProfilesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConfigurationProfilesInput, ListConfigurationProfilesOutputResponse>(input: input, inputKey: \ListConfigurationProfilesInput.nextToken, outputKey: \ListConfigurationProfilesOutputResponse.nextToken, paginationFunction: self.listConfigurationProfiles(input:))
    }
}

extension ListConfigurationProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConfigurationProfilesInput {
        return ListConfigurationProfilesInput(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )}
}

/// Paginate over `[ListDeploymentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDeploymentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentsOutputResponse`
extension AppConfigClient {
    public func listDeploymentsPaginated(input: ListDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutputResponse>(input: input, inputKey: \ListDeploymentsInput.nextToken, outputKey: \ListDeploymentsOutputResponse.nextToken, paginationFunction: self.listDeployments(input:))
    }
}

extension ListDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentsInput {
        return ListDeploymentsInput(
            applicationId: self.applicationId,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListDeploymentStrategiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDeploymentStrategiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentStrategiesOutputResponse`
extension AppConfigClient {
    public func listDeploymentStrategiesPaginated(input: ListDeploymentStrategiesInput) -> ClientRuntime.PaginatorSequence<ListDeploymentStrategiesInput, ListDeploymentStrategiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeploymentStrategiesInput, ListDeploymentStrategiesOutputResponse>(input: input, inputKey: \ListDeploymentStrategiesInput.nextToken, outputKey: \ListDeploymentStrategiesOutputResponse.nextToken, paginationFunction: self.listDeploymentStrategies(input:))
    }
}

extension ListDeploymentStrategiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentStrategiesInput {
        return ListDeploymentStrategiesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListEnvironmentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEnvironmentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentsOutputResponse`
extension AppConfigClient {
    public func listEnvironmentsPaginated(input: ListEnvironmentsInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutputResponse>(input: input, inputKey: \ListEnvironmentsInput.nextToken, outputKey: \ListEnvironmentsOutputResponse.nextToken, paginationFunction: self.listEnvironments(input:))
    }
}

extension ListEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentsInput {
        return ListEnvironmentsInput(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListHostedConfigurationVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListHostedConfigurationVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListHostedConfigurationVersionsOutputResponse`
extension AppConfigClient {
    public func listHostedConfigurationVersionsPaginated(input: ListHostedConfigurationVersionsInput) -> ClientRuntime.PaginatorSequence<ListHostedConfigurationVersionsInput, ListHostedConfigurationVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListHostedConfigurationVersionsInput, ListHostedConfigurationVersionsOutputResponse>(input: input, inputKey: \ListHostedConfigurationVersionsInput.nextToken, outputKey: \ListHostedConfigurationVersionsOutputResponse.nextToken, paginationFunction: self.listHostedConfigurationVersions(input:))
    }
}

extension ListHostedConfigurationVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHostedConfigurationVersionsInput {
        return ListHostedConfigurationVersionsInput(
            applicationId: self.applicationId,
            configurationProfileId: self.configurationProfileId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}