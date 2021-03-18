// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListUsersInputHeadersMiddleware: Middleware {
    public let id: String = "ListUsersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListUsersInput>,
                  next: H) -> Result<OperationOutput<ListUsersOutput, ListUsersError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListUsersInput>
    public typealias MOutput = OperationOutput<ListUsersOutput, ListUsersError>
    public typealias Context = HttpContext
}
