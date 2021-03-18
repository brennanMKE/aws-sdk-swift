// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct CreateUserPoolClientInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateUserPoolClientInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUserPoolClientInput>,
                  next: H) -> Result<OperationOutput<CreateUserPoolClientOutput, CreateUserPoolClientError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUserPoolClientInput>
    public typealias MOutput = OperationOutput<CreateUserPoolClientOutput, CreateUserPoolClientError>
    public typealias Context = HttpContext
}
