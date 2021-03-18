// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct InvokeAsyncInputQueryItemMiddleware: Middleware {
    public let id: String = "InvokeAsyncInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InvokeAsyncInput>,
                  next: H) -> Result<OperationOutput<InvokeAsyncOutput, InvokeAsyncError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InvokeAsyncInput>
    public typealias MOutput = OperationOutput<InvokeAsyncOutput, InvokeAsyncError>
    public typealias Context = HttpContext
}
