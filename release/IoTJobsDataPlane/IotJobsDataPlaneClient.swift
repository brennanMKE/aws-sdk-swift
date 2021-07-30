// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class IotJobsDataPlaneClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "IoT Jobs Data Plane"
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
        let config = try IotJobsDataPlaneClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class IotJobsDataPlaneClientConfiguration: AWSClientConfiguration {

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
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("IotJobsDataPlaneClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct IotJobsDataPlaneClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "IotJobsDataPlaneClient"
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

extension IotJobsDataPlaneClient: IotJobsDataPlaneClientProtocol {
    /// <p>Gets details of a job execution.</p>
    public func describeJobExecution(input: DescribeJobExecutionInput, completion: @escaping (SdkResult<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>) -> Void)
    {
        guard let thingName = input.thingName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component thingName unexpectedly nil"))))
            return
        }
        guard let jobId = input.jobId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component jobId unexpectedly nil"))))
            return
        }
        let urlPath = "/things/\(thingName)/jobs/\(jobId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "data.jobs.iot.\(config.region).amazonaws.com")
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(id: "describeJobExecution")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeJobExecutionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeJobExecutionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(contentType: "application/json"))
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

    /// <p>Gets the list of all jobs for a thing that are not in a terminal status.</p>
    public func getPendingJobExecutions(input: GetPendingJobExecutionsInput, completion: @escaping (SdkResult<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>) -> Void)
    {
        guard let thingName = input.thingName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component thingName unexpectedly nil"))))
            return
        }
        let urlPath = "/things/\(thingName)/jobs"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPendingJobExecutions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "data.jobs.iot.\(config.region).amazonaws.com")
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(id: "getPendingJobExecutions")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetPendingJobExecutionsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetPendingJobExecutionsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(contentType: "application/json"))
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

    /// <p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>
    public func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput, completion: @escaping (SdkResult<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>) -> Void)
    {
        guard let thingName = input.thingName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component thingName unexpectedly nil"))))
            return
        }
        let urlPath = "/things/\(thingName)/jobs/$next"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startNextPendingJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "data.jobs.iot.\(config.region).amazonaws.com")
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(id: "startNextPendingJobExecution")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartNextPendingJobExecutionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartNextPendingJobExecutionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: StartNextPendingJobExecutionInputBodyMiddleware())
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

    /// <p>Updates the status of a job execution.</p>
    public func updateJobExecution(input: UpdateJobExecutionInput, completion: @escaping (SdkResult<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>) -> Void)
    {
        guard let thingName = input.thingName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component thingName unexpectedly nil"))))
            return
        }
        guard let jobId = input.jobId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component jobId unexpectedly nil"))))
            return
        }
        let urlPath = "/things/\(thingName)/jobs/\(jobId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "data.jobs.iot.\(config.region).amazonaws.com")
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(id: "updateJobExecution")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: UpdateJobExecutionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: UpdateJobExecutionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: UpdateJobExecutionInputBodyMiddleware())
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