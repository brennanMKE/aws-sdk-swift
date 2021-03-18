// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct QueryInputHeadersMiddleware: Middleware {
    public let id: String = "QueryInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<QueryInput>,
                  next: H) -> Result<OperationOutput<QueryOutput, QueryError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<QueryInput>
    public typealias MOutput = OperationOutput<QueryOutput, QueryError>
    public typealias Context = HttpContext
}
