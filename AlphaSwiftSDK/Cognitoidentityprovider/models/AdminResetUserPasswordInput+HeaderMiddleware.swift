// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminResetUserPasswordInputHeadersMiddleware: Middleware {
    public let id: String = "AdminResetUserPasswordInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminResetUserPasswordInput>,
                  next: H) -> Result<OperationOutput<AdminResetUserPasswordOutput, AdminResetUserPasswordError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminResetUserPasswordInput>
    public typealias MOutput = OperationOutput<AdminResetUserPasswordOutput, AdminResetUserPasswordError>
    public typealias Context = HttpContext
}
