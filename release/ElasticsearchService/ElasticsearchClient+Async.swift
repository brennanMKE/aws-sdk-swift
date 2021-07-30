// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ElasticsearchClient {
    /// <p>Allows the destination domain owner to accept an inbound cross-cluster search connection request.</p>
    func acceptInboundCrossClusterSearchConnection(input: AcceptInboundCrossClusterSearchConnectionInput) async throws -> AcceptInboundCrossClusterSearchConnectionOutputResponse
    {
        typealias acceptInboundCrossClusterSearchConnectionContinuation = CheckedContinuation<AcceptInboundCrossClusterSearchConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: acceptInboundCrossClusterSearchConnectionContinuation) in
            acceptInboundCrossClusterSearchConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank">
    ///           Tagging Amazon Elasticsearch Service Domains for more information.</a></p>
    func addTags(input: AddTagsInput) async throws -> AddTagsOutputResponse
    {
        typealias addTagsContinuation = CheckedContinuation<AddTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addTagsContinuation) in
            addTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Associates a package with an Amazon ES domain.</p>
    func associatePackage(input: AssociatePackageInput) async throws -> AssociatePackageOutputResponse
    {
        typealias associatePackageContinuation = CheckedContinuation<AssociatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associatePackageContinuation) in
            associatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the <code>AutomatedUpdateDate</code> and when the <code>UpdateStatus</code> is in the <code>PENDING_UPDATE</code> state.</p>
    func cancelElasticsearchServiceSoftwareUpdate(input: CancelElasticsearchServiceSoftwareUpdateInput) async throws -> CancelElasticsearchServiceSoftwareUpdateOutputResponse
    {
        typealias cancelElasticsearchServiceSoftwareUpdateContinuation = CheckedContinuation<CancelElasticsearchServiceSoftwareUpdateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelElasticsearchServiceSoftwareUpdateContinuation) in
            cancelElasticsearchServiceSoftwareUpdate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new Elasticsearch domain. For more information,
    ///           see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    func createElasticsearchDomain(input: CreateElasticsearchDomainInput) async throws -> CreateElasticsearchDomainOutputResponse
    {
        typealias createElasticsearchDomainContinuation = CheckedContinuation<CreateElasticsearchDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createElasticsearchDomainContinuation) in
            createElasticsearchDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new cross-cluster search connection from a source domain to a destination domain.</p>
    func createOutboundCrossClusterSearchConnection(input: CreateOutboundCrossClusterSearchConnectionInput) async throws -> CreateOutboundCrossClusterSearchConnectionOutputResponse
    {
        typealias createOutboundCrossClusterSearchConnectionContinuation = CheckedContinuation<CreateOutboundCrossClusterSearchConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOutboundCrossClusterSearchConnectionContinuation) in
            createOutboundCrossClusterSearchConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Create a package for use with Amazon ES domains.</p>
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutputResponse
    {
        typealias createPackageContinuation = CheckedContinuation<CreatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPackageContinuation) in
            createPackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>
    func deleteElasticsearchDomain(input: DeleteElasticsearchDomainInput) async throws -> DeleteElasticsearchDomainOutputResponse
    {
        typealias deleteElasticsearchDomainContinuation = CheckedContinuation<DeleteElasticsearchDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteElasticsearchDomainContinuation) in
            deleteElasticsearchDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>
    func deleteElasticsearchServiceRole(input: DeleteElasticsearchServiceRoleInput) async throws -> DeleteElasticsearchServiceRoleOutputResponse
    {
        typealias deleteElasticsearchServiceRoleContinuation = CheckedContinuation<DeleteElasticsearchServiceRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteElasticsearchServiceRoleContinuation) in
            deleteElasticsearchServiceRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Allows the destination domain owner to delete an existing inbound cross-cluster search connection.</p>
    func deleteInboundCrossClusterSearchConnection(input: DeleteInboundCrossClusterSearchConnectionInput) async throws -> DeleteInboundCrossClusterSearchConnectionOutputResponse
    {
        typealias deleteInboundCrossClusterSearchConnectionContinuation = CheckedContinuation<DeleteInboundCrossClusterSearchConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInboundCrossClusterSearchConnectionContinuation) in
            deleteInboundCrossClusterSearchConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Allows the source domain owner to delete an existing outbound cross-cluster search connection.</p>
    func deleteOutboundCrossClusterSearchConnection(input: DeleteOutboundCrossClusterSearchConnectionInput) async throws -> DeleteOutboundCrossClusterSearchConnectionOutputResponse
    {
        typealias deleteOutboundCrossClusterSearchConnectionContinuation = CheckedContinuation<DeleteOutboundCrossClusterSearchConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteOutboundCrossClusterSearchConnectionContinuation) in
            deleteOutboundCrossClusterSearchConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Delete the package.</p>
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutputResponse
    {
        typealias deletePackageContinuation = CheckedContinuation<DeletePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePackageContinuation) in
            deletePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.</p>
    func describeDomainAutoTunes(input: DescribeDomainAutoTunesInput) async throws -> DescribeDomainAutoTunesOutputResponse
    {
        typealias describeDomainAutoTunesContinuation = CheckedContinuation<DescribeDomainAutoTunesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainAutoTunesContinuation) in
            describeDomainAutoTunes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>
    func describeElasticsearchDomain(input: DescribeElasticsearchDomainInput) async throws -> DescribeElasticsearchDomainOutputResponse
    {
        typealias describeElasticsearchDomainContinuation = CheckedContinuation<DescribeElasticsearchDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeElasticsearchDomainContinuation) in
            describeElasticsearchDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>
    func describeElasticsearchDomainConfig(input: DescribeElasticsearchDomainConfigInput) async throws -> DescribeElasticsearchDomainConfigOutputResponse
    {
        typealias describeElasticsearchDomainConfigContinuation = CheckedContinuation<DescribeElasticsearchDomainConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeElasticsearchDomainConfigContinuation) in
            describeElasticsearchDomainConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>
    func describeElasticsearchDomains(input: DescribeElasticsearchDomainsInput) async throws -> DescribeElasticsearchDomainsOutputResponse
    {
        typealias describeElasticsearchDomainsContinuation = CheckedContinuation<DescribeElasticsearchDomainsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeElasticsearchDomainsContinuation) in
            describeElasticsearchDomains(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///     Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.
    ///     When modifying existing Domain, specify the
    ///     <code>
    ///       <a>DomainName</a>
    ///     </code>
    ///     to know what Limits are supported for modifying.
    ///   </p>
    func describeElasticsearchInstanceTypeLimits(input: DescribeElasticsearchInstanceTypeLimitsInput) async throws -> DescribeElasticsearchInstanceTypeLimitsOutputResponse
    {
        typealias describeElasticsearchInstanceTypeLimitsContinuation = CheckedContinuation<DescribeElasticsearchInstanceTypeLimitsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeElasticsearchInstanceTypeLimitsContinuation) in
            describeElasticsearchInstanceTypeLimits(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all the inbound cross-cluster search connections for a destination domain.</p>
    func describeInboundCrossClusterSearchConnections(input: DescribeInboundCrossClusterSearchConnectionsInput) async throws -> DescribeInboundCrossClusterSearchConnectionsOutputResponse
    {
        typealias describeInboundCrossClusterSearchConnectionsContinuation = CheckedContinuation<DescribeInboundCrossClusterSearchConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInboundCrossClusterSearchConnectionsContinuation) in
            describeInboundCrossClusterSearchConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all the outbound cross-cluster search connections for a source domain.</p>
    func describeOutboundCrossClusterSearchConnections(input: DescribeOutboundCrossClusterSearchConnectionsInput) async throws -> DescribeOutboundCrossClusterSearchConnectionsOutputResponse
    {
        typealias describeOutboundCrossClusterSearchConnectionsContinuation = CheckedContinuation<DescribeOutboundCrossClusterSearchConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeOutboundCrossClusterSearchConnectionsContinuation) in
            describeOutboundCrossClusterSearchConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.</p>
    func describePackages(input: DescribePackagesInput) async throws -> DescribePackagesOutputResponse
    {
        typealias describePackagesContinuation = CheckedContinuation<DescribePackagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePackagesContinuation) in
            describePackages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists available reserved Elasticsearch instance offerings.</p>
    func describeReservedElasticsearchInstanceOfferings(input: DescribeReservedElasticsearchInstanceOfferingsInput) async throws -> DescribeReservedElasticsearchInstanceOfferingsOutputResponse
    {
        typealias describeReservedElasticsearchInstanceOfferingsContinuation = CheckedContinuation<DescribeReservedElasticsearchInstanceOfferingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeReservedElasticsearchInstanceOfferingsContinuation) in
            describeReservedElasticsearchInstanceOfferings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information about reserved Elasticsearch instances for this account.</p>
    func describeReservedElasticsearchInstances(input: DescribeReservedElasticsearchInstancesInput) async throws -> DescribeReservedElasticsearchInstancesOutputResponse
    {
        typealias describeReservedElasticsearchInstancesContinuation = CheckedContinuation<DescribeReservedElasticsearchInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeReservedElasticsearchInstancesContinuation) in
            describeReservedElasticsearchInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Dissociates a package from the Amazon ES domain.</p>
    func dissociatePackage(input: DissociatePackageInput) async throws -> DissociatePackageOutputResponse
    {
        typealias dissociatePackageContinuation = CheckedContinuation<DissociatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: dissociatePackageContinuation) in
            dissociatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///         Returns a list of upgrade compatible Elastisearch versions.
    ///         You can optionally pass a
    ///         <code>
    ///           <a>DomainName</a>
    ///         </code>
    ///         to get all upgrade compatible Elasticsearch versions for that specific domain.
    ///       </p>
    func getCompatibleElasticsearchVersions(input: GetCompatibleElasticsearchVersionsInput) async throws -> GetCompatibleElasticsearchVersionsOutputResponse
    {
        typealias getCompatibleElasticsearchVersionsContinuation = CheckedContinuation<GetCompatibleElasticsearchVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCompatibleElasticsearchVersionsContinuation) in
            getCompatibleElasticsearchVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of versions of the package, along with their creation time and commit message.</p>
    func getPackageVersionHistory(input: GetPackageVersionHistoryInput) async throws -> GetPackageVersionHistoryOutputResponse
    {
        typealias getPackageVersionHistoryContinuation = CheckedContinuation<GetPackageVersionHistoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPackageVersionHistoryContinuation) in
            getPackageVersionHistory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the complete history of the last 10 upgrades that were performed on the domain.</p>
    func getUpgradeHistory(input: GetUpgradeHistoryInput) async throws -> GetUpgradeHistoryOutputResponse
    {
        typealias getUpgradeHistoryContinuation = CheckedContinuation<GetUpgradeHistoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getUpgradeHistoryContinuation) in
            getUpgradeHistory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.</p>
    func getUpgradeStatus(input: GetUpgradeStatusInput) async throws -> GetUpgradeStatusOutputResponse
    {
        typealias getUpgradeStatusContinuation = CheckedContinuation<GetUpgradeStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getUpgradeStatusContinuation) in
            getUpgradeStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>
    func listDomainNames(input: ListDomainNamesInput) async throws -> ListDomainNamesOutputResponse
    {
        typealias listDomainNamesContinuation = CheckedContinuation<ListDomainNamesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainNamesContinuation) in
            listDomainNames(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all Amazon ES domains associated with the package.</p>
    func listDomainsForPackage(input: ListDomainsForPackageInput) async throws -> ListDomainsForPackageOutputResponse
    {
        typealias listDomainsForPackageContinuation = CheckedContinuation<ListDomainsForPackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainsForPackageContinuation) in
            listDomainsForPackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>
    func listElasticsearchInstanceTypes(input: ListElasticsearchInstanceTypesInput) async throws -> ListElasticsearchInstanceTypesOutputResponse
    {
        typealias listElasticsearchInstanceTypesContinuation = CheckedContinuation<ListElasticsearchInstanceTypesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listElasticsearchInstanceTypesContinuation) in
            listElasticsearchInstanceTypes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>List all supported Elasticsearch versions</p>
    func listElasticsearchVersions(input: ListElasticsearchVersionsInput) async throws -> ListElasticsearchVersionsOutputResponse
    {
        typealias listElasticsearchVersionsContinuation = CheckedContinuation<ListElasticsearchVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listElasticsearchVersionsContinuation) in
            listElasticsearchVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all packages associated with the Amazon ES domain.</p>
    func listPackagesForDomain(input: ListPackagesForDomainInput) async throws -> ListPackagesForDomainOutputResponse
    {
        typealias listPackagesForDomainContinuation = CheckedContinuation<ListPackagesForDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPackagesForDomainContinuation) in
            listPackagesForDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns all tags for the given Elasticsearch domain.</p>
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    {
        typealias listTagsContinuation = CheckedContinuation<ListTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsContinuation) in
            listTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Allows you to purchase reserved Elasticsearch instances.</p>
    func purchaseReservedElasticsearchInstanceOffering(input: PurchaseReservedElasticsearchInstanceOfferingInput) async throws -> PurchaseReservedElasticsearchInstanceOfferingOutputResponse
    {
        typealias purchaseReservedElasticsearchInstanceOfferingContinuation = CheckedContinuation<PurchaseReservedElasticsearchInstanceOfferingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: purchaseReservedElasticsearchInstanceOfferingContinuation) in
            purchaseReservedElasticsearchInstanceOffering(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Allows the destination domain owner to reject an inbound cross-cluster search connection request.</p>
    func rejectInboundCrossClusterSearchConnection(input: RejectInboundCrossClusterSearchConnectionInput) async throws -> RejectInboundCrossClusterSearchConnectionOutputResponse
    {
        typealias rejectInboundCrossClusterSearchConnectionContinuation = CheckedContinuation<RejectInboundCrossClusterSearchConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rejectInboundCrossClusterSearchConnectionContinuation) in
            rejectInboundCrossClusterSearchConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>
    func removeTags(input: RemoveTagsInput) async throws -> RemoveTagsOutputResponse
    {
        typealias removeTagsContinuation = CheckedContinuation<RemoveTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeTagsContinuation) in
            removeTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Schedules a service software update for an Amazon ES domain.</p>
    func startElasticsearchServiceSoftwareUpdate(input: StartElasticsearchServiceSoftwareUpdateInput) async throws -> StartElasticsearchServiceSoftwareUpdateOutputResponse
    {
        typealias startElasticsearchServiceSoftwareUpdateContinuation = CheckedContinuation<StartElasticsearchServiceSoftwareUpdateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startElasticsearchServiceSoftwareUpdateContinuation) in
            startElasticsearchServiceSoftwareUpdate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>
    func updateElasticsearchDomainConfig(input: UpdateElasticsearchDomainConfigInput) async throws -> UpdateElasticsearchDomainConfigOutputResponse
    {
        typealias updateElasticsearchDomainConfigContinuation = CheckedContinuation<UpdateElasticsearchDomainConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateElasticsearchDomainConfigContinuation) in
            updateElasticsearchDomainConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a package for use with Amazon ES domains.</p>
    func updatePackage(input: UpdatePackageInput) async throws -> UpdatePackageOutputResponse
    {
        typealias updatePackageContinuation = CheckedContinuation<UpdatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePackageContinuation) in
            updatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.</p>
    func upgradeElasticsearchDomain(input: UpgradeElasticsearchDomainInput) async throws -> UpgradeElasticsearchDomainOutputResponse
    {
        typealias upgradeElasticsearchDomainContinuation = CheckedContinuation<UpgradeElasticsearchDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: upgradeElasticsearchDomainContinuation) in
            upgradeElasticsearchDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif