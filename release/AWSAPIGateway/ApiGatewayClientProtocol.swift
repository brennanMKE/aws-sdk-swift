// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon API Gateway</fullname>
///         Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
public protocol ApiGatewayClientProtocol {
    /// Create an ApiKey resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html">AWS CLI</div>
    func createApiKey(input: CreateApiKeyInput, completion: @escaping (ClientRuntime.SdkResult<CreateApiKeyOutputResponse, CreateApiKeyOutputError>) -> Void)
    /// Adds a new Authorizer resource to an existing RestApi resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html">AWS CLI</div>
    func createAuthorizer(input: CreateAuthorizerInput, completion: @escaping (ClientRuntime.SdkResult<CreateAuthorizerOutputResponse, CreateAuthorizerOutputError>) -> Void)
    /// Creates a new BasePathMapping resource.
    func createBasePathMapping(input: CreateBasePathMappingInput, completion: @escaping (ClientRuntime.SdkResult<CreateBasePathMappingOutputResponse, CreateBasePathMappingOutputError>) -> Void)
    /// Creates a Deployment resource, which makes a specified RestApi callable over the internet.
    func createDeployment(input: CreateDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<CreateDeploymentOutputResponse, CreateDeploymentOutputError>) -> Void)
    func createDocumentationPart(input: CreateDocumentationPartInput, completion: @escaping (ClientRuntime.SdkResult<CreateDocumentationPartOutputResponse, CreateDocumentationPartOutputError>) -> Void)
    func createDocumentationVersion(input: CreateDocumentationVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateDocumentationVersionOutputResponse, CreateDocumentationVersionOutputError>) -> Void)
    /// Creates a new domain name.
    func createDomainName(input: CreateDomainNameInput, completion: @escaping (ClientRuntime.SdkResult<CreateDomainNameOutputResponse, CreateDomainNameOutputError>) -> Void)
    /// Adds a new Model resource to an existing RestApi resource.
    func createModel(input: CreateModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateModelOutputResponse, CreateModelOutputError>) -> Void)
    /// Creates a ReqeustValidator of a given RestApi.
    func createRequestValidator(input: CreateRequestValidatorInput, completion: @escaping (ClientRuntime.SdkResult<CreateRequestValidatorOutputResponse, CreateRequestValidatorOutputError>) -> Void)
    /// Creates a Resource resource.
    func createResource(input: CreateResourceInput, completion: @escaping (ClientRuntime.SdkResult<CreateResourceOutputResponse, CreateResourceOutputError>) -> Void)
    /// Creates a new RestApi resource.
    func createRestApi(input: CreateRestApiInput, completion: @escaping (ClientRuntime.SdkResult<CreateRestApiOutputResponse, CreateRestApiOutputError>) -> Void)
    /// Creates a new Stage resource that references a pre-existing Deployment for the API.
    ///         <!--   Creates a Stage resource.  -->
    func createStage(input: CreateStageInput, completion: @escaping (ClientRuntime.SdkResult<CreateStageOutputResponse, CreateStageOutputError>) -> Void)
    /// Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.
    func createUsagePlan(input: CreateUsagePlanInput, completion: @escaping (ClientRuntime.SdkResult<CreateUsagePlanOutputResponse, CreateUsagePlanOutputError>) -> Void)
    /// Creates a usage plan key for adding an existing API key to a usage plan.
    func createUsagePlanKey(input: CreateUsagePlanKeyInput, completion: @escaping (ClientRuntime.SdkResult<CreateUsagePlanKeyOutputResponse, CreateUsagePlanKeyOutputError>) -> Void)
    /// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
    func createVpcLink(input: CreateVpcLinkInput, completion: @escaping (ClientRuntime.SdkResult<CreateVpcLinkOutputResponse, CreateVpcLinkOutputError>) -> Void)
    /// Deletes the ApiKey resource.
    func deleteApiKey(input: DeleteApiKeyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApiKeyOutputResponse, DeleteApiKeyOutputError>) -> Void)
    /// Deletes an existing Authorizer resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html">AWS CLI</div>
    func deleteAuthorizer(input: DeleteAuthorizerInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAuthorizerOutputResponse, DeleteAuthorizerOutputError>) -> Void)
    /// Deletes the BasePathMapping resource.
    func deleteBasePathMapping(input: DeleteBasePathMappingInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBasePathMappingOutputResponse, DeleteBasePathMappingOutputError>) -> Void)
    /// Deletes the ClientCertificate resource.
    func deleteClientCertificate(input: DeleteClientCertificateInput, completion: @escaping (ClientRuntime.SdkResult<DeleteClientCertificateOutputResponse, DeleteClientCertificateOutputError>) -> Void)
    /// Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
    func deleteDeployment(input: DeleteDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDeploymentOutputResponse, DeleteDeploymentOutputError>) -> Void)
    func deleteDocumentationPart(input: DeleteDocumentationPartInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDocumentationPartOutputResponse, DeleteDocumentationPartOutputError>) -> Void)
    func deleteDocumentationVersion(input: DeleteDocumentationVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDocumentationVersionOutputResponse, DeleteDocumentationVersionOutputError>) -> Void)
    /// Deletes the DomainName resource.
    func deleteDomainName(input: DeleteDomainNameInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDomainNameOutputResponse, DeleteDomainNameOutputError>) -> Void)
    /// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
    func deleteGatewayResponse(input: DeleteGatewayResponseInput, completion: @escaping (ClientRuntime.SdkResult<DeleteGatewayResponseOutputResponse, DeleteGatewayResponseOutputError>) -> Void)
    /// Represents a delete integration.
    func deleteIntegration(input: DeleteIntegrationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteIntegrationOutputResponse, DeleteIntegrationOutputError>) -> Void)
    /// Represents a delete integration response.
    func deleteIntegrationResponse(input: DeleteIntegrationResponseInput, completion: @escaping (ClientRuntime.SdkResult<DeleteIntegrationResponseOutputResponse, DeleteIntegrationResponseOutputError>) -> Void)
    /// Deletes an existing Method resource.
    func deleteMethod(input: DeleteMethodInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMethodOutputResponse, DeleteMethodOutputError>) -> Void)
    /// Deletes an existing MethodResponse resource.
    func deleteMethodResponse(input: DeleteMethodResponseInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMethodResponseOutputResponse, DeleteMethodResponseOutputError>) -> Void)
    /// Deletes a model.
    func deleteModel(input: DeleteModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteModelOutputResponse, DeleteModelOutputError>) -> Void)
    /// Deletes a RequestValidator of a given RestApi.
    func deleteRequestValidator(input: DeleteRequestValidatorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRequestValidatorOutputResponse, DeleteRequestValidatorOutputError>) -> Void)
    /// Deletes a Resource resource.
    func deleteResource(input: DeleteResourceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourceOutputResponse, DeleteResourceOutputError>) -> Void)
    /// Deletes the specified API.
    func deleteRestApi(input: DeleteRestApiInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRestApiOutputResponse, DeleteRestApiOutputError>) -> Void)
    /// Deletes a Stage resource.
    func deleteStage(input: DeleteStageInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStageOutputResponse, DeleteStageOutputError>) -> Void)
    /// Deletes a usage plan of a given plan Id.
    func deleteUsagePlan(input: DeleteUsagePlanInput, completion: @escaping (ClientRuntime.SdkResult<DeleteUsagePlanOutputResponse, DeleteUsagePlanOutputError>) -> Void)
    /// Deletes a usage plan key  and remove the underlying API key from the associated usage plan.
    func deleteUsagePlanKey(input: DeleteUsagePlanKeyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteUsagePlanKeyOutputResponse, DeleteUsagePlanKeyOutputError>) -> Void)
    /// Deletes an existing VpcLink of a specified identifier.
    func deleteVpcLink(input: DeleteVpcLinkInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVpcLinkOutputResponse, DeleteVpcLinkOutputError>) -> Void)
    /// Flushes all authorizer cache entries on a stage.
    func flushStageAuthorizersCache(input: FlushStageAuthorizersCacheInput, completion: @escaping (ClientRuntime.SdkResult<FlushStageAuthorizersCacheOutputResponse, FlushStageAuthorizersCacheOutputError>) -> Void)
    /// Flushes a stage's cache.
    func flushStageCache(input: FlushStageCacheInput, completion: @escaping (ClientRuntime.SdkResult<FlushStageCacheOutputResponse, FlushStageCacheOutputError>) -> Void)
    /// Generates a ClientCertificate resource.
    func generateClientCertificate(input: GenerateClientCertificateInput, completion: @escaping (ClientRuntime.SdkResult<GenerateClientCertificateOutputResponse, GenerateClientCertificateOutputError>) -> Void)
    /// Gets information about the current Account resource.
    func getAccount(input: GetAccountInput, completion: @escaping (ClientRuntime.SdkResult<GetAccountOutputResponse, GetAccountOutputError>) -> Void)
    /// Gets information about the current ApiKey resource.
    func getApiKey(input: GetApiKeyInput, completion: @escaping (ClientRuntime.SdkResult<GetApiKeyOutputResponse, GetApiKeyOutputError>) -> Void)
    /// Gets information about the current ApiKeys resource.
    func getApiKeys(input: GetApiKeysInput, completion: @escaping (ClientRuntime.SdkResult<GetApiKeysOutputResponse, GetApiKeysOutputError>) -> Void)
    /// Describe an existing Authorizer resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html">AWS CLI</div>
    func getAuthorizer(input: GetAuthorizerInput, completion: @escaping (ClientRuntime.SdkResult<GetAuthorizerOutputResponse, GetAuthorizerOutputError>) -> Void)
    /// Describe an existing Authorizers resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html">AWS CLI</div>
    func getAuthorizers(input: GetAuthorizersInput, completion: @escaping (ClientRuntime.SdkResult<GetAuthorizersOutputResponse, GetAuthorizersOutputError>) -> Void)
    /// Describe a BasePathMapping resource.
    func getBasePathMapping(input: GetBasePathMappingInput, completion: @escaping (ClientRuntime.SdkResult<GetBasePathMappingOutputResponse, GetBasePathMappingOutputError>) -> Void)
    /// Represents a collection of BasePathMapping resources.
    func getBasePathMappings(input: GetBasePathMappingsInput, completion: @escaping (ClientRuntime.SdkResult<GetBasePathMappingsOutputResponse, GetBasePathMappingsOutputError>) -> Void)
    /// Gets information about the current ClientCertificate resource.
    func getClientCertificate(input: GetClientCertificateInput, completion: @escaping (ClientRuntime.SdkResult<GetClientCertificateOutputResponse, GetClientCertificateOutputError>) -> Void)
    /// Gets a collection of ClientCertificate resources.
    func getClientCertificates(input: GetClientCertificatesInput, completion: @escaping (ClientRuntime.SdkResult<GetClientCertificatesOutputResponse, GetClientCertificatesOutputError>) -> Void)
    /// Gets information about a Deployment resource.
    func getDeployment(input: GetDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<GetDeploymentOutputResponse, GetDeploymentOutputError>) -> Void)
    /// Gets information about a Deployments collection.
    func getDeployments(input: GetDeploymentsInput, completion: @escaping (ClientRuntime.SdkResult<GetDeploymentsOutputResponse, GetDeploymentsOutputError>) -> Void)
    func getDocumentationPart(input: GetDocumentationPartInput, completion: @escaping (ClientRuntime.SdkResult<GetDocumentationPartOutputResponse, GetDocumentationPartOutputError>) -> Void)
    func getDocumentationParts(input: GetDocumentationPartsInput, completion: @escaping (ClientRuntime.SdkResult<GetDocumentationPartsOutputResponse, GetDocumentationPartsOutputError>) -> Void)
    func getDocumentationVersion(input: GetDocumentationVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetDocumentationVersionOutputResponse, GetDocumentationVersionOutputError>) -> Void)
    func getDocumentationVersions(input: GetDocumentationVersionsInput, completion: @escaping (ClientRuntime.SdkResult<GetDocumentationVersionsOutputResponse, GetDocumentationVersionsOutputError>) -> Void)
    /// Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
    func getDomainName(input: GetDomainNameInput, completion: @escaping (ClientRuntime.SdkResult<GetDomainNameOutputResponse, GetDomainNameOutputError>) -> Void)
    /// Represents a collection of DomainName resources.
    func getDomainNames(input: GetDomainNamesInput, completion: @escaping (ClientRuntime.SdkResult<GetDomainNamesOutputResponse, GetDomainNamesOutputError>) -> Void)
    /// Exports a deployed version of a RestApi in a specified format.
    func getExport(input: GetExportInput, completion: @escaping (ClientRuntime.SdkResult<GetExportOutputResponse, GetExportOutputError>) -> Void)
    /// Gets a GatewayResponse of a specified response type on the given RestApi.
    func getGatewayResponse(input: GetGatewayResponseInput, completion: @escaping (ClientRuntime.SdkResult<GetGatewayResponseOutputResponse, GetGatewayResponseOutputError>) -> Void)
    /// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
    func getGatewayResponses(input: GetGatewayResponsesInput, completion: @escaping (ClientRuntime.SdkResult<GetGatewayResponsesOutputResponse, GetGatewayResponsesOutputError>) -> Void)
    /// Get the integration settings.
    func getIntegration(input: GetIntegrationInput, completion: @escaping (ClientRuntime.SdkResult<GetIntegrationOutputResponse, GetIntegrationOutputError>) -> Void)
    /// Represents a get integration response.
    func getIntegrationResponse(input: GetIntegrationResponseInput, completion: @escaping (ClientRuntime.SdkResult<GetIntegrationResponseOutputResponse, GetIntegrationResponseOutputError>) -> Void)
    /// Describe an existing Method resource.
    func getMethod(input: GetMethodInput, completion: @escaping (ClientRuntime.SdkResult<GetMethodOutputResponse, GetMethodOutputError>) -> Void)
    /// Describes a MethodResponse resource.
    func getMethodResponse(input: GetMethodResponseInput, completion: @escaping (ClientRuntime.SdkResult<GetMethodResponseOutputResponse, GetMethodResponseOutputError>) -> Void)
    /// Describes an existing model defined for a RestApi resource.
    func getModel(input: GetModelInput, completion: @escaping (ClientRuntime.SdkResult<GetModelOutputResponse, GetModelOutputError>) -> Void)
    /// Describes existing Models defined for a RestApi resource.
    func getModels(input: GetModelsInput, completion: @escaping (ClientRuntime.SdkResult<GetModelsOutputResponse, GetModelsOutputError>) -> Void)
    /// Generates a sample mapping template that can be used to transform a payload into the structure of a model.
    func getModelTemplate(input: GetModelTemplateInput, completion: @escaping (ClientRuntime.SdkResult<GetModelTemplateOutputResponse, GetModelTemplateOutputError>) -> Void)
    /// Gets a RequestValidator of a given RestApi.
    func getRequestValidator(input: GetRequestValidatorInput, completion: @escaping (ClientRuntime.SdkResult<GetRequestValidatorOutputResponse, GetRequestValidatorOutputError>) -> Void)
    /// Gets the RequestValidators collection of a given RestApi.
    func getRequestValidators(input: GetRequestValidatorsInput, completion: @escaping (ClientRuntime.SdkResult<GetRequestValidatorsOutputResponse, GetRequestValidatorsOutputError>) -> Void)
    /// Lists information about a resource.
    func getResource(input: GetResourceInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceOutputResponse, GetResourceOutputError>) -> Void)
    /// Lists information about a collection of Resource resources.
    func getResources(input: GetResourcesInput, completion: @escaping (ClientRuntime.SdkResult<GetResourcesOutputResponse, GetResourcesOutputError>) -> Void)
    /// Lists the RestApi resource in the collection.
    func getRestApi(input: GetRestApiInput, completion: @escaping (ClientRuntime.SdkResult<GetRestApiOutputResponse, GetRestApiOutputError>) -> Void)
    /// Lists the RestApis resources for your collection.
    func getRestApis(input: GetRestApisInput, completion: @escaping (ClientRuntime.SdkResult<GetRestApisOutputResponse, GetRestApisOutputError>) -> Void)
    /// Generates a client SDK for a RestApi and Stage.
    func getSdk(input: GetSdkInput, completion: @escaping (ClientRuntime.SdkResult<GetSdkOutputResponse, GetSdkOutputError>) -> Void)
    func getSdkType(input: GetSdkTypeInput, completion: @escaping (ClientRuntime.SdkResult<GetSdkTypeOutputResponse, GetSdkTypeOutputError>) -> Void)
    func getSdkTypes(input: GetSdkTypesInput, completion: @escaping (ClientRuntime.SdkResult<GetSdkTypesOutputResponse, GetSdkTypesOutputError>) -> Void)
    /// Gets information about a Stage resource.
    func getStage(input: GetStageInput, completion: @escaping (ClientRuntime.SdkResult<GetStageOutputResponse, GetStageOutputError>) -> Void)
    /// Gets information about one or more Stage resources.
    func getStages(input: GetStagesInput, completion: @escaping (ClientRuntime.SdkResult<GetStagesOutputResponse, GetStagesOutputError>) -> Void)
    /// Gets the Tags collection for a given resource.
    func getTags(input: GetTagsInput, completion: @escaping (ClientRuntime.SdkResult<GetTagsOutputResponse, GetTagsOutputError>) -> Void)
    /// Gets the usage data of a usage plan in a specified time interval.
    func getUsage(input: GetUsageInput, completion: @escaping (ClientRuntime.SdkResult<GetUsageOutputResponse, GetUsageOutputError>) -> Void)
    /// Gets a usage plan of a given plan identifier.
    func getUsagePlan(input: GetUsagePlanInput, completion: @escaping (ClientRuntime.SdkResult<GetUsagePlanOutputResponse, GetUsagePlanOutputError>) -> Void)
    /// Gets a usage plan key of a given key identifier.
    func getUsagePlanKey(input: GetUsagePlanKeyInput, completion: @escaping (ClientRuntime.SdkResult<GetUsagePlanKeyOutputResponse, GetUsagePlanKeyOutputError>) -> Void)
    /// Gets all the usage plan keys representing the API keys added to a specified usage plan.
    func getUsagePlanKeys(input: GetUsagePlanKeysInput, completion: @escaping (ClientRuntime.SdkResult<GetUsagePlanKeysOutputResponse, GetUsagePlanKeysOutputError>) -> Void)
    /// Gets all the usage plans of the caller's account.
    func getUsagePlans(input: GetUsagePlansInput, completion: @escaping (ClientRuntime.SdkResult<GetUsagePlansOutputResponse, GetUsagePlansOutputError>) -> Void)
    /// Gets a specified VPC link under the caller's account in a region.
    func getVpcLink(input: GetVpcLinkInput, completion: @escaping (ClientRuntime.SdkResult<GetVpcLinkOutputResponse, GetVpcLinkOutputError>) -> Void)
    /// Gets the VpcLinks collection under the caller's account in a selected region.
    func getVpcLinks(input: GetVpcLinksInput, completion: @escaping (ClientRuntime.SdkResult<GetVpcLinksOutputResponse, GetVpcLinksOutputError>) -> Void)
    /// Import API keys from an external source, such as a CSV-formatted file.
    func importApiKeys(input: ImportApiKeysInput, completion: @escaping (ClientRuntime.SdkResult<ImportApiKeysOutputResponse, ImportApiKeysOutputError>) -> Void)
    func importDocumentationParts(input: ImportDocumentationPartsInput, completion: @escaping (ClientRuntime.SdkResult<ImportDocumentationPartsOutputResponse, ImportDocumentationPartsOutputError>) -> Void)
    /// A feature of the API Gateway control service for creating a new API from an external API definition file.
    func importRestApi(input: ImportRestApiInput, completion: @escaping (ClientRuntime.SdkResult<ImportRestApiOutputResponse, ImportRestApiOutputError>) -> Void)
    /// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
    func putGatewayResponse(input: PutGatewayResponseInput, completion: @escaping (ClientRuntime.SdkResult<PutGatewayResponseOutputResponse, PutGatewayResponseOutputError>) -> Void)
    /// Sets up a method's integration.
    func putIntegration(input: PutIntegrationInput, completion: @escaping (ClientRuntime.SdkResult<PutIntegrationOutputResponse, PutIntegrationOutputError>) -> Void)
    /// Represents a put integration.
    func putIntegrationResponse(input: PutIntegrationResponseInput, completion: @escaping (ClientRuntime.SdkResult<PutIntegrationResponseOutputResponse, PutIntegrationResponseOutputError>) -> Void)
    /// Add a method to an existing Resource resource.
    func putMethod(input: PutMethodInput, completion: @escaping (ClientRuntime.SdkResult<PutMethodOutputResponse, PutMethodOutputError>) -> Void)
    /// Adds a MethodResponse to an existing Method resource.
    func putMethodResponse(input: PutMethodResponseInput, completion: @escaping (ClientRuntime.SdkResult<PutMethodResponseOutputResponse, PutMethodResponseOutputError>) -> Void)
    /// A feature of the API Gateway control service for updating an existing API with an input of external API definitions.
    ///             The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
    func putRestApi(input: PutRestApiInput, completion: @escaping (ClientRuntime.SdkResult<PutRestApiOutputResponse, PutRestApiOutputError>) -> Void)
    /// Adds or updates a tag on a given resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.
    ///       <div class="seeAlso">
    ///         <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html">Use Lambda Function as Authorizer
    ///         <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html">Use Cognito User Pool as Authorizer
    ///       </div>
    func testInvokeAuthorizer(input: TestInvokeAuthorizerInput, completion: @escaping (ClientRuntime.SdkResult<TestInvokeAuthorizerOutputResponse, TestInvokeAuthorizerOutputError>) -> Void)
    /// Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.
    func testInvokeMethod(input: TestInvokeMethodInput, completion: @escaping (ClientRuntime.SdkResult<TestInvokeMethodOutputResponse, TestInvokeMethodOutputError>) -> Void)
    /// Removes a tag from a given resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Changes information about the current Account resource.
    func updateAccount(input: UpdateAccountInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAccountOutputResponse, UpdateAccountOutputError>) -> Void)
    /// Changes information about an ApiKey resource.
    func updateApiKey(input: UpdateApiKeyInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApiKeyOutputResponse, UpdateApiKeyOutputError>) -> Void)
    /// Updates an existing Authorizer resource.
    ///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html">AWS CLI</div>
    func updateAuthorizer(input: UpdateAuthorizerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAuthorizerOutputResponse, UpdateAuthorizerOutputError>) -> Void)
    /// Changes information about the BasePathMapping resource.
    func updateBasePathMapping(input: UpdateBasePathMappingInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBasePathMappingOutputResponse, UpdateBasePathMappingOutputError>) -> Void)
    /// Changes information about an ClientCertificate resource.
    func updateClientCertificate(input: UpdateClientCertificateInput, completion: @escaping (ClientRuntime.SdkResult<UpdateClientCertificateOutputResponse, UpdateClientCertificateOutputError>) -> Void)
    /// Changes information about a Deployment resource.
    func updateDeployment(input: UpdateDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDeploymentOutputResponse, UpdateDeploymentOutputError>) -> Void)
    func updateDocumentationPart(input: UpdateDocumentationPartInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDocumentationPartOutputResponse, UpdateDocumentationPartOutputError>) -> Void)
    func updateDocumentationVersion(input: UpdateDocumentationVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDocumentationVersionOutputResponse, UpdateDocumentationVersionOutputError>) -> Void)
    /// Changes information about the DomainName resource.
    func updateDomainName(input: UpdateDomainNameInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDomainNameOutputResponse, UpdateDomainNameOutputError>) -> Void)
    /// Updates a GatewayResponse of a specified response type on the given RestApi.
    func updateGatewayResponse(input: UpdateGatewayResponseInput, completion: @escaping (ClientRuntime.SdkResult<UpdateGatewayResponseOutputResponse, UpdateGatewayResponseOutputError>) -> Void)
    /// Represents an update integration.
    func updateIntegration(input: UpdateIntegrationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateIntegrationOutputResponse, UpdateIntegrationOutputError>) -> Void)
    /// Represents an update integration response.
    func updateIntegrationResponse(input: UpdateIntegrationResponseInput, completion: @escaping (ClientRuntime.SdkResult<UpdateIntegrationResponseOutputResponse, UpdateIntegrationResponseOutputError>) -> Void)
    /// Updates an existing Method resource.
    func updateMethod(input: UpdateMethodInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMethodOutputResponse, UpdateMethodOutputError>) -> Void)
    /// Updates an existing MethodResponse resource.
    func updateMethodResponse(input: UpdateMethodResponseInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMethodResponseOutputResponse, UpdateMethodResponseOutputError>) -> Void)
    /// Changes information about a model.
    func updateModel(input: UpdateModelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateModelOutputResponse, UpdateModelOutputError>) -> Void)
    /// Updates a RequestValidator of a given RestApi.
    func updateRequestValidator(input: UpdateRequestValidatorInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRequestValidatorOutputResponse, UpdateRequestValidatorOutputError>) -> Void)
    /// Changes information about a Resource resource.
    func updateResource(input: UpdateResourceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResourceOutputResponse, UpdateResourceOutputError>) -> Void)
    /// Changes information about the specified API.
    func updateRestApi(input: UpdateRestApiInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRestApiOutputResponse, UpdateRestApiOutputError>) -> Void)
    /// Changes information about a Stage resource.
    func updateStage(input: UpdateStageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateStageOutputResponse, UpdateStageOutputError>) -> Void)
    /// Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
    func updateUsage(input: UpdateUsageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateUsageOutputResponse, UpdateUsageOutputError>) -> Void)
    /// Updates a usage plan of a given plan Id.
    func updateUsagePlan(input: UpdateUsagePlanInput, completion: @escaping (ClientRuntime.SdkResult<UpdateUsagePlanOutputResponse, UpdateUsagePlanOutputError>) -> Void)
    /// Updates an existing VpcLink of a specified identifier.
    func updateVpcLink(input: UpdateVpcLinkInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVpcLinkOutputResponse, UpdateVpcLinkOutputError>) -> Void)
}

public enum ApiGatewayClientTypes {}
