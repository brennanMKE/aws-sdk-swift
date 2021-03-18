// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PublishVersionInputHeadersMiddleware: Middleware {
    public let id: String = "PublishVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishVersionInput>,
                  next: H) -> Result<OperationOutput<PublishVersionOutput, PublishVersionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PublishVersionInput>
    public typealias MOutput = OperationOutput<PublishVersionOutput, PublishVersionError>
    public typealias Context = HttpContext
}
