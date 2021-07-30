// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class TranscribeStreamingClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "Transcribe Streaming"
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
        let config = try TranscribeStreamingClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class TranscribeStreamingClientConfiguration: AWSClientConfiguration {

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
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("TranscribeStreamingClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct TranscribeStreamingClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "TranscribeStreamingClient"
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

extension TranscribeStreamingClient: TranscribeStreamingClientProtocol {
    /// <p>Starts a bidirectional HTTP/2 stream where audio is streamed to Amazon Transcribe Medical and the
    ///             transcription results are streamed to your application.</p>
    public func startMedicalStreamTranscription(input: StartMedicalStreamTranscriptionInput, completion: @escaping (SdkResult<StartMedicalStreamTranscriptionOutputResponse, StartMedicalStreamTranscriptionOutputError>) -> Void)
    {
        let urlPath = "/medical-stream-transcription"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startMedicalStreamTranscription")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "transcribestreaming.\(config.region).amazonaws.com")
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutputResponse, StartMedicalStreamTranscriptionOutputError>(id: "startMedicalStreamTranscription")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartMedicalStreamTranscriptionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartMedicalStreamTranscriptionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutputResponse, StartMedicalStreamTranscriptionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: StartMedicalStreamTranscriptionInputBodyMiddleware())
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

    /// <p>Starts a bidirectional HTTP2 stream where audio is streamed to Amazon Transcribe and the transcription
    ///       results are streamed to your application.</p>
    ///          <p>The following are encoded as HTTP2 headers:</p>
    ///          <ul>
    ///             <li>
    ///                <p>x-amzn-transcribe-language-code</p>
    ///             </li>
    ///             <li>
    ///                <p>x-amzn-transcribe-media-encoding</p>
    ///             </li>
    ///             <li>
    ///                <p>x-amzn-transcribe-sample-rate</p>
    ///             </li>
    ///             <li>
    ///                <p>x-amzn-transcribe-session-id</p>
    ///             </li>
    ///          </ul>
    public func startStreamTranscription(input: StartStreamTranscriptionInput, completion: @escaping (SdkResult<StartStreamTranscriptionOutputResponse, StartStreamTranscriptionOutputError>) -> Void)
    {
        let urlPath = "/stream-transcription"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startStreamTranscription")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "transcribestreaming.\(config.region).amazonaws.com")
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartStreamTranscriptionInput, StartStreamTranscriptionOutputResponse, StartStreamTranscriptionOutputError>(id: "startStreamTranscription")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartStreamTranscriptionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartStreamTranscriptionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutputResponse, StartStreamTranscriptionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: StartStreamTranscriptionInputBodyMiddleware())
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