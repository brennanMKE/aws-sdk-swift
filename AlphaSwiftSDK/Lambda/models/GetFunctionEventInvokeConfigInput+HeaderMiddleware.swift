// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetFunctionEventInvokeConfigInputHeadersMiddleware: Middleware {
    public let id: String = "GetFunctionEventInvokeConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFunctionEventInvokeConfigInput>,
                  next: H) -> Result<OperationOutput<GetFunctionEventInvokeConfigOutput, GetFunctionEventInvokeConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFunctionEventInvokeConfigInput>
    public typealias MOutput = OperationOutput<GetFunctionEventInvokeConfigOutput, GetFunctionEventInvokeConfigError>
    public typealias Context = HttpContext
}
