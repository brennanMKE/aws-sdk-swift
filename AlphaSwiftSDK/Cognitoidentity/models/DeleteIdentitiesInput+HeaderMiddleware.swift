// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteIdentitiesInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteIdentitiesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIdentitiesInput>,
                  next: H) -> Result<OperationOutput<DeleteIdentitiesOutput, DeleteIdentitiesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIdentitiesInput>
    public typealias MOutput = OperationOutput<DeleteIdentitiesOutput, DeleteIdentitiesError>
    public typealias Context = HttpContext
}
