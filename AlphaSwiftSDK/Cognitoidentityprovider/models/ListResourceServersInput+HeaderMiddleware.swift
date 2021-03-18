// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListResourceServersInputHeadersMiddleware: Middleware {
    public let id: String = "ListResourceServersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListResourceServersInput>,
                  next: H) -> Result<OperationOutput<ListResourceServersOutput, ListResourceServersError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListResourceServersInput>
    public typealias MOutput = OperationOutput<ListResourceServersOutput, ListResourceServersError>
    public typealias Context = HttpContext
}
