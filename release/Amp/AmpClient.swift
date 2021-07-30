// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class AmpClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "amp"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: AWSClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: String? = nil) throws {
        let unwrappedRegion = region ?? "us-east-1"
        let config = try AmpClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class AmpClientConfiguration: AWSClientConfiguration {

        public var clientLogMode: ClientLogMode
        public var decoder: ResponseDecoder?
        public var encoder: RequestEncoder?
        public var httpClientConfiguration: HttpClientConfiguration
        public var httpClientEngine: HttpClientEngine
        public var idempotencyTokenGenerator: IdempotencyTokenGenerator
        public var logger: LogAgent
        public var retrier: Retrier

        public var credentialsProvider: AWSCredentialsProvider
        public var endpointResolver: EndpointResolver
        public var region: String
        public var signingRegion: String

        public init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil,
            runtimeConfig: SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = credProvider
            } else {
                self.credentialsProvider = try AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retrier = runtimeConfig.retrier
        }

        public convenience init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil
        ) throws {
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("AmpClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct AmpClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "AmpClient"
    let logLevel: SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension AmpClient: AmpClientProtocol {
    /// Creates a new AMP workspace.
    public func createWorkspace(input: CreateWorkspaceInput, completion: @escaping (SdkResult<CreateWorkspaceOutputResponse, CreateWorkspaceOutputError>) -> Void)
    {
        let urlPath = "/workspaces"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createWorkspace")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "aps.\(config.region).amazonaws.com")
                      .withSigningName(value: "aps")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CreateWorkspaceInput, CreateWorkspaceOutputResponse, CreateWorkspaceOutputError>(id: "createWorkspace")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<CreateWorkspaceOutputResponse>, SdkError<CreateWorkspaceOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: CreateWorkspaceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CreateWorkspaceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CreateWorkspaceInput, CreateWorkspaceOutputResponse, CreateWorkspaceOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: CreateWorkspaceInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Deletes an AMP workspace.
    public func deleteWorkspace(input: DeleteWorkspaceInput, completion: @escaping (SdkResult<DeleteWorkspaceOutputResponse, DeleteWorkspaceOutputError>) -> Void)
    {
        guard let workspaceId = input.workspaceId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component workspaceId unexpectedly nil"))))
            return
        }
        let urlPath = "/workspaces/\(workspaceId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteWorkspace")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "aps.\(config.region).amazonaws.com")
                      .withSigningName(value: "aps")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DeleteWorkspaceInput, DeleteWorkspaceOutputResponse, DeleteWorkspaceOutputError>(id: "deleteWorkspace")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<DeleteWorkspaceOutputResponse>, SdkError<DeleteWorkspaceOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: DeleteWorkspaceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DeleteWorkspaceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DeleteWorkspaceInput, DeleteWorkspaceOutputResponse, DeleteWorkspaceOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Describes an existing AMP workspace.
    public func describeWorkspace(input: DescribeWorkspaceInput, completion: @escaping (SdkResult<DescribeWorkspaceOutputResponse, DescribeWorkspaceOutputError>) -> Void)
    {
        guard let workspaceId = input.workspaceId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component workspaceId unexpectedly nil"))))
            return
        }
        let urlPath = "/workspaces/\(workspaceId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeWorkspace")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "aps.\(config.region).amazonaws.com")
                      .withSigningName(value: "aps")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeWorkspaceInput, DescribeWorkspaceOutputResponse, DescribeWorkspaceOutputError>(id: "describeWorkspace")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeWorkspaceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeWorkspaceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeWorkspaceInput, DescribeWorkspaceOutputResponse, DescribeWorkspaceOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists all AMP workspaces, including workspaces being created or deleted.
    public func listWorkspaces(input: ListWorkspacesInput, completion: @escaping (SdkResult<ListWorkspacesOutputResponse, ListWorkspacesOutputError>) -> Void)
    {
        let urlPath = "/workspaces"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listWorkspaces")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "aps.\(config.region).amazonaws.com")
                      .withSigningName(value: "aps")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListWorkspacesInput, ListWorkspacesOutputResponse, ListWorkspacesOutputError>(id: "listWorkspaces")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListWorkspacesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListWorkspacesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListWorkspacesInput, ListWorkspacesOutputResponse, ListWorkspacesOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Updates an AMP workspace alias.
    public func updateWorkspaceAlias(input: UpdateWorkspaceAliasInput, completion: @escaping (SdkResult<UpdateWorkspaceAliasOutputResponse, UpdateWorkspaceAliasOutputError>) -> Void)
    {
        guard let workspaceId = input.workspaceId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component workspaceId unexpectedly nil"))))
            return
        }
        let urlPath = "/workspaces/\(workspaceId)/alias"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateWorkspaceAlias")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "aps.\(config.region).amazonaws.com")
                      .withSigningName(value: "aps")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<UpdateWorkspaceAliasInput, UpdateWorkspaceAliasOutputResponse, UpdateWorkspaceAliasOutputError>(id: "updateWorkspaceAlias")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<UpdateWorkspaceAliasOutputResponse>, SdkError<UpdateWorkspaceAliasOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: UpdateWorkspaceAliasInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: UpdateWorkspaceAliasInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<UpdateWorkspaceAliasInput, UpdateWorkspaceAliasOutputResponse, UpdateWorkspaceAliasOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: UpdateWorkspaceAliasInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}