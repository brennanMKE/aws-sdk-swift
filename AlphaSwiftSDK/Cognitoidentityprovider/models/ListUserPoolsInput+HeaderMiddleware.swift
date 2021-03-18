// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListUserPoolsInputHeadersMiddleware: Middleware {
    public let id: String = "ListUserPoolsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListUserPoolsInput>,
                  next: H) -> Result<OperationOutput<ListUserPoolsOutput, ListUserPoolsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListUserPoolsInput>
    public typealias MOutput = OperationOutput<ListUserPoolsOutput, ListUserPoolsError>
    public typealias Context = HttpContext
}
