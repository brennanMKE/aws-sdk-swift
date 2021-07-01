// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation

public class ElasticInferenceClient {
    let client: SdkHttpClient
    let config: ElasticInferenceClientConfiguration
    let serviceName = "Elastic Inference"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: ElasticInferenceClientConfiguration) {
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

    public class ElasticInferenceClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

        public var region: String
        public var credentialsProvider: AWSCredentialsProvider
        public var signingRegion: String
        public var endpointResolver: EndpointResolver

        public init (
            credentialsProvider: AWSCredentialsProvider,
            endpointResolver: EndpointResolver,
            region: String,
            signingRegion: String
        ) throws
        {
            self.credentialsProvider = credentialsProvider
            self.endpointResolver = endpointResolver
            self.region = region
            self.signingRegion = signingRegion
        }

        public convenience init(credentialsProvider: AWSCredentialsProvider) throws {
            let region = "us-east-1"
            let signingRegion = "us-east-1"
            let endpointResolver = DefaultEndpointResolver()
            try self.init(
                credentialsProvider: credentialsProvider,
                endpointResolver: endpointResolver,
                region: region,
                signingRegion: signingRegion
            )
        }

        public static func `default`() throws -> ElasticInferenceClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try ElasticInferenceClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

extension ElasticInferenceClient: ElasticInferenceClientProtocol {
    /// <p>
    ///             Describes the locations in which a given accelerator type or set of types is present in a given region.
    ///         </p>
    public func describeAcceleratorOfferings(input: DescribeAcceleratorOfferingsInput, completion: @escaping (SdkResult<DescribeAcceleratorOfferingsOutputResponse, DescribeAcceleratorOfferingsOutputError>) -> Void)
    {
        let urlPath = "/describe-accelerator-offerings"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeAcceleratorOfferings")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeAcceleratorOfferingsInput, DescribeAcceleratorOfferingsOutputResponse, DescribeAcceleratorOfferingsOutputError>(id: "describeAcceleratorOfferings")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorOfferingsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorOfferingsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeAcceleratorOfferingsInput, DescribeAcceleratorOfferingsOutputResponse, DescribeAcceleratorOfferingsOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorOfferingsInputBodyMiddleware())
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

    /// <p>
    ///             Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput.
    ///         </p>
    public func describeAcceleratorTypes(input: DescribeAcceleratorTypesInput, completion: @escaping (SdkResult<DescribeAcceleratorTypesOutputResponse, DescribeAcceleratorTypesOutputError>) -> Void)
    {
        let urlPath = "/describe-accelerator-types"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeAcceleratorTypes")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeAcceleratorTypesInput, DescribeAcceleratorTypesOutputResponse, DescribeAcceleratorTypesOutputError>(id: "describeAcceleratorTypes")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorTypesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorTypesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeAcceleratorTypesInput, DescribeAcceleratorTypesOutputResponse, DescribeAcceleratorTypesOutputError>(contentType: "application/json"))
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

    /// <p>
    ///             Describes information over a provided set of accelerators belonging to an account.
    ///         </p>
    public func describeAccelerators(input: DescribeAcceleratorsInput, completion: @escaping (SdkResult<DescribeAcceleratorsOutputResponse, DescribeAcceleratorsOutputError>) -> Void)
    {
        let urlPath = "/describe-accelerators"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeAccelerators")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeAcceleratorsInput, DescribeAcceleratorsOutputResponse, DescribeAcceleratorsOutputError>(id: "describeAccelerators")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeAcceleratorsInput, DescribeAcceleratorsOutputResponse, DescribeAcceleratorsOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: DescribeAcceleratorsInputBodyMiddleware())
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

    /// <p>
    ///             Returns all tags of an Elastic Inference Accelerator.
    ///         </p>
    public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    {
        guard let resourceArn = input.resourceArn else {
            completion(.failure(.client(ClientError.serializationFailed("uri component resourceArn unexpectedly nil"))))
            return
        }
        let urlPath = "/tags/\(resourceArn)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listTagsForResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListTagsForResourceInput, ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(id: "listTagsForResource")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListTagsForResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListTagsForResourceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListTagsForResourceInput, ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(contentType: "application/json"))
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

    /// <p>
    ///             Adds the specified tags to an Elastic Inference Accelerator.
    ///         </p>
    public func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    {
        guard let resourceArn = input.resourceArn else {
            completion(.failure(.client(ClientError.serializationFailed("uri component resourceArn unexpectedly nil"))))
            return
        }
        let urlPath = "/tags/\(resourceArn)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "tagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>(id: "tagResource")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: TagResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: TagResourceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: TagResourceInputBodyMiddleware())
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

    /// <p>
    ///             Removes the specified tags from an Elastic Inference Accelerator.
    ///         </p>
    public func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    {
        guard let resourceArn = input.resourceArn else {
            completion(.failure(.client(ClientError.serializationFailed("uri component resourceArn unexpectedly nil"))))
            return
        }
        let urlPath = "/tags/\(resourceArn)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "untagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "api.elastic-inference.\(config.region).amazonaws.com")
                      .withSigningName(value: "elastic-inference")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<UntagResourceInput, UntagResourceOutputResponse, UntagResourceOutputError>(id: "untagResource")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: UntagResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: UntagResourceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<UntagResourceInput, UntagResourceOutputResponse, UntagResourceOutputError>(contentType: "application/json"))
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