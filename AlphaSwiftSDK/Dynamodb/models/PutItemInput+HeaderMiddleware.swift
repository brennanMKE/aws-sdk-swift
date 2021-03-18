// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutItemInputHeadersMiddleware: Middleware {
    public let id: String = "PutItemInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutItemInput>,
                  next: H) -> Result<OperationOutput<PutItemOutput, PutItemError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutItemInput>
    public typealias MOutput = OperationOutput<PutItemOutput, PutItemError>
    public typealias Context = HttpContext
}
