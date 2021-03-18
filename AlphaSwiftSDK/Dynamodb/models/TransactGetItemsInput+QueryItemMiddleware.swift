// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct TransactGetItemsInputQueryItemMiddleware: Middleware {
    public let id: String = "TransactGetItemsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TransactGetItemsInput>,
                  next: H) -> Result<OperationOutput<TransactGetItemsOutput, TransactGetItemsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TransactGetItemsInput>
    public typealias MOutput = OperationOutput<TransactGetItemsOutput, TransactGetItemsError>
    public typealias Context = HttpContext
}
