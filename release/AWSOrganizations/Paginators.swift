// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccountsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountsOutputResponse`
extension OrganizationsClient {
    public func listAccountsPaginated(input: ListAccountsInput) -> ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse>(input: input, inputKey: \ListAccountsInput.nextToken, outputKey: \ListAccountsOutputResponse.nextToken, paginationFunction: self.listAccounts(input:))
    }
}

extension ListAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsInput {
        return ListAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAccountsForParentOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountsForParentInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountsForParentOutputResponse`
extension OrganizationsClient {
    public func listAccountsForParentPaginated(input: ListAccountsForParentInput) -> ClientRuntime.PaginatorSequence<ListAccountsForParentInput, ListAccountsForParentOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsForParentInput, ListAccountsForParentOutputResponse>(input: input, inputKey: \ListAccountsForParentInput.nextToken, outputKey: \ListAccountsForParentOutputResponse.nextToken, paginationFunction: self.listAccountsForParent(input:))
    }
}

extension ListAccountsForParentInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsForParentInput {
        return ListAccountsForParentInput(
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}

/// Paginate over `[ListAWSServiceAccessForOrganizationOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAWSServiceAccessForOrganizationInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAWSServiceAccessForOrganizationOutputResponse`
extension OrganizationsClient {
    public func listAWSServiceAccessForOrganizationPaginated(input: ListAWSServiceAccessForOrganizationInput) -> ClientRuntime.PaginatorSequence<ListAWSServiceAccessForOrganizationInput, ListAWSServiceAccessForOrganizationOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAWSServiceAccessForOrganizationInput, ListAWSServiceAccessForOrganizationOutputResponse>(input: input, inputKey: \ListAWSServiceAccessForOrganizationInput.nextToken, outputKey: \ListAWSServiceAccessForOrganizationOutputResponse.nextToken, paginationFunction: self.listAWSServiceAccessForOrganization(input:))
    }
}

extension ListAWSServiceAccessForOrganizationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAWSServiceAccessForOrganizationInput {
        return ListAWSServiceAccessForOrganizationInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListChildrenOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChildrenInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChildrenOutputResponse`
extension OrganizationsClient {
    public func listChildrenPaginated(input: ListChildrenInput) -> ClientRuntime.PaginatorSequence<ListChildrenInput, ListChildrenOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChildrenInput, ListChildrenOutputResponse>(input: input, inputKey: \ListChildrenInput.nextToken, outputKey: \ListChildrenOutputResponse.nextToken, paginationFunction: self.listChildren(input:))
    }
}

extension ListChildrenInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChildrenInput {
        return ListChildrenInput(
            childType: self.childType,
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}

/// Paginate over `[ListCreateAccountStatusOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCreateAccountStatusInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCreateAccountStatusOutputResponse`
extension OrganizationsClient {
    public func listCreateAccountStatusPaginated(input: ListCreateAccountStatusInput) -> ClientRuntime.PaginatorSequence<ListCreateAccountStatusInput, ListCreateAccountStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCreateAccountStatusInput, ListCreateAccountStatusOutputResponse>(input: input, inputKey: \ListCreateAccountStatusInput.nextToken, outputKey: \ListCreateAccountStatusOutputResponse.nextToken, paginationFunction: self.listCreateAccountStatus(input:))
    }
}

extension ListCreateAccountStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCreateAccountStatusInput {
        return ListCreateAccountStatusInput(
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )}
}

/// Paginate over `[ListDelegatedAdministratorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDelegatedAdministratorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDelegatedAdministratorsOutputResponse`
extension OrganizationsClient {
    public func listDelegatedAdministratorsPaginated(input: ListDelegatedAdministratorsInput) -> ClientRuntime.PaginatorSequence<ListDelegatedAdministratorsInput, ListDelegatedAdministratorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDelegatedAdministratorsInput, ListDelegatedAdministratorsOutputResponse>(input: input, inputKey: \ListDelegatedAdministratorsInput.nextToken, outputKey: \ListDelegatedAdministratorsOutputResponse.nextToken, paginationFunction: self.listDelegatedAdministrators(input:))
    }
}

