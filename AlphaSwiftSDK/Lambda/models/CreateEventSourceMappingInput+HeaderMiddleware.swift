// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateEventSourceMappingInputHeadersMiddleware: Middleware {
    public let id: String = "CreateEventSourceMappingInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateEventSourceMappingInput>,
                  next: H) -> Result<OperationOutput<CreateEventSourceMappingOutput, CreateEventSourceMappingError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateEventSourceMappingInput>
    public typealias MOutput = OperationOutput<CreateEventSourceMappingOutput, CreateEventSourceMappingError>
    public typealias Context = HttpContext
}
