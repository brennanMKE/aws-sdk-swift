// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminLinkProviderForUserInputHeadersMiddleware: Middleware {
    public let id: String = "AdminLinkProviderForUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminLinkProviderForUserInput>,
                  next: H) -> Result<OperationOutput<AdminLinkProviderForUserOutput, AdminLinkProviderForUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminLinkProviderForUserInput>
    public typealias MOutput = OperationOutput<AdminLinkProviderForUserOutput, AdminLinkProviderForUserError>
    public typealias Context = HttpContext
}
