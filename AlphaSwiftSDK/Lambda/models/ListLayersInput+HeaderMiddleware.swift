// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListLayersInputHeadersMiddleware: Middleware {
    public let id: String = "ListLayersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListLayersInput>,
                  next: H) -> Result<OperationOutput<ListLayersOutput, ListLayersError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListLayersInput>
    public typealias MOutput = OperationOutput<ListLayersOutput, ListLayersError>
    public typealias Context = HttpContext
}
