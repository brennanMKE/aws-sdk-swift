// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class PricingClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "Pricing"
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
        let config = try PricingClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class PricingClientConfiguration: AWSClientConfiguration {

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
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("PricingClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct PricingClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "PricingClient"
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

extension PricingClient: PricingClientProtocol {
    /// <p>Returns the metadata for one service or a list of the metadata for all services. Use
    ///          this without a service code to get the service codes for all services.
    ///          Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to
    ///          that service, such as the attribute
    ///          names available for that service. For example, some of the attribute names available for EC2 are
    ///          <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>,
    ///          <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>
    public func describeServices(input: DescribeServicesInput, completion: @escaping (SdkResult<DescribeServicesOutputResponse, DescribeServicesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeServices")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.pricing.\(config.region).amazonaws.com")
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeServicesInput, DescribeServicesOutputResponse, DescribeServicesOutputError>(id: "describeServices")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeServicesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeServicesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeServicesInput, DescribeServicesOutputResponse, DescribeServicesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: DescribeServicesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<DescribeServicesInput, DescribeServicesOutputResponse, DescribeServicesOutputError>(xAmzTarget: "AWSPriceListService.DescribeServices"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns a list of attribute values. Attibutes are similar to the details
    ///           in a Price List API offer file. For a list of available attributes, see
    ///          <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a>
    ///          in the <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">AWS Billing and Cost Management User Guide</a>.</p>
    public func getAttributeValues(input: GetAttributeValuesInput, completion: @escaping (SdkResult<GetAttributeValuesOutputResponse, GetAttributeValuesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getAttributeValues")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.pricing.\(config.region).amazonaws.com")
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetAttributeValuesInput, GetAttributeValuesOutputResponse, GetAttributeValuesOutputError>(id: "getAttributeValues")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetAttributeValuesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetAttributeValuesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetAttributeValuesInput, GetAttributeValuesOutputResponse, GetAttributeValuesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetAttributeValuesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetAttributeValuesInput, GetAttributeValuesOutputResponse, GetAttributeValuesOutputError>(xAmzTarget: "AWSPriceListService.GetAttributeValues"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns a list of all products that match the filter criteria.</p>
    public func getProducts(input: GetProductsInput, completion: @escaping (SdkResult<GetProductsOutputResponse, GetProductsOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getProducts")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.pricing.\(config.region).amazonaws.com")
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetProductsInput, GetProductsOutputResponse, GetProductsOutputError>(id: "getProducts")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetProductsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetProductsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetProductsInput, GetProductsOutputResponse, GetProductsOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetProductsInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetProductsInput, GetProductsOutputResponse, GetProductsOutputError>(xAmzTarget: "AWSPriceListService.GetProducts"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}