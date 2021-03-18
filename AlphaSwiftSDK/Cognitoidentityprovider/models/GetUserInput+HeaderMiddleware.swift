// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetUserInputHeadersMiddleware: Middleware {
    public let id: String = "GetUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetUserInput>,
                  next: H) -> Result<OperationOutput<GetUserOutput, GetUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetUserInput>
    public typealias MOutput = OperationOutput<GetUserOutput, GetUserError>
    public typealias Context = HttpContext
}
