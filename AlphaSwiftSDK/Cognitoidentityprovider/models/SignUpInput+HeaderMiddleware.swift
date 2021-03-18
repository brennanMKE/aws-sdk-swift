// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SignUpInputHeadersMiddleware: Middleware {
    public let id: String = "SignUpInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SignUpInput>,
                  next: H) -> Result<OperationOutput<SignUpOutput, SignUpError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SignUpInput>
    public typealias MOutput = OperationOutput<SignUpOutput, SignUpError>
    public typealias Context = HttpContext
}
