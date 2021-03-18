// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteIdentityPoolInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteIdentityPoolInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIdentityPoolInput>,
                  next: H) -> Result<OperationOutput<DeleteIdentityPoolOutput, DeleteIdentityPoolError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIdentityPoolInput>
    public typealias MOutput = OperationOutput<DeleteIdentityPoolOutput, DeleteIdentityPoolError>
    public typealias Context = HttpContext
}
