// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisableKinesisStreamingDestinationInputHeadersMiddleware: Middleware {
    public let id: String = "DisableKinesisStreamingDestinationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableKinesisStreamingDestinationInput>,
                  next: H) -> Result<OperationOutput<DisableKinesisStreamingDestinationOutput, DisableKinesisStreamingDestinationError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisableKinesisStreamingDestinationInput>
    public typealias MOutput = OperationOutput<DisableKinesisStreamingDestinationOutput, DisableKinesisStreamingDestinationError>
    public typealias Context = HttpContext
}
