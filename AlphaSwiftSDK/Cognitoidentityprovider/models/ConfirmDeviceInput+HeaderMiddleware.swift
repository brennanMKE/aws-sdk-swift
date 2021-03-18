// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ConfirmDeviceInputHeadersMiddleware: Middleware {
    public let id: String = "ConfirmDeviceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmDeviceInput>,
                  next: H) -> Result<OperationOutput<ConfirmDeviceOutput, ConfirmDeviceError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmDeviceInput>
    public typealias MOutput = OperationOutput<ConfirmDeviceOutput, ConfirmDeviceError>
    public typealias Context = HttpContext
}
