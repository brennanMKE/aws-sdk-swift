// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListStreamsInputHeadersMiddleware: Middleware {
    public let id: String = "ListStreamsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamsInput>
    public typealias MOutput = OperationOutput<ListStreamsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamsOutputError>
}

public struct ListStreamsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListStreamsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        let ascendingOrderQueryItem = URLQueryItem(name: "isAscendingOrder".urlPercentEncoding(), value: String(input.operationInput.ascendingOrder).urlPercentEncoding())
        input.builder.withQueryItem(ascendingOrderQueryItem)
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamsInput>
    public typealias MOutput = OperationOutput<ListStreamsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamsOutputError>
}

extension ListStreamsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}