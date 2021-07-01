// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListTagsForResourceInputHeadersMiddleware: Middleware {
    public let id: String = "ListTagsForResourceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTagsForResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTagsForResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTagsForResourceInput>
    public typealias MOutput = OperationOutput<ListTagsForResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTagsForResourceOutputError>
}

public struct ListTagsForResourceInputQueryItemMiddleware: Middleware {
    public let id: String = "ListTagsForResourceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTagsForResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTagsForResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let resourceArn = input.operationInput.resourceArn {
            let resourceArnQueryItem = URLQueryItem(name: "ResourceArn".urlPercentEncoding(), value: String(resourceArn).urlPercentEncoding())
            input.builder.withQueryItem(resourceArnQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTagsForResourceInput>
    public typealias MOutput = OperationOutput<ListTagsForResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTagsForResourceOutputError>
}

extension ListTagsForResourceInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}