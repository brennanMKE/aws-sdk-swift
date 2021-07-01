// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListOriginRequestPoliciesInputHeadersMiddleware: Middleware {
    public let id: String = "ListOriginRequestPoliciesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListOriginRequestPoliciesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListOriginRequestPoliciesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListOriginRequestPoliciesInput>
    public typealias MOutput = OperationOutput<ListOriginRequestPoliciesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListOriginRequestPoliciesOutputError>
}

public struct ListOriginRequestPoliciesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListOriginRequestPoliciesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListOriginRequestPoliciesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListOriginRequestPoliciesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let type = input.operationInput.type {
            let typeQueryItem = URLQueryItem(name: "Type".urlPercentEncoding(), value: String(type.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(typeQueryItem)
        }
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

    public typealias MInput = SerializeStepInput<ListOriginRequestPoliciesInput>
    public typealias MOutput = OperationOutput<ListOriginRequestPoliciesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListOriginRequestPoliciesOutputError>
}

extension ListOriginRequestPoliciesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}