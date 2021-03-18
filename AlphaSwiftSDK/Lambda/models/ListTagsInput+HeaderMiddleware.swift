// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListTagsInputHeadersMiddleware: Middleware {
    public let id: String = "ListTagsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTagsInput>,
                  next: H) -> Result<OperationOutput<ListTagsOutput, ListTagsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTagsInput>
    public typealias MOutput = OperationOutput<ListTagsOutput, ListTagsError>
    public typealias Context = HttpContext
}
