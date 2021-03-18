// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct MergeDeveloperIdentitiesInputHeadersMiddleware: Middleware {
    public let id: String = "MergeDeveloperIdentitiesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MergeDeveloperIdentitiesInput>,
                  next: H) -> Result<OperationOutput<MergeDeveloperIdentitiesOutput, MergeDeveloperIdentitiesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<MergeDeveloperIdentitiesInput>
    public typealias MOutput = OperationOutput<MergeDeveloperIdentitiesOutput, MergeDeveloperIdentitiesError>
    public typealias Context = HttpContext
}