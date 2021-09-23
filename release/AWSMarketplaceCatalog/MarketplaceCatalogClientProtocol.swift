// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Catalog API actions allow you to manage your entities through list, describe, and update
///             capabilities. An entity can be a product or an offer on AWS Marketplace.
///
///         You can automate your entity update process by integrating the AWS Marketplace Catalog
///             API with your AWS Marketplace product build or deployment pipelines. You can also create
///             your own applications on top of the Catalog API to manage your products on AWS
///             Marketplace.
public protocol MarketplaceCatalogClientProtocol {
    /// Used to cancel an open change request. Must be sent before the status of the request
    ///             changes to APPLYING, the final stage of completing your change request. You
    ///             can describe a change during the 60-day request history retention period for API
    ///             calls.
    func cancelChangeSet(input: CancelChangeSetInput, completion: @escaping (ClientRuntime.SdkResult<CancelChangeSetOutputResponse, CancelChangeSetOutputError>) -> Void)
    /// Provides information about a given change set.
    func describeChangeSet(input: DescribeChangeSetInput, completion: @escaping (ClientRuntime.SdkResult<DescribeChangeSetOutputResponse, DescribeChangeSetOutputError>) -> Void)
    /// Returns the metadata and content of the entity.
    func describeEntity(input: DescribeEntityInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEntityOutputResponse, DescribeEntityOutputError>) -> Void)
    /// Returns the list of change sets owned by the account being used to make the call. You
    ///             can filter this list by providing any combination of entityId,
    ///                 ChangeSetName, and status. If you provide more than one filter, the API
    ///             operation applies a logical AND between the filters.
    ///
    ///         You can describe a change during the 60-day request history retention period for API
    ///             calls.
    func listChangeSets(input: ListChangeSetsInput, completion: @escaping (ClientRuntime.SdkResult<ListChangeSetsOutputResponse, ListChangeSetsOutputError>) -> Void)
    /// Provides the list of entities of a given type.
    func listEntities(input: ListEntitiesInput, completion: @escaping (ClientRuntime.SdkResult<ListEntitiesOutputResponse, ListEntitiesOutputError>) -> Void)
    /// This operation allows you to request changes for your entities. Within a single
    ///             ChangeSet, you cannot start the same change type against the same entity multiple times.
    ///             Additionally, when a ChangeSet is running, all the entities targeted by the different
    ///             changes are locked until the ChangeSet has completed (either succeeded, cancelled, or failed). If
    ///             you try to start a ChangeSet containing a change against an entity that is already
    ///             locked, you will receive a ResourceInUseException.
    ///
    ///         For example, you cannot start the ChangeSet described in the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples">example later in this topic, because it contains two changes to execute the same change
    ///             type (AddRevisions) against the same entity
    ///             (entity-id@1).
    ///
    ///         For more information about working with change sets, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">
    ///             Working with change sets.
    func startChangeSet(input: StartChangeSetInput, completion: @escaping (ClientRuntime.SdkResult<StartChangeSetOutputResponse, StartChangeSetOutputError>) -> Void)
}

public enum MarketplaceCatalogClientTypes {}
