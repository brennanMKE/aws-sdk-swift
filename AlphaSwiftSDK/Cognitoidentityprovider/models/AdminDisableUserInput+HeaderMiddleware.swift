// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminDisableUserInputHeadersMiddleware: Middleware {
    public let id: String = "AdminDisableUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminDisableUserInput>,
                  next: H) -> Result<OperationOutput<AdminDisableUserOutput, AdminDisableUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminDisableUserInput>
    public typealias MOutput = OperationOutput<AdminDisableUserOutput, AdminDisableUserError>
    public typealias Context = HttpContext
}