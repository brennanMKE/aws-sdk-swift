// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeElasticsearchInstanceTypeLimitsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeElasticsearchInstanceTypeLimitsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeElasticsearchInstanceTypeLimitsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeElasticsearchInstanceTypeLimitsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeElasticsearchInstanceTypeLimitsInput>
    public typealias MOutput = OperationOutput<DescribeElasticsearchInstanceTypeLimitsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeElasticsearchInstanceTypeLimitsOutputError>
}

public struct DescribeElasticsearchInstanceTypeLimitsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeElasticsearchInstanceTypeLimitsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeElasticsearchInstanceTypeLimitsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeElasticsearchInstanceTypeLimitsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let domainName = input.operationInput.domainName {
            let domainNameQueryItem = URLQueryItem(name: "domainName".urlPercentEncoding(), value: String(domainName).urlPercentEncoding())
            input.builder.withQueryItem(domainNameQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeElasticsearchInstanceTypeLimitsInput>
    public typealias MOutput = OperationOutput<DescribeElasticsearchInstanceTypeLimitsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeElasticsearchInstanceTypeLimitsOutputError>
}

extension DescribeElasticsearchInstanceTypeLimitsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}