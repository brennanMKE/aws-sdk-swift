// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateCodeSigningConfigInputHeadersMiddleware: Middleware {
    public let id: String = "CreateCodeSigningConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCodeSigningConfigInput>,
                  next: H) -> Result<OperationOutput<CreateCodeSigningConfigOutput, CreateCodeSigningConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<CreateCodeSigningConfigOutput, CreateCodeSigningConfigError>
    public typealias Context = HttpContext
}
