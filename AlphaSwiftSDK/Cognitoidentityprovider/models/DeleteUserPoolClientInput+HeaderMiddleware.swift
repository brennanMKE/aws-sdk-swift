// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteUserPoolClientInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteUserPoolClientInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolClientInput>,
                  next: H) -> Result<OperationOutput<DeleteUserPoolClientOutput, DeleteUserPoolClientError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserPoolClientInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolClientOutput, DeleteUserPoolClientError>
    public typealias Context = HttpContext
}
