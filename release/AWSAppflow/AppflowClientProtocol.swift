// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Welcome to the Amazon AppFlow API reference. This guide is for developers who need
///       detailed information about the Amazon AppFlow API operations, data types, and errors.
///
///          Amazon AppFlow is a fully managed integration service that enables you to securely
///       transfer data between software as a service (SaaS) applications like Salesforce, Marketo,
///       Slack, and ServiceNow, and AWS services like Amazon S3 and Amazon Redshift.
///
///
///
///          Use the following links to get started on the Amazon AppFlow API:
///
///
///
///
///                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html">Actions: An alphabetical list of all Amazon AppFlow API operations.
///
///
///
///                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html">Data
///             types: An alphabetical list of all Amazon AppFlow data types.
///
///
///
///                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html">Common parameters: Parameters that all Query operations can use.
///
///
///
///                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html">Common
///             errors: Client and server errors that all operations can return.
///
///
///
///          If you're new to Amazon AppFlow, we recommend that you review the <a href="https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html">Amazon AppFlow User
///         Guide.
///          Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include
///       applicable OAuth attributes (such as auth-code and redirecturi) with
///       the connector-specific ConnectorProfileProperties when creating a new connector
///       profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the
///         <a href="https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm">
///                Authorize Apps with OAuth
///              documentation.
public protocol AppflowClientProtocol {
    ///  Creates a new connector profile associated with your AWS account. There is a soft quota
    ///       of 100 connector profiles per AWS account. If you need more connector profiles than this quota
    ///       allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support
    ///       channel.
    func createConnectorProfile(input: CreateConnectorProfileInput, completion: @escaping (ClientRuntime.SdkResult<CreateConnectorProfileOutputResponse, CreateConnectorProfileOutputError>) -> Void)
    ///  Enables your application to create a new flow using Amazon AppFlow. You must create a
    ///       connector profile before calling this API. Please note that the Request Syntax below shows
    ///       syntax for multiple destinations, however, you can only transfer data to one item in this list
    ///       at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    func createFlow(input: CreateFlowInput, completion: @escaping (ClientRuntime.SdkResult<CreateFlowOutputResponse, CreateFlowOutputError>) -> Void)
    ///  Enables you to delete an existing connector profile.
    func deleteConnectorProfile(input: DeleteConnectorProfileInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConnectorProfileOutputResponse, DeleteConnectorProfileOutputError>) -> Void)
    ///  Enables your application to delete an existing flow. Before deleting the flow, Amazon
    ///       AppFlow validates the request by checking the flow configuration and status. You can delete
    ///       flows one at a time.
    func deleteFlow(input: DeleteFlowInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFlowOutputResponse, DeleteFlowOutputError>) -> Void)
    ///  Provides details regarding the entity used with the connector, with a description of the
    ///       data model for each entity.
    func describeConnectorEntity(input: DescribeConnectorEntityInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConnectorEntityOutputResponse, DescribeConnectorEntityOutputError>) -> Void)
    ///  Returns a list of connector-profile details matching the provided
    ///         connector-profile names and connector-types. Both input lists are
    ///       optional, and you can use them to filter the result.
    ///          If no names or connector-types are provided, returns all connector profiles
    ///       in a paginated form. If there is no match, this operation returns an empty list.
    func describeConnectorProfiles(input: DescribeConnectorProfilesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConnectorProfilesOutputResponse, DescribeConnectorProfilesOutputError>) -> Void)
    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you
    ///       don't specify a connector type, this operation describes all connectors vended by Amazon
    ///       AppFlow. If there are more connectors than can be returned in one page, the response contains
    ///       a nextToken object, which can be be passed in to the next call to the
    ///         DescribeConnectors API operation to retrieve the next page.
    func describeConnectors(input: DescribeConnectorsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConnectorsOutputResponse, DescribeConnectorsOutputError>) -> Void)
    ///  Provides a description of the specified flow.
    func describeFlow(input: DescribeFlowInput, completion: @escaping (ClientRuntime.SdkResult<DescribeFlowOutputResponse, DescribeFlowOutputError>) -> Void)
    ///  Fetches the execution history of the flow.
    func describeFlowExecutionRecords(input: DescribeFlowExecutionRecordsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeFlowExecutionRecordsOutputResponse, DescribeFlowExecutionRecordsOutputError>) -> Void)
    ///  Returns the list of available connector entities supported by Amazon AppFlow. For
    ///       example, you can query Salesforce for Account and
    ///         Opportunity entities, or query ServiceNow for the
    ///         Incident entity.
    func listConnectorEntities(input: ListConnectorEntitiesInput, completion: @escaping (ClientRuntime.SdkResult<ListConnectorEntitiesOutputResponse, ListConnectorEntitiesOutputError>) -> Void)
    ///  Lists all of the flows associated with your account.
    func listFlows(input: ListFlowsInput, completion: @escaping (ClientRuntime.SdkResult<ListFlowsOutputResponse, ListFlowsOutputError>) -> Void)
    ///  Retrieves the tags that are associated with a specified flow.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    ///  Activates an existing flow. For on-demand flows, this operation runs the flow
    ///       immediately. For schedule and event-triggered flows, this operation activates the flow.
    func startFlow(input: StartFlowInput, completion: @escaping (ClientRuntime.SdkResult<StartFlowOutputResponse, StartFlowOutputError>) -> Void)
    ///  Deactivates the existing flow. For on-demand flows, this operation returns an
    ///         unsupportedOperationException error message. For schedule and event-triggered
    ///       flows, this operation deactivates the flow.
    func stopFlow(input: StopFlowInput, completion: @escaping (ClientRuntime.SdkResult<StopFlowOutputResponse, StopFlowOutputError>) -> Void)
    ///  Applies a tag to the specified flow.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    ///  Removes a tag from the specified flow.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    ///  Updates a given connector profile associated with your account.
    func updateConnectorProfile(input: UpdateConnectorProfileInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConnectorProfileOutputResponse, UpdateConnectorProfileOutputError>) -> Void)
    ///  Updates an existing flow.
    func updateFlow(input: UpdateFlowInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFlowOutputResponse, UpdateFlowOutputError>) -> Void)
}

public enum AppflowClientTypes {}
