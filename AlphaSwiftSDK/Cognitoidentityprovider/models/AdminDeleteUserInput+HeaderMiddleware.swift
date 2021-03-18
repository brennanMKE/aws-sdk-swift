// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminDeleteUserInputHeadersMiddleware: Middleware {
    public let id: String = "AdminDeleteUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminDeleteUserInput>,
                  next: H) -> Result<OperationOutput<AdminDeleteUserOutput, AdminDeleteUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminDeleteUserInput>
    public typealias MOutput = OperationOutput<AdminDeleteUserOutput, AdminDeleteUserError>
    public typealias Context = HttpContext
}
