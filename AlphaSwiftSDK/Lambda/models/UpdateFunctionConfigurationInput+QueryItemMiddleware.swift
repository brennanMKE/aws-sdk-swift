// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct UpdateFunctionConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFunctionConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFunctionConfigurationInput>,
                  next: H) -> Result<OperationOutput<UpdateFunctionConfigurationOutput, UpdateFunctionConfigurationError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFunctionConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateFunctionConfigurationOutput, UpdateFunctionConfigurationError>
    public typealias Context = HttpContext
}
