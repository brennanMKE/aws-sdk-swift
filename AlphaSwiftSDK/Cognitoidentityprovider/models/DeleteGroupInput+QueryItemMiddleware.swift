// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGroupInput>,
                  next: H) -> Result<OperationOutput<DeleteGroupOutput, DeleteGroupError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteGroupInput>
    public typealias MOutput = OperationOutput<DeleteGroupOutput, DeleteGroupError>
    public typealias Context = HttpContext
}