extension ListDelegatedAdministratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDelegatedAdministratorsInput {
        return ListDelegatedAdministratorsInput(
            maxResults: self.maxResults,
            nextToken: token,
            servicePrincipal: self.servicePrincipal
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDelegatedAdministratorsPaginated`
/// to access the nested member `[OrganizationsClientTypes.DelegatedAdministrator]`
/// - Returns: `[OrganizationsClientTypes.DelegatedAdministrator]`
extension PaginatorSequence where Input == ListDelegatedAdministratorsInput, Output == ListDelegatedAdministratorsOutputResponse {
    func delegatedAdministrators() async throws -> [OrganizationsClientTypes.DelegatedAdministrator] {
        return try await self.asyncCompactMap { item in item.delegatedAdministrators }
    }
}

/// Paginate over `[ListDelegatedServicesForAccountOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDelegatedServicesForAccountInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDelegatedServicesForAccountOutputResponse`
extension OrganizationsClient {
    public func listDelegatedServicesForAccountPaginated(input: ListDelegatedServicesForAccountInput) -> ClientRuntime.PaginatorSequence<ListDelegatedServicesForAccountInput, ListDelegatedServicesForAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDelegatedServicesForAccountInput, ListDelegatedServicesForAccountOutputResponse>(input: input, inputKey: \ListDelegatedServicesForAccountInput.nextToken, outputKey: \ListDelegatedServicesForAccountOutputResponse.nextToken, paginationFunction: self.listDelegatedServicesForAccount(input:))
    }
}

extension ListDelegatedServicesForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDelegatedServicesForAccountInput {
        return ListDelegatedServicesForAccountInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDelegatedServicesForAccountPaginated`
/// to access the nested member `[OrganizationsClientTypes.DelegatedService]`
/// - Returns: `[OrganizationsClientTypes.DelegatedService]`
extension PaginatorSequence where Input == ListDelegatedServicesForAccountInput, Output == ListDelegatedServicesForAccountOutputResponse {
    func delegatedServices() async throws -> [OrganizationsClientTypes.DelegatedService] {
        return try await self.asyncCompactMap { item in item.delegatedServices }
    }
}

/// Paginate over `[ListHandshakesForAccountOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListHandshakesForAccountInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListHandshakesForAccountOutputResponse`
extension OrganizationsClient {
    public func listHandshakesForAccountPaginated(input: ListHandshakesForAccountInput) -> ClientRuntime.PaginatorSequence<ListHandshakesForAccountInput, ListHandshakesForAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListHandshakesForAccountInput, ListHandshakesForAccountOutputResponse>(input: input, inputKey: \ListHandshakesForAccountInput.nextToken, outputKey: \ListHandshakesForAccountOutputResponse.nextToken, paginationFunction: self.listHandshakesForAccount(input:))
    }
}

extension ListHandshakesForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHandshakesForAccountInput {
        return ListHandshakesForAccountInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListHandshakesForOrganizationOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListHandshakesForOrganizationInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListHandshakesForOrganizationOutputResponse`
extension OrganizationsClient {
    public func listHandshakesForOrganizationPaginated(input: ListHandshakesForOrganizationInput) -> ClientRuntime.PaginatorSequence<ListHandshakesForOrganizationInput, ListHandshakesForOrganizationOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListHandshakesForOrganizationInput, ListHandshakesForOrganizationOutputResponse>(input: input, inputKey: \ListHandshakesForOrganizationInput.nextToken, outputKey: \ListHandshakesForOrganizationOutputResponse.nextToken, paginationFunction: self.listHandshakesForOrganization(input:))
    }
}

extension ListHandshakesForOrganizationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHandshakesForOrganizationInput {
        return ListHandshakesForOrganizationInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListOrganizationalUnitsForParentOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOrganizationalUnitsForParentInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationalUnitsForParentOutputResponse`
extension OrganizationsClient {
    public func listOrganizationalUnitsForParentPaginated(input: ListOrganizationalUnitsForParentInput) -> ClientRuntime.PaginatorSequence<ListOrganizationalUnitsForParentInput, ListOrganizationalUnitsForParentOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrganizationalUnitsForParentInput, ListOrganizationalUnitsForParentOutputResponse>(input: input, inputKey: \ListOrganizationalUnitsForParentInput.nextToken, outputKey: \ListOrganizationalUnitsForParentOutputResponse.nextToken, paginationFunction: self.listOrganizationalUnitsForParent(input:))
    }
}

extension ListOrganizationalUnitsForParentInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationalUnitsForParentInput {
        return ListOrganizationalUnitsForParentInput(
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}

/// Paginate over `[ListParentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListParentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListParentsOutputResponse`
extension OrganizationsClient {
    public func listParentsPaginated(input: ListParentsInput) -> ClientRuntime.PaginatorSequence<ListParentsInput, ListParentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListParentsInput, ListParentsOutputResponse>(input: input, inputKey: \ListParentsInput.nextToken, outputKey: \ListParentsOutputResponse.nextToken, paginationFunction: self.listParents(input:))
    }
}

extension ListParentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListParentsInput {
        return ListParentsInput(
            childId: self.childId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPoliciesOutputResponse`
extension OrganizationsClient {
    public func listPoliciesPaginated(input: ListPoliciesInput) -> ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutputResponse>(input: input, inputKey: \ListPoliciesInput.nextToken, outputKey: \ListPoliciesOutputResponse.nextToken, paginationFunction: self.listPolicies(input:))
    }
}

extension ListPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoliciesInput {
        return ListPoliciesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListPoliciesForTargetOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPoliciesForTargetInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPoliciesForTargetOutputResponse`
extension OrganizationsClient {
    public func listPoliciesForTargetPaginated(input: ListPoliciesForTargetInput) -> ClientRuntime.PaginatorSequence<ListPoliciesForTargetInput, ListPoliciesForTargetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPoliciesForTargetInput, ListPoliciesForTargetOutputResponse>(input: input, inputKey: \ListPoliciesForTargetInput.nextToken, outputKey: \ListPoliciesForTargetOutputResponse.nextToken, paginationFunction: self.listPoliciesForTarget(input:))
    }
}

extension ListPoliciesForTargetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoliciesForTargetInput {
        return ListPoliciesForTargetInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            targetId: self.targetId
        )}
}

/// Paginate over `[ListRootsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRootsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRootsOutputResponse`
extension OrganizationsClient {
    public func listRootsPaginated(input: ListRootsInput) -> ClientRuntime.PaginatorSequence<ListRootsInput, ListRootsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRootsInput, ListRootsOutputResponse>(input: input, inputKey: \ListRootsInput.nextToken, outputKey: \ListRootsOutputResponse.nextToken, paginationFunction: self.listRoots(input:))
    }
}

extension ListRootsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRootsInput {
        return ListRootsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension OrganizationsClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            nextToken: token,
            resourceId: self.resourceId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
/// to access the nested member `[OrganizationsClientTypes.Tag]`
/// - Returns: `[OrganizationsClientTypes.Tag]`
extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    func tags() async throws -> [OrganizationsClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}

/// Paginate over `[ListTargetsForPolicyOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTargetsForPolicyInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTargetsForPolicyOutputResponse`
extension OrganizationsClient {
    public func listTargetsForPolicyPaginated(input: ListTargetsForPolicyInput) -> ClientRuntime.PaginatorSequence<ListTargetsForPolicyInput, ListTargetsForPolicyOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTargetsForPolicyInput, ListTargetsForPolicyOutputResponse>(input: input, inputKey: \ListTargetsForPolicyInput.nextToken, outputKey: \ListTargetsForPolicyOutputResponse.nextToken, paginationFunction: self.listTargetsForPolicy(input:))
    }
}

extension ListTargetsForPolicyInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetsForPolicyInput {
        return ListTargetsForPolicyInput(
            maxResults: self.maxResults,
            nextToken: token,
            policyId: self.policyId
        )}
}
