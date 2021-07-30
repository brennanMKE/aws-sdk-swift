// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class RdsDataClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "RDS Data"
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
        let config = try RdsDataClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class RdsDataClientConfiguration: AWSClientConfiguration {

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
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("RdsDataClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct RdsDataClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "RdsDataClient"
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

extension RdsDataClient: RdsDataClientProtocol {
    /// <p>Runs a batch SQL statement over an array of data.</p>
    ///         <p>You can run bulk update and insert operations for multiple records using a DML
    ///             statement with different parameter sets. Bulk operations can provide a significant
    ///             performance improvement over individual insert and update operations.</p>
    ///         <important>
    ///             <p>If a call isn't part of a transaction because it doesn't include the
    ///                     <code>transactionID</code> parameter, changes that result from the call are
    ///                 committed automatically.</p>
    ///         </important>
    public func batchExecuteStatement(input: BatchExecuteStatementInput, completion: @escaping (SdkResult<BatchExecuteStatementOutputResponse, BatchExecuteStatementOutputError>) -> Void)
    {
        let urlPath = "/BatchExecute"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "batchExecuteStatement")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<BatchExecuteStatementInput, BatchExecuteStatementOutputResponse, BatchExecuteStatementOutputError>(id: "batchExecuteStatement")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: BatchExecuteStatementInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: BatchExecuteStatementInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<BatchExecuteStatementInput, BatchExecuteStatementOutputResponse, BatchExecuteStatementOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: BatchExecuteStatementInputBodyMiddleware())
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

    /// <p>Starts a SQL transaction.</p>
    ///
    ///         <important>
    ///             <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and
    ///                 rolled back automatically after 24 hours.</p>
    ///             <p>A transaction times out if no calls use its transaction ID in three minutes.
    ///                 If a transaction times out before it's committed, it's rolled back
    ///                 automatically.</p>
    ///             <p>DDL statements inside a transaction cause an implicit commit. We recommend
    ///                 that you run each DDL statement in a separate <code>ExecuteStatement</code> call with
    ///                 <code>continueAfterTimeout</code> enabled.</p>
    ///         </important>
    public func beginTransaction(input: BeginTransactionInput, completion: @escaping (SdkResult<BeginTransactionOutputResponse, BeginTransactionOutputError>) -> Void)
    {
        let urlPath = "/BeginTransaction"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "beginTransaction")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<BeginTransactionInput, BeginTransactionOutputResponse, BeginTransactionOutputError>(id: "beginTransaction")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: BeginTransactionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: BeginTransactionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<BeginTransactionInput, BeginTransactionOutputResponse, BeginTransactionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: BeginTransactionInputBodyMiddleware())
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

    /// <p>Ends a SQL transaction started with the <code>BeginTransaction</code> operation and
    ///             commits the changes.</p>
    public func commitTransaction(input: CommitTransactionInput, completion: @escaping (SdkResult<CommitTransactionOutputResponse, CommitTransactionOutputError>) -> Void)
    {
        let urlPath = "/CommitTransaction"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "commitTransaction")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CommitTransactionInput, CommitTransactionOutputResponse, CommitTransactionOutputError>(id: "commitTransaction")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: CommitTransactionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CommitTransactionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CommitTransactionInput, CommitTransactionOutputResponse, CommitTransactionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: CommitTransactionInputBodyMiddleware())
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

    /// <p>Runs one or more SQL statements.</p>
    ///         <important>
    ///             <p>This operation is deprecated. Use the <code>BatchExecuteStatement</code> or
    ///                     <code>ExecuteStatement</code> operation.</p>
    ///         </important>
    @available(*, deprecated, message: "The ExecuteSql API is deprecated, please use the ExecuteStatement API. API deprecated since 2019-03-21")
    public func executeSql(input: ExecuteSqlInput, completion: @escaping (SdkResult<ExecuteSqlOutputResponse, ExecuteSqlOutputError>) -> Void)
    {
        let urlPath = "/ExecuteSql"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "executeSql")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ExecuteSqlInput, ExecuteSqlOutputResponse, ExecuteSqlOutputError>(id: "executeSql")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ExecuteSqlInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ExecuteSqlInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ExecuteSqlInput, ExecuteSqlOutputResponse, ExecuteSqlOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ExecuteSqlInputBodyMiddleware())
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

    /// <p>Runs a SQL statement against a database.</p>
    ///         <important>
    ///             <p>If a call isn't part of a transaction because it doesn't include the
    ///                     <code>transactionID</code> parameter, changes that result from the call are
    ///                 committed automatically.</p>
    ///         </important>
    ///         <p>The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.</p>
    public func executeStatement(input: ExecuteStatementInput, completion: @escaping (SdkResult<ExecuteStatementOutputResponse, ExecuteStatementOutputError>) -> Void)
    {
        let urlPath = "/Execute"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "executeStatement")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ExecuteStatementInput, ExecuteStatementOutputResponse, ExecuteStatementOutputError>(id: "executeStatement")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ExecuteStatementInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ExecuteStatementInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ExecuteStatementInput, ExecuteStatementOutputResponse, ExecuteStatementOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ExecuteStatementInputBodyMiddleware())
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

    /// <p>Performs a rollback of a transaction. Rolling back a transaction cancels its changes.</p>
    public func rollbackTransaction(input: RollbackTransactionInput, completion: @escaping (SdkResult<RollbackTransactionOutputResponse, RollbackTransactionOutputError>) -> Void)
    {
        let urlPath = "/RollbackTransaction"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "rollbackTransaction")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "rds-data.\(config.region).amazonaws.com")
                      .withSigningName(value: "rds-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<RollbackTransactionInput, RollbackTransactionOutputResponse, RollbackTransactionOutputError>(id: "rollbackTransaction")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: RollbackTransactionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: RollbackTransactionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<RollbackTransactionInput, RollbackTransactionOutputResponse, RollbackTransactionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: RollbackTransactionInputBodyMiddleware())
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