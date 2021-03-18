// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct CreateGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGroupInput>,
                  next: H) -> Result<OperationOutput<CreateGroupOutput, CreateGroupError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateGroupInput>
    public typealias MOutput = OperationOutput<CreateGroupOutput, CreateGroupError>
    public typealias Context = HttpContext
}
