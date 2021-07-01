// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListEulaAcceptancesInputHeadersMiddleware: Middleware {
    public let id: String = "ListEulaAcceptancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListEulaAcceptancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListEulaAcceptancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListEulaAcceptancesInput>
    public typealias MOutput = OperationOutput<ListEulaAcceptancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListEulaAcceptancesOutputError>
}

public struct ListEulaAcceptancesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListEulaAcceptancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListEulaAcceptancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListEulaAcceptancesOutputResponse>, MError>
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
        if let eulaIds = input.operationInput.eulaIds {
            eulaIds.forEach { queryItemValue in
                let queryItem = URLQueryItem(name: "eulaIds".urlPercentEncoding(), value: String(queryItemValue).urlPercentEncoding())
                input.builder.withQueryItem(queryItem)
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListEulaAcceptancesInput>
    public typealias MOutput = OperationOutput<ListEulaAcceptancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListEulaAcceptancesOutputError>
}

extension ListEulaAcceptancesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}