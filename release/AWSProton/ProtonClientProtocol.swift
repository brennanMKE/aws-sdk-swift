// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the AWS Proton Service API Reference. It provides descriptions, syntax and usage examples for each of the <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html">actions and <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html">data types for the AWS Proton service.
///         The documentation for each action shows the Query API request parameters and the XML response.
///         Alternatively, you can use the AWS CLI to access an API. For more information, see the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS Command Line Interface User Guide.
///         The AWS Proton service is a two-pronged automation framework. Administrators create service templates to provide standardized
///             infrastructure and deployment tooling for serverless and container based applications. Developers, in turn, select from the available
///             service templates to automate their application or service deployments.
///         Because administrators define the infrastructure and tooling that AWS Proton deploys and manages, they need permissions to use all of the
///             listed API operations.
///         When developers select a specific infrastructure and tooling set, AWS Proton deploys their applications. To monitor their applications
///             that are running on AWS Proton, developers need permissions to the service create, list,
///                 update and delete API operations and the service instance list and
///                 update API operations.
///         To learn more about AWS Proton administration, see the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/Welcome.html">AWS Proton
///                 Administrator Guide.
///         To learn more about deploying serverless and containerized applications on AWS Proton, see the <a href="https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html">AWS Proton User Guide.
///
///             Ensuring Idempotency
///
///         When you make a mutating API request, the request typically returns a result before the asynchronous workflows of the operation are
///             complete. Operations might also time out or encounter other server issues before they're complete, even if the request already returned a
///             result. This might make it difficult to determine whether the request succeeded. Moreover, you might need to retry the request multiple
///             times to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the
///             operation occurs multiple times. This means that you might create more resources than you intended.
///
///             Idempotency ensures that an API request action completes no more than one time. With an idempotent request, if the
///             original request action completes successfully, any subsequent retries complete successfully without performing any further actions.
///             However, the result might contain updated information, such as the current creation status.
///         The following lists of APIs are grouped according to methods that ensure idempotency.
///
///             Idempotent create APIs with a client token
///
///         The API actions in this list support idempotency with the use of a client token. The corresponding AWS CLI
///             commands also support idempotency using a client token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. To
///             make an idempotent API request using one of these actions, specify a client token in the request. We recommend that you
///                 don't reuse the same client token for other API requests. If you don’t provide a client token for these APIs, a
///             default client token is automatically provided by SDKs.
///         Given a request action that has succeeded:
///         If you retry the request using the same client token and the same parameters, the retry succeeds without performing any further actions
///             other than returning the original resource detail data in the response.
///         If you retry the request using the same client token, but one or more of the parameters are different, the retry throws a
///                 ValidationException with an IdempotentParameterMismatch error.
///         Client tokens expire eight hours after a request is made. If you retry the request with the expired token, a new resource is
///             created.
///         If the original resource is deleted and you retry the request, a new resource is created.
///         Idempotent create APIs with a client token:
///
///
///                 CreateEnvironmentTemplateVersion
///
///
///                 CreateServiceTemplateVersion
///
///
///                 CreateEnvironmentAccountConnection
///
///
///
///             Idempotent create APIs
///
///         Given a request action that has succeeded:
///         If you retry the request with an API from this group, and the original resource hasn't been modified, the retry
///             succeeds without performing any further actions other than returning the original resource detail data in the response.
///         If the original resource has been modified, the retry throws a ConflictException.
///         If you retry with different input parameters, the retry throws a ValidationException with an
///                 IdempotentParameterMismatch error.
///         Idempotent create APIs:
///
///
///                 CreateEnvironmentTemplate
///
///
///                 CreateServiceTemplate
///
///
///                 CreateEnvironment
///
///
///                 CreateService
///
///
///
///             Idempotent delete APIs
///
///         Given a request action that has succeeded:
///         When you retry the request with an API from this group and the resource was deleted, its metadata is returned in the response.
///         If you retry and the resource doesn't exist, the response is empty.
///         In both cases, the retry succeeds.
///         Idempotent delete APIs:
///
///
///                 DeleteEnvironmentTemplate
///
///
///                 DeleteEnvironmentTemplateVersion
///
///
///                 DeleteServiceTemplate
///
///
///                 DeleteServiceTemplateVersion
///
///
///                 DeleteEnvironmentAccountConnection
///
///
///
///             Asynchronous idempotent delete APIs
///
///         Given a request action that has succeeded:
///         If you retry the request with an API from this group, if the original request delete operation status is
///             DELETE_IN_PROGRESS, the retry returns the resource detail data in the response without performing any further actions.
///         If the original request delete operation is complete, a retry returns an empty response.
///         Asynchronous idempotent delete APIs:
///
///
///                 DeleteEnvironment
///
///
///                 DeleteService
///
///
public protocol ProtonClientProtocol {
    /// In a management account, an environment account connection request is accepted. When the environment account connection request is
    ///             accepted, AWS Proton can use the associated IAM role to provision environment infrastructure resources in the associated environment
    ///             account.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func acceptEnvironmentAccountConnection(input: AcceptEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<AcceptEnvironmentAccountConnectionOutputResponse, AcceptEnvironmentAccountConnectionOutputError>) -> Void)
    /// Attempts to cancel an environment deployment on an UpdateEnvironment action, if the deployment is
    ///                 IN_PROGRESS. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-update.html">Update an environment in the AWS Proton Administrator guide.
    ///         The following list includes potential cancellation scenarios.
    ///
    ///
    ///                 If the cancellation attempt succeeds, the resulting deployment state is CANCELLED.
    ///
    ///
    ///                 If the cancellation attempt fails, the resulting deployment state is FAILED.
    ///
    ///
    ///                 If the current UpdateEnvironment action succeeds before the cancellation attempt starts, the resulting
    ///                     deployment state is SUCCEEDED and the cancellation attempt has no effect.
    ///
    ///
    func cancelEnvironmentDeployment(input: CancelEnvironmentDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<CancelEnvironmentDeploymentOutputResponse, CancelEnvironmentDeploymentOutputError>) -> Void)
    /// Attempts to cancel a service instance deployment on an UpdateServiceInstance action, if the deployment is
    ///                 IN_PROGRESS. For more information, see Update a service instance in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-instance-update.html">AWS Proton Administrator guide or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-instance-update.html">AWS Proton User guide.
    ///         The following list includes potential cancellation scenarios.
    ///
    ///
    ///                 If the cancellation attempt succeeds, the resulting deployment state is CANCELLED.
    ///
    ///
    ///                 If the cancellation attempt fails, the resulting deployment state is FAILED.
    ///
    ///
    ///                 If the current UpdateServiceInstance action succeeds before the cancellation attempt starts, the resulting
    ///                     deployment state is SUCCEEDED and the cancellation attempt has no effect.
    ///
    ///
    func cancelServiceInstanceDeployment(input: CancelServiceInstanceDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<CancelServiceInstanceDeploymentOutputResponse, CancelServiceInstanceDeploymentOutputError>) -> Void)
    /// Attempts to cancel a service pipeline deployment on an UpdateServicePipeline action, if the deployment is
    ///                 IN_PROGRESS. For more information, see Update a service pipeline in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-pipeline-update.html">AWS Proton Administrator guide or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-pipeline-update.html">AWS Proton User guide.
    ///         The following list includes potential cancellation scenarios.
    ///
    ///
    ///                 If the cancellation attempt succeeds, the resulting deployment state is CANCELLED.
    ///
    ///
    ///                 If the cancellation attempt fails, the resulting deployment state is FAILED.
    ///
    ///
    ///                 If the current UpdateServicePipeline action succeeds before the cancellation attempt starts, the resulting
    ///                     deployment state is SUCCEEDED and the cancellation attempt has no effect.
    ///
    ///
    func cancelServicePipelineDeployment(input: CancelServicePipelineDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<CancelServicePipelineDeploymentOutputResponse, CancelServicePipelineDeploymentOutputError>) -> Void)
    /// Deploy a new environment. An AWS Proton environment is created from an environment template that defines infrastructure and resources
    ///             that can be shared across services. For more information, see the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html">Environments in the AWS Proton Administrator
    ///             Guide.
    ///
    func createEnvironment(input: CreateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>) -> Void)
    /// Create an environment account connection in an environment account so that environment infrastructure resources can be provisioned in
    ///             the environment account from a management account.
    ///         An environment account connection is a secure bi-directional connection between a management account and an
    ///                 environment account that maintains authorization and permissions. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account connections in the
    ///                 AWS Proton Administrator guide.
    func createEnvironmentAccountConnection(input: CreateEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentAccountConnectionOutputResponse, CreateEnvironmentAccountConnectionOutputError>) -> Void)
    /// Create an environment template for AWS Proton. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html">Environment Templates in the AWS Proton Administrator
    ///                 Guide.
    ///         You can create an environment template in one of the two following ways:
    ///
    ///
    ///                 Register and publish a standard environment template that instructs AWS Proton to deploy and manage
    ///                     environment infrastructure.
    ///
    ///
    ///                 Register and publish a customer managed environment template that connects AWS Proton to your existing
    ///                     provisioned infrastructure that you manage. AWS Proton doesn't manage your existing provisioned
    ///                     infrastructure. To create an environment template for customer provisioned and managed infrastructure, include the
    ///                         provisioning parameter and set the value to CUSTOMER_MANAGED. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/template-create.html">Register and publish an environment template
    ///                     in the AWS Proton Administrator Guide.
    ///
    ///
    func createEnvironmentTemplate(input: CreateEnvironmentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentTemplateOutputResponse, CreateEnvironmentTemplateOutputError>) -> Void)
    /// Create a new major or minor version of an environment template. A major version of an environment template is a version that
    ///                 isn't backwards compatible. A minor version of an environment template is a version that's backwards compatible
    ///             within its major version.
    func createEnvironmentTemplateVersion(input: CreateEnvironmentTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentTemplateVersionOutputResponse, CreateEnvironmentTemplateVersionOutputError>) -> Void)
    /// Create an AWS Proton service. An AWS Proton service is an instantiation of a service template and often includes several service instances
    ///             and pipeline. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-services.html">Services in
    ///             the AWS Proton Administrator Guide and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-service.html">Services in the AWS Proton User Guide.
    func createService(input: CreateServiceInput, completion: @escaping (ClientRuntime.SdkResult<CreateServiceOutputResponse, CreateServiceOutputError>) -> Void)
    /// Create a service template. The administrator creates a service template to define standardized infrastructure and an optional CICD
    ///             service pipeline. Developers, in turn, select the service template from AWS Proton. If the selected service template includes a service
    ///             pipeline definition, they provide a link to their source code repository. AWS Proton then deploys and manages the infrastructure defined by
    ///             the selected service template. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/managing-svc-templates.html">Service Templates in the AWS Proton Administrator
    ///                 Guide.
    func createServiceTemplate(input: CreateServiceTemplateInput, completion: @escaping (ClientRuntime.SdkResult<CreateServiceTemplateOutputResponse, CreateServiceTemplateOutputError>) -> Void)
    /// Create a new major or minor version of a service template. A major version of a service template is a version that
    ///                 isn't backwards compatible. A minor version of a service template is a version that's backwards compatible within
    ///             its major version.
    func createServiceTemplateVersion(input: CreateServiceTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateServiceTemplateVersionOutputResponse, CreateServiceTemplateVersionOutputError>) -> Void)
    /// Delete an environment.
    func deleteEnvironment(input: DeleteEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>) -> Void)
    /// In an environment account, delete an environment account connection.
    ///         After you delete an environment account connection that’s in use by an AWS Proton environment, AWS Proton can’t
    ///             manage the environment infrastructure resources until a new environment account connection is accepted for the environment account and
    ///             associated environment. You're responsible for cleaning up provisioned resources that remain without an environment connection.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func deleteEnvironmentAccountConnection(input: DeleteEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentAccountConnectionOutputResponse, DeleteEnvironmentAccountConnectionOutputError>) -> Void)
    /// If no other major or minor versions of an environment template exist, delete the environment template.
    func deleteEnvironmentTemplate(input: DeleteEnvironmentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentTemplateOutputResponse, DeleteEnvironmentTemplateOutputError>) -> Void)
    /// If no other minor versions of an environment template exist, delete a major version of the environment template if it's not the
    ///                 Recommended version. Delete the Recommended version of the environment template if no other major versions
    ///             or minor versions of the environment template exist. A major version of an environment template is a version that's not backwards
    ///             compatible.
    ///         Delete a minor version of an environment template if it isn't the Recommended version. Delete a
    ///                 Recommended minor version of the environment template if no other minor versions of the environment template exist. A
    ///             minor version of an environment template is a version that's backwards compatible.
    func deleteEnvironmentTemplateVersion(input: DeleteEnvironmentTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentTemplateVersionOutputResponse, DeleteEnvironmentTemplateVersionOutputError>) -> Void)
    /// Delete a service.
    func deleteService(input: DeleteServiceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteServiceOutputResponse, DeleteServiceOutputError>) -> Void)
    /// If no other major or minor versions of the service template exist, delete the service template.
    func deleteServiceTemplate(input: DeleteServiceTemplateInput, completion: @escaping (ClientRuntime.SdkResult<DeleteServiceTemplateOutputResponse, DeleteServiceTemplateOutputError>) -> Void)
    /// If no other minor versions of a service template exist, delete a major version of the service template if it's not the
    ///                 Recommended version. Delete the Recommended version of the service template if no other major versions or
    ///             minor versions of the service template exist. A major version of a service template is a version that isn't backwards
    ///             compatible.
    ///         Delete a minor version of a service template if it's not the Recommended version. Delete a Recommended minor
    ///             version of the service template if no other minor versions of the service template exist. A minor version of a service template is a
    ///             version that's backwards compatible.
    func deleteServiceTemplateVersion(input: DeleteServiceTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteServiceTemplateVersionOutputResponse, DeleteServiceTemplateVersionOutputError>) -> Void)
    /// Get detail data for the AWS Proton pipeline service role.
    func getAccountSettings(input: GetAccountSettingsInput, completion: @escaping (ClientRuntime.SdkResult<GetAccountSettingsOutputResponse, GetAccountSettingsOutputError>) -> Void)
    /// Get detail data for an environment.
    func getEnvironment(input: GetEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentOutputResponse, GetEnvironmentOutputError>) -> Void)
    /// In an environment account, view the detail data for an environment account connection.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func getEnvironmentAccountConnection(input: GetEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentAccountConnectionOutputResponse, GetEnvironmentAccountConnectionOutputError>) -> Void)
    /// Get detail data for an environment template.
    func getEnvironmentTemplate(input: GetEnvironmentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentTemplateOutputResponse, GetEnvironmentTemplateOutputError>) -> Void)
    /// View detail data for a major or minor version of an environment template.
    func getEnvironmentTemplateVersion(input: GetEnvironmentTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentTemplateVersionOutputResponse, GetEnvironmentTemplateVersionOutputError>) -> Void)
    /// Get detail data for a service.
    func getService(input: GetServiceInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceOutputResponse, GetServiceOutputError>) -> Void)
    /// Get detail data for a service instance. A service instance is an instantiation of service template, which is running in a specific
    ///             environment.
    func getServiceInstance(input: GetServiceInstanceInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceInstanceOutputResponse, GetServiceInstanceOutputError>) -> Void)
    /// Get detail data for a service template.
    func getServiceTemplate(input: GetServiceTemplateInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceTemplateOutputResponse, GetServiceTemplateOutputError>) -> Void)
    /// View detail data for a major or minor version of a service template.
    func getServiceTemplateVersion(input: GetServiceTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceTemplateVersionOutputResponse, GetServiceTemplateVersionOutputError>) -> Void)
    /// View a list of environment account connections.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func listEnvironmentAccountConnections(input: ListEnvironmentAccountConnectionsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentAccountConnectionsOutputResponse, ListEnvironmentAccountConnectionsOutputError>) -> Void)
    /// List environments with detail data summaries.
    func listEnvironments(input: ListEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>) -> Void)
    /// List environment templates.
    func listEnvironmentTemplates(input: ListEnvironmentTemplatesInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentTemplatesOutputResponse, ListEnvironmentTemplatesOutputError>) -> Void)
    /// List major or minor versions of an environment template with detail data.
    func listEnvironmentTemplateVersions(input: ListEnvironmentTemplateVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentTemplateVersionsOutputResponse, ListEnvironmentTemplateVersionsOutputError>) -> Void)
    /// List service instances with summaries of detail data.
    func listServiceInstances(input: ListServiceInstancesInput, completion: @escaping (ClientRuntime.SdkResult<ListServiceInstancesOutputResponse, ListServiceInstancesOutputError>) -> Void)
    /// List services with summaries of detail data.
    func listServices(input: ListServicesInput, completion: @escaping (ClientRuntime.SdkResult<ListServicesOutputResponse, ListServicesOutputError>) -> Void)
    /// List service templates with detail data.
    func listServiceTemplates(input: ListServiceTemplatesInput, completion: @escaping (ClientRuntime.SdkResult<ListServiceTemplatesOutputResponse, ListServiceTemplatesOutputError>) -> Void)
    /// List major or minor versions of a service template with detail data.
    func listServiceTemplateVersions(input: ListServiceTemplateVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListServiceTemplateVersionsOutputResponse, ListServiceTemplateVersionsOutputError>) -> Void)
    /// List tags for a resource. For more information, see AWS Proton resources and tagging in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">AWS Proton Administrator Guide or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">AWS Proton User Guide.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// In a management account, reject an environment account connection from another environment account.
    ///         After you reject an environment account connection request, you won’t be able to accept or use the rejected
    ///             environment account connection.
    ///         You can’t reject an environment account connection that is connected to an environment.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func rejectEnvironmentAccountConnection(input: RejectEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<RejectEnvironmentAccountConnectionOutputResponse, RejectEnvironmentAccountConnectionOutputError>) -> Void)
    /// Tag a resource. For more information, see AWS Proton resources and tagging in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">AWS Proton Administrator Guide or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">AWS Proton User Guide.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Remove a tag from a resource. For more information, see AWS Proton resources and tagging in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">AWS Proton Administrator Guide or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">AWS Proton User Guide.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Update the AWS Proton pipeline service account settings.
    func updateAccountSettings(input: UpdateAccountSettingsInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAccountSettingsOutputResponse, UpdateAccountSettingsOutputError>) -> Void)
    /// Update an environment.
    ///         If the environment is associated with an environment account connection, don't update or include the
    ///                 protonServiceRoleArn parameter to update or connect to an environment account connection.
    ///         You can only update to a new environment account connection if it was created in the same environment account that the current
    ///             environment account connection was created in and is associated with the current environment.
    ///         If the environment isn't associated with an environment account connection, don't update or
    ///             include the environmentAccountConnectionId parameter to update or connect to an environment account connection.
    ///         You can update either the environmentAccountConnectionId or protonServiceRoleArn parameter and value. You
    ///             can’t update both.
    ///         There are four modes for updating an environment as described in the following. The deploymentType field defines the
    ///             mode.
    ///
    ///             <dt/>
    ///
    ///
    ///                   NONE
    ///
    ///                     In this mode, a deployment doesn't occur. Only the requested metadata parameters are updated.
    ///
    ///             <dt/>
    ///
    ///
    ///                   CURRENT_VERSION
    ///
    ///                     In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are
    ///                         updated. Don’t include minor or major version parameters when you use this
    ///                         deployment-type.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MINOR_VERSION
    ///
    ///                     In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current
    ///                         major version in use, by default. You can also specify a different minor version of the current major version in use.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MAJOR_VERSION
    ///
    ///                     In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of
    ///                         the current template, by default. You can also specify a different major version that's higher than the major version in use
    ///                         and a minor version (optional).
    ///
    ///
    func updateEnvironment(input: UpdateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>) -> Void)
    /// In an environment account, update an environment account connection to use a new IAM role.
    ///         For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    ///                 connections in the AWS Proton Administrator guide.
    func updateEnvironmentAccountConnection(input: UpdateEnvironmentAccountConnectionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentAccountConnectionOutputResponse, UpdateEnvironmentAccountConnectionOutputError>) -> Void)
    /// Update an environment template.
    func updateEnvironmentTemplate(input: UpdateEnvironmentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentTemplateOutputResponse, UpdateEnvironmentTemplateOutputError>) -> Void)
    /// Update a major or minor version of an environment template.
    func updateEnvironmentTemplateVersion(input: UpdateEnvironmentTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentTemplateVersionOutputResponse, UpdateEnvironmentTemplateVersionOutputError>) -> Void)
    /// Edit a service description or use a spec to add and delete service instances.
    ///
    ///             Existing service instances and the service pipeline can't be edited using this API. They can only be
    ///                 deleted.
    ///
    ///         Use the description parameter to modify the description.
    ///         Edit the spec parameter to add or delete instances.
    func updateService(input: UpdateServiceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServiceOutputResponse, UpdateServiceOutputError>) -> Void)
    /// Update a service instance.
    ///         There are four modes for updating a service instance as described in the following. The deploymentType field defines the
    ///             mode.
    ///
    ///             <dt/>
    ///
    ///
    ///                   NONE
    ///
    ///                     In this mode, a deployment doesn't occur. Only the requested metadata parameters are updated.
    ///
    ///             <dt/>
    ///
    ///
    ///                   CURRENT_VERSION
    ///
    ///                     In this mode, the service instance is deployed and updated with the new spec that you provide. Only requested parameters are
    ///                         updated. Don’t include minor or major version parameters when you use this
    ///                         deployment-type.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MINOR_VERSION
    ///
    ///                     In this mode, the service instance is deployed and updated with the published, recommended (latest) minor version of the
    ///                         current major version in use, by default. You can also specify a different minor version of the current major version in
    ///                         use.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MAJOR_VERSION
    ///
    ///                     In this mode, the service instance is deployed and updated with the published, recommended (latest) major and minor version
    ///                         of the current template, by default. You can also specify a different major version that is higher than the major version in
    ///                         use and a minor version (optional).
    ///
    ///
    func updateServiceInstance(input: UpdateServiceInstanceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServiceInstanceOutputResponse, UpdateServiceInstanceOutputError>) -> Void)
    /// Update the service pipeline.
    ///         There are four modes for updating a service pipeline as described in the following. The deploymentType field defines the
    ///             mode.
    ///
    ///             <dt/>
    ///
    ///
    ///                   NONE
    ///
    ///                     In this mode, a deployment doesn't occur. Only the requested metadata parameters are updated.
    ///
    ///             <dt/>
    ///
    ///
    ///                   CURRENT_VERSION
    ///
    ///                     In this mode, the service pipeline is deployed and updated with the new spec that you provide. Only requested parameters are
    ///                         updated. Don’t include minor or major version parameters when you use this
    ///                         deployment-type.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MINOR_VERSION
    ///
    ///                     In this mode, the service pipeline is deployed and updated with the published, recommended (latest) minor version of the
    ///                         current major version in use, by default. You can also specify a different minor version of the current major version in
    ///                         use.
    ///
    ///             <dt/>
    ///
    ///
    ///                   MAJOR_VERSION
    ///
    ///                     In this mode, the service pipeline is deployed and updated with the published, recommended (latest) major and minor version
    ///                         of the current template by default. You can also specify a different major version that is higher than the major version in
    ///                         use and a minor version (optional).
    ///
    ///
    func updateServicePipeline(input: UpdateServicePipelineInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServicePipelineOutputResponse, UpdateServicePipelineOutputError>) -> Void)
    /// Update a service template.
    func updateServiceTemplate(input: UpdateServiceTemplateInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServiceTemplateOutputResponse, UpdateServiceTemplateOutputError>) -> Void)
    /// Update a major or minor version of a service template.
    func updateServiceTemplateVersion(input: UpdateServiceTemplateVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServiceTemplateVersionOutputResponse, UpdateServiceTemplateVersionOutputError>) -> Void)
}

public enum ProtonClientTypes {}
