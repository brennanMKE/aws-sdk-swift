// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ListLayerVersionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListLayerVersionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListLayerVersionsInput>,
                  next: H) -> Result<OperationOutput<ListLayerVersionsOutput, ListLayerVersionsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        if let compatibleRuntime = input.operationInput.compatibleRuntime {
            let queryItem = URLQueryItem(name: "CompatibleRuntime", value: String(compatibleRuntime.rawValue))
            input.builder.withQueryItem(queryItem)
        }
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

    public typealias MInput = SerializeStepInput<ListLayerVersionsInput>
    public typealias MOutput = OperationOutput<ListLayerVersionsOutput, ListLayerVersionsError>
    public typealias Context = HttpContext
}
