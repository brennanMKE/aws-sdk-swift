// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ApplicationCostProfilerClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "ApplicationCostProfiler"
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
        let config = try ApplicationCostProfilerClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class ApplicationCostProfilerClientConfiguration: AWSClientConfiguration {

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
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("ApplicationCostProfilerClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct ApplicationCostProfilerClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "ApplicationCostProfilerClient"
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

extension ApplicationCostProfilerClient: ApplicationCostProfilerClientProtocol {
    /// <p>Deletes the specified report definition in AWS Application Cost Profiler. This stops the report from being
    ///       generated.</p>
    public func deleteReportDefinition(input: DeleteReportDefinitionInput, completion: @escaping (SdkResult<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>) -> Void)
    {
        guard let reportId = input.reportId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component reportId unexpectedly nil"))))
            return
        }
        let urlPath = "/reportDefinition/\(reportId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(id: "deleteReportDefinition")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DeleteReportDefinitionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DeleteReportDefinitionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(contentType: "application/json"))
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

    /// <p>Retrieves the definition of a report already configured in AWS Application Cost Profiler.</p>
    public func getReportDefinition(input: GetReportDefinitionInput, completion: @escaping (SdkResult<GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>) -> Void)
    {
        guard let reportId = input.reportId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component reportId unexpectedly nil"))))
            return
        }
        let urlPath = "/reportDefinition/\(reportId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetReportDefinitionInput, GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(id: "getReportDefinition")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetReportDefinitionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetReportDefinitionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetReportDefinitionInput, GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(contentType: "application/json"))
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

    /// <p>Ingests application usage data from Amazon Simple Storage Service (Amazon S3).</p>
    ///          <p>The data must already exist in the S3 location. As part of the action, AWS Application Cost Profiler
    ///       copies the object from your S3 bucket to an S3 bucket owned by Amazon for processing
    ///       asynchronously.</p>
    public func importApplicationUsage(input: ImportApplicationUsageInput, completion: @escaping (SdkResult<ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>) -> Void)
    {
        let urlPath = "/importApplicationUsage"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "importApplicationUsage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(id: "importApplicationUsage")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ImportApplicationUsageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ImportApplicationUsageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ImportApplicationUsageInputBodyMiddleware())
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

    /// <p>Retrieves a list of all reports and their configurations for your AWS account.</p>
    ///          <p>The maximum number of reports is one.</p>
    public func listReportDefinitions(input: ListReportDefinitionsInput, completion: @escaping (SdkResult<ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>) -> Void)
    {
        let urlPath = "/reportDefinition"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listReportDefinitions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(id: "listReportDefinitions")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListReportDefinitionsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListReportDefinitionsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(contentType: "application/json"))
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

    /// <p>Creates the report definition for a report in Application Cost Profiler.</p>
    public func putReportDefinition(input: PutReportDefinitionInput, completion: @escaping (SdkResult<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>) -> Void)
    {
        let urlPath = "/reportDefinition"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(id: "putReportDefinition")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: PutReportDefinitionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: PutReportDefinitionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: PutReportDefinitionInputBodyMiddleware())
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

    /// <p>Updates existing report in AWS Application Cost Profiler.</p>
    public func updateReportDefinition(input: UpdateReportDefinitionInput, completion: @escaping (SdkResult<UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>) -> Void)
    {
        guard let reportId = input.reportId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component reportId unexpectedly nil"))))
            return
        }
        let urlPath = "/reportDefinition/\(reportId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "application-cost-profiler.\(config.region).amazonaws.com")
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(id: "updateReportDefinition")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: UpdateReportDefinitionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: UpdateReportDefinitionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: UpdateReportDefinitionInputBodyMiddleware())
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