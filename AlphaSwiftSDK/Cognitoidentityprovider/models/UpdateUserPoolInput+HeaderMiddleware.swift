// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateUserPoolInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateUserPoolInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserPoolInput>,
                  next: H) -> Result<OperationOutput<UpdateUserPoolOutput, UpdateUserPoolError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserPoolInput>
    public typealias MOutput = OperationOutput<UpdateUserPoolOutput, UpdateUserPoolError>
    public typealias Context = HttpContext
}