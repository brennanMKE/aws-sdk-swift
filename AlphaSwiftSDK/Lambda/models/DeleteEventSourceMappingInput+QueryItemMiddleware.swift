// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteEventSourceMappingInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteEventSourceMappingInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteEventSourceMappingInput>,
                  next: H) -> Result<OperationOutput<DeleteEventSourceMappingOutput, DeleteEventSourceMappingError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteEventSourceMappingInput>
    public typealias MOutput = OperationOutput<DeleteEventSourceMappingOutput, DeleteEventSourceMappingError>
    public typealias Context = HttpContext
}