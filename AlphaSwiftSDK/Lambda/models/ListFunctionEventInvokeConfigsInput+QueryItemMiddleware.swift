// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ListFunctionEventInvokeConfigsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListFunctionEventInvokeConfigsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListFunctionEventInvokeConfigsInput>,
                  next: H) -> Result<OperationOutput<ListFunctionEventInvokeConfigsOutput, ListFunctionEventInvokeConfigsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        if let marker = input.operationInput.marker {
            let queryItem = URLQueryItem(name: "Marker", value: String(marker))
            input.builder.withQueryItem(queryItem)
        }
        if let maxItems = input.operationInput.maxItems {
            let queryItem = URLQueryItem(name: "MaxItems", value: String(maxItems))
            input.builder.withQueryItem(queryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListFunctionEventInvokeConfigsInput>
    public typealias MOutput = OperationOutput<ListFunctionEventInvokeConfigsOutput, ListFunctionEventInvokeConfigsError>
    public typealias Context = HttpContext
}
