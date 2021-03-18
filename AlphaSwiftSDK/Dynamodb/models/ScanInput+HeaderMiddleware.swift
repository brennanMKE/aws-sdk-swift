// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ScanInputHeadersMiddleware: Middleware {
    public let id: String = "ScanInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ScanInput>,
                  next: H) -> Result<OperationOutput<ScanOutput, ScanError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ScanInput>
    public typealias MOutput = OperationOutput<ScanOutput, ScanError>
    public typealias Context = HttpContext
}
