// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListBucketIntelligentTieringConfigurationsInputHeadersMiddleware: Middleware {
    public let id: String = "ListBucketIntelligentTieringConfigurationsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListBucketIntelligentTieringConfigurationsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListBucketIntelligentTieringConfigurationsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListBucketIntelligentTieringConfigurationsInput>
    public typealias MOutput = OperationOutput<ListBucketIntelligentTieringConfigurationsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListBucketIntelligentTieringConfigurationsOutputError>
}

public struct ListBucketIntelligentTieringConfigurationsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListBucketIntelligentTieringConfigurationsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListBucketIntelligentTieringConfigurationsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListBucketIntelligentTieringConfigurationsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "intelligent-tiering", value: nil))
        input.builder.withQueryItem(URLQueryItem(name: "x-id", value: "ListBucketIntelligentTieringConfigurations"))
        if let continuationToken = input.operationInput.continuationToken {
            let continuationTokenQueryItem = URLQueryItem(name: "continuation-token".urlPercentEncoding(), value: String(continuationToken).urlPercentEncoding())
            input.builder.withQueryItem(continuationTokenQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListBucketIntelligentTieringConfigurationsInput>
    public typealias MOutput = OperationOutput<ListBucketIntelligentTieringConfigurationsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListBucketIntelligentTieringConfigurationsOutputError>
}

extension ListBucketIntelligentTieringConfigurationsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}