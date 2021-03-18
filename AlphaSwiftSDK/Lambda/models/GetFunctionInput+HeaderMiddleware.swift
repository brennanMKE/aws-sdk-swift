// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetFunctionInputHeadersMiddleware: Middleware {
    public let id: String = "GetFunctionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFunctionInput>,
                  next: H) -> Result<OperationOutput<GetFunctionOutput, GetFunctionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFunctionInput>
    public typealias MOutput = OperationOutput<GetFunctionOutput, GetFunctionError>
    public typealias Context = HttpContext
}