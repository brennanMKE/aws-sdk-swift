// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAssociatedResourcesInputHeadersMiddleware: Middleware {
    public let id: String = "ListAssociatedResourcesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAssociatedResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAssociatedResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAssociatedResourcesInput>
    public typealias MOutput = OperationOutput<ListAssociatedResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAssociatedResourcesOutputError>
}

public struct ListAssociatedResourcesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListAssociatedResourcesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAssociatedResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAssociatedResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(input.operationInput.maxResults).urlPercentEncoding())
        input.builder.withQueryItem(maxResultsQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAssociatedResourcesInput>
    public typealias MOutput = OperationOutput<ListAssociatedResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAssociatedResourcesOutputError>
}

extension ListAssociatedResourcesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}