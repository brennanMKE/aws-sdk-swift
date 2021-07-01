// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListStreamingDistributionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListStreamingDistributionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamingDistributionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamingDistributionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamingDistributionsInput>
    public typealias MOutput = OperationOutput<ListStreamingDistributionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamingDistributionsOutputError>
}

public struct ListStreamingDistributionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListStreamingDistributionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamingDistributionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamingDistributionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let marker = input.operationInput.marker {
            let markerQueryItem = URLQueryItem(name: "Marker".urlPercentEncoding(), value: String(marker).urlPercentEncoding())
            input.builder.withQueryItem(markerQueryItem)
        }
        if let maxItems = input.operationInput.maxItems {
            let maxItemsQueryItem = URLQueryItem(name: "MaxItems".urlPercentEncoding(), value: String(maxItems).urlPercentEncoding())
            input.builder.withQueryItem(maxItemsQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamingDistributionsInput>
    public typealias MOutput = OperationOutput<ListStreamingDistributionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamingDistributionsOutputError>
}

extension ListStreamingDistributionsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}