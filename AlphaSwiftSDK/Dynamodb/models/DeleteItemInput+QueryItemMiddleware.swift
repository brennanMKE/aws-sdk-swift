// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteItemInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteItemInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteItemInput>,
                  next: H) -> Result<OperationOutput<DeleteItemOutput, DeleteItemError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteItemInput>
    public typealias MOutput = OperationOutput<DeleteItemOutput, DeleteItemError>
    public typealias Context = HttpContext
}
