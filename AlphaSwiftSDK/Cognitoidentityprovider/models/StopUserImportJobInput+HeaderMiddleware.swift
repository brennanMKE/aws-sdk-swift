// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopUserImportJobInputHeadersMiddleware: Middleware {
    public let id: String = "StopUserImportJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopUserImportJobInput>,
                  next: H) -> Result<OperationOutput<StopUserImportJobOutput, StopUserImportJobError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopUserImportJobInput>
    public typealias MOutput = OperationOutput<StopUserImportJobOutput, StopUserImportJobError>
    public typealias Context = HttpContext
}
