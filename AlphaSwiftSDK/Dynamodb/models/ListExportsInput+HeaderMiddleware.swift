// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListExportsInputHeadersMiddleware: Middleware {
    public let id: String = "ListExportsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListExportsInput>,
                  next: H) -> Result<OperationOutput<ListExportsOutput, ListExportsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListExportsInput>
    public typealias MOutput = OperationOutput<ListExportsOutput, ListExportsError>
    public typealias Context = HttpContext
}
