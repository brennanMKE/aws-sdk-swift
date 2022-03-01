// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
public protocol GreengrassClientProtocol {
    /// Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
    func associateRoleToGroup(input: AssociateRoleToGroupInput) async throws -> AssociateRoleToGroupOutputResponse
    /// Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
    func associateServiceRoleToAccount(input: AssociateServiceRoleToAccountInput) async throws -> AssociateServiceRoleToAccountOutputResponse
    /// Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
    func createConnectorDefinition(input: CreateConnectorDefinitionInput) async throws -> CreateConnectorDefinitionOutputResponse
    /// Creates a version of a connector definition which has already been defined.
    func createConnectorDefinitionVersion(input: CreateConnectorDefinitionVersionInput) async throws -> CreateConnectorDefinitionVersionOutputResponse
    /// Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
    func createCoreDefinition(input: CreateCoreDefinitionInput) async throws -> CreateCoreDefinitionOutputResponse
    /// Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
    func createCoreDefinitionVersion(input: CreateCoreDefinitionVersionInput) async throws -> CreateCoreDefinitionVersionOutputResponse
    /// Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
    func createDeployment(input: CreateDeploymentInput) async throws -> CreateDeploymentOutputResponse
    /// Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
    func createDeviceDefinition(input: CreateDeviceDefinitionInput) async throws -> CreateDeviceDefinitionOutputResponse
    /// Creates a version of a device definition that has already been defined.
    func createDeviceDefinitionVersion(input: CreateDeviceDefinitionVersionInput) async throws -> CreateDeviceDefinitionVersionOutputResponse
    /// Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
    func createFunctionDefinition(input: CreateFunctionDefinitionInput) async throws -> CreateFunctionDefinitionOutputResponse
    /// Creates a version of a Lambda function definition that has already been defined.
    func createFunctionDefinitionVersion(input: CreateFunctionDefinitionVersionInput) async throws -> CreateFunctionDefinitionVersionOutputResponse
    /// Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
    func createGroup(input: CreateGroupInput) async throws -> CreateGroupOutputResponse
    /// Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
    func createGroupCertificateAuthority(input: CreateGroupCertificateAuthorityInput) async throws -> CreateGroupCertificateAuthorityOutputResponse
    /// Creates a version of a group which has already been defined.
    func createGroupVersion(input: CreateGroupVersionInput) async throws -> CreateGroupVersionOutputResponse
    /// Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
    func createLoggerDefinition(input: CreateLoggerDefinitionInput) async throws -> CreateLoggerDefinitionOutputResponse
    /// Creates a version of a logger definition that has already been defined.
    func createLoggerDefinitionVersion(input: CreateLoggerDefinitionVersionInput) async throws -> CreateLoggerDefinitionVersionOutputResponse
    /// Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
    func createResourceDefinition(input: CreateResourceDefinitionInput) async throws -> CreateResourceDefinitionOutputResponse
    /// Creates a version of a resource definition that has already been defined.
    func createResourceDefinitionVersion(input: CreateResourceDefinitionVersionInput) async throws -> CreateResourceDefinitionVersionOutputResponse
    /// Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
    func createSoftwareUpdateJob(input: CreateSoftwareUpdateJobInput) async throws -> CreateSoftwareUpdateJobOutputResponse
    /// Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
    func createSubscriptionDefinition(input: CreateSubscriptionDefinitionInput) async throws -> CreateSubscriptionDefinitionOutputResponse
    /// Creates a version of a subscription definition which has already been defined.
    func createSubscriptionDefinitionVersion(input: CreateSubscriptionDefinitionVersionInput) async throws -> CreateSubscriptionDefinitionVersionOutputResponse
    /// Deletes a connector definition.
    func deleteConnectorDefinition(input: DeleteConnectorDefinitionInput) async throws -> DeleteConnectorDefinitionOutputResponse
    /// Deletes a core definition.
    func deleteCoreDefinition(input: DeleteCoreDefinitionInput) async throws -> DeleteCoreDefinitionOutputResponse
    /// Deletes a device definition.
    func deleteDeviceDefinition(input: DeleteDeviceDefinitionInput) async throws -> DeleteDeviceDefinitionOutputResponse
    /// Deletes a Lambda function definition.
    func deleteFunctionDefinition(input: DeleteFunctionDefinitionInput) async throws -> DeleteFunctionDefinitionOutputResponse
    /// Deletes a group.
    func deleteGroup(input: DeleteGroupInput) async throws -> DeleteGroupOutputResponse
    /// Deletes a logger definition.
    func deleteLoggerDefinition(input: DeleteLoggerDefinitionInput) async throws -> DeleteLoggerDefinitionOutputResponse
    /// Deletes a resource definition.
    func deleteResourceDefinition(input: DeleteResourceDefinitionInput) async throws -> DeleteResourceDefinitionOutputResponse
    /// Deletes a subscription definition.
    func deleteSubscriptionDefinition(input: DeleteSubscriptionDefinitionInput) async throws -> DeleteSubscriptionDefinitionOutputResponse
    /// Disassociates the role from a group.
    func disassociateRoleFromGroup(input: DisassociateRoleFromGroupInput) async throws -> DisassociateRoleFromGroupOutputResponse
    /// Disassociates the service role from your account. Without a service role, deployments will not work.
    func disassociateServiceRoleFromAccount(input: DisassociateServiceRoleFromAccountInput) async throws -> DisassociateServiceRoleFromAccountOutputResponse
    /// Retrieves the role associated with a particular group.
    func getAssociatedRole(input: GetAssociatedRoleInput) async throws -> GetAssociatedRoleOutputResponse
    /// Returns the status of a bulk deployment.
    func getBulkDeploymentStatus(input: GetBulkDeploymentStatusInput) async throws -> GetBulkDeploymentStatusOutputResponse
    /// Retrieves the connectivity information for a core.
    func getConnectivityInfo(input: GetConnectivityInfoInput) async throws -> GetConnectivityInfoOutputResponse
    /// Retrieves information about a connector definition.
    func getConnectorDefinition(input: GetConnectorDefinitionInput) async throws -> GetConnectorDefinitionOutputResponse
    /// Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
    func getConnectorDefinitionVersion(input: GetConnectorDefinitionVersionInput) async throws -> GetConnectorDefinitionVersionOutputResponse
    /// Retrieves information about a core definition version.
    func getCoreDefinition(input: GetCoreDefinitionInput) async throws -> GetCoreDefinitionOutputResponse
    /// Retrieves information about a core definition version.
    func getCoreDefinitionVersion(input: GetCoreDefinitionVersionInput) async throws -> GetCoreDefinitionVersionOutputResponse
    /// Returns the status of a deployment.
    func getDeploymentStatus(input: GetDeploymentStatusInput) async throws -> GetDeploymentStatusOutputResponse
    /// Retrieves information about a device definition.
    func getDeviceDefinition(input: GetDeviceDefinitionInput) async throws -> GetDeviceDefinitionOutputResponse
    /// Retrieves information about a device definition version.
    func getDeviceDefinitionVersion(input: GetDeviceDefinitionVersionInput) async throws -> GetDeviceDefinitionVersionOutputResponse
    /// Retrieves information about a Lambda function definition, including its creation time and latest version.
    func getFunctionDefinition(input: GetFunctionDefinitionInput) async throws -> GetFunctionDefinitionOutputResponse
    /// Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
    func getFunctionDefinitionVersion(input: GetFunctionDefinitionVersionInput) async throws -> GetFunctionDefinitionVersionOutputResponse
    /// Retrieves information about a group.
    func getGroup(input: GetGroupInput) async throws -> GetGroupOutputResponse
    /// Retreives the CA associated with a group. Returns the public key of the CA.
    func getGroupCertificateAuthority(input: GetGroupCertificateAuthorityInput) async throws -> GetGroupCertificateAuthorityOutputResponse
    /// Retrieves the current configuration for the CA used by the group.
    func getGroupCertificateConfiguration(input: GetGroupCertificateConfigurationInput) async throws -> GetGroupCertificateConfigurationOutputResponse
    /// Retrieves information about a group version.
    func getGroupVersion(input: GetGroupVersionInput) async throws -> GetGroupVersionOutputResponse
    /// Retrieves information about a logger definition.
    func getLoggerDefinition(input: GetLoggerDefinitionInput) async throws -> GetLoggerDefinitionOutputResponse
    /// Retrieves information about a logger definition version.
    func getLoggerDefinitionVersion(input: GetLoggerDefinitionVersionInput) async throws -> GetLoggerDefinitionVersionOutputResponse
    /// Retrieves information about a resource definition, including its creation time and latest version.
    func getResourceDefinition(input: GetResourceDefinitionInput) async throws -> GetResourceDefinitionOutputResponse
    /// Retrieves information about a resource definition version, including which resources are included in the version.
    func getResourceDefinitionVersion(input: GetResourceDefinitionVersionInput) async throws -> GetResourceDefinitionVersionOutputResponse
    /// Retrieves the service role that is attached to your account.
    func getServiceRoleForAccount(input: GetServiceRoleForAccountInput) async throws -> GetServiceRoleForAccountOutputResponse
    /// Retrieves information about a subscription definition.
    func getSubscriptionDefinition(input: GetSubscriptionDefinitionInput) async throws -> GetSubscriptionDefinitionOutputResponse
    /// Retrieves information about a subscription definition version.
    func getSubscriptionDefinitionVersion(input: GetSubscriptionDefinitionVersionInput) async throws -> GetSubscriptionDefinitionVersionOutputResponse
    /// Get the runtime configuration of a thing.
    func getThingRuntimeConfiguration(input: GetThingRuntimeConfigurationInput) async throws -> GetThingRuntimeConfigurationOutputResponse
    /// Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
    func listBulkDeploymentDetailedReports(input: ListBulkDeploymentDetailedReportsInput) async throws -> ListBulkDeploymentDetailedReportsOutputResponse
    /// Returns a list of bulk deployments.
    func listBulkDeployments(input: ListBulkDeploymentsInput) async throws -> ListBulkDeploymentsOutputResponse
    /// Retrieves a list of connector definitions.
    func listConnectorDefinitions(input: ListConnectorDefinitionsInput) async throws -> ListConnectorDefinitionsOutputResponse
    /// Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    func listConnectorDefinitionVersions(input: ListConnectorDefinitionVersionsInput) async throws -> ListConnectorDefinitionVersionsOutputResponse
    /// Retrieves a list of core definitions.
    func listCoreDefinitions(input: ListCoreDefinitionsInput) async throws -> ListCoreDefinitionsOutputResponse
    /// Lists the versions of a core definition.
    func listCoreDefinitionVersions(input: ListCoreDefinitionVersionsInput) async throws -> ListCoreDefinitionVersionsOutputResponse
    /// Returns a history of deployments for the group.
    func listDeployments(input: ListDeploymentsInput) async throws -> ListDeploymentsOutputResponse
    /// Retrieves a list of device definitions.
    func listDeviceDefinitions(input: ListDeviceDefinitionsInput) async throws -> ListDeviceDefinitionsOutputResponse
    /// Lists the versions of a device definition.
    func listDeviceDefinitionVersions(input: ListDeviceDefinitionVersionsInput) async throws -> ListDeviceDefinitionVersionsOutputResponse
    /// Retrieves a list of Lambda function definitions.
    func listFunctionDefinitions(input: ListFunctionDefinitionsInput) async throws -> ListFunctionDefinitionsOutputResponse
    /// Lists the versions of a Lambda function definition.
    func listFunctionDefinitionVersions(input: ListFunctionDefinitionVersionsInput) async throws -> ListFunctionDefinitionVersionsOutputResponse
    /// Retrieves the current CAs for a group.
    func listGroupCertificateAuthorities(input: ListGroupCertificateAuthoritiesInput) async throws -> ListGroupCertificateAuthoritiesOutputResponse
    /// Retrieves a list of groups.
    func listGroups(input: ListGroupsInput) async throws -> ListGroupsOutputResponse
    /// Lists the versions of a group.
    func listGroupVersions(input: ListGroupVersionsInput) async throws -> ListGroupVersionsOutputResponse
    /// Retrieves a list of logger definitions.
    func listLoggerDefinitions(input: ListLoggerDefinitionsInput) async throws -> ListLoggerDefinitionsOutputResponse
    /// Lists the versions of a logger definition.
    func listLoggerDefinitionVersions(input: ListLoggerDefinitionVersionsInput) async throws -> ListLoggerDefinitionVersionsOutputResponse
    /// Retrieves a list of resource definitions.
    func listResourceDefinitions(input: ListResourceDefinitionsInput) async throws -> ListResourceDefinitionsOutputResponse
    /// Lists the versions of a resource definition.
    func listResourceDefinitionVersions(input: ListResourceDefinitionVersionsInput) async throws -> ListResourceDefinitionVersionsOutputResponse
    /// Retrieves a list of subscription definitions.
    func listSubscriptionDefinitions(input: ListSubscriptionDefinitionsInput) async throws -> ListSubscriptionDefinitionsOutputResponse
    /// Lists the versions of a subscription definition.
    func listSubscriptionDefinitionVersions(input: ListSubscriptionDefinitionVersionsInput) async throws -> ListSubscriptionDefinitionVersionsOutputResponse
    /// Retrieves a list of resource tags for a resource arn.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Resets a group's deployments.
    func resetDeployments(input: ResetDeploymentsInput) async throws -> ResetDeploymentsOutputResponse
    /// Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
    func startBulkDeployment(input: StartBulkDeploymentInput) async throws -> StartBulkDeploymentOutputResponse
    /// Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
    func stopBulkDeployment(input: StopBulkDeploymentInput) async throws -> StopBulkDeploymentOutputResponse
    /// Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Remove resource tags from a Greengrass Resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
    func updateConnectivityInfo(input: UpdateConnectivityInfoInput) async throws -> UpdateConnectivityInfoOutputResponse
    /// Updates a connector definition.
    func updateConnectorDefinition(input: UpdateConnectorDefinitionInput) async throws -> UpdateConnectorDefinitionOutputResponse
    /// Updates a core definition.
    func updateCoreDefinition(input: UpdateCoreDefinitionInput) async throws -> UpdateCoreDefinitionOutputResponse
    /// Updates a device definition.
    func updateDeviceDefinition(input: UpdateDeviceDefinitionInput) async throws -> UpdateDeviceDefinitionOutputResponse
    /// Updates a Lambda function definition.
    func updateFunctionDefinition(input: UpdateFunctionDefinitionInput) async throws -> UpdateFunctionDefinitionOutputResponse
    /// Updates a group.
    func updateGroup(input: UpdateGroupInput) async throws -> UpdateGroupOutputResponse
    /// Updates the Certificate expiry time for a group.
    func updateGroupCertificateConfiguration(input: UpdateGroupCertificateConfigurationInput) async throws -> UpdateGroupCertificateConfigurationOutputResponse
    /// Updates a logger definition.
    func updateLoggerDefinition(input: UpdateLoggerDefinitionInput) async throws -> UpdateLoggerDefinitionOutputResponse
    /// Updates a resource definition.
    func updateResourceDefinition(input: UpdateResourceDefinitionInput) async throws -> UpdateResourceDefinitionOutputResponse
    /// Updates a subscription definition.
    func updateSubscriptionDefinition(input: UpdateSubscriptionDefinitionInput) async throws -> UpdateSubscriptionDefinitionOutputResponse
    /// Updates the runtime configuration of a thing.
    func updateThingRuntimeConfiguration(input: UpdateThingRuntimeConfigurationInput) async throws -> UpdateThingRuntimeConfigurationOutputResponse
}

public enum GreengrassClientTypes {}