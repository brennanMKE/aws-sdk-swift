// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDeviceInputHeadersMiddleware: Middleware {
    public let id: String = "GetDeviceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceInput>,
                  next: H) -> Result<OperationOutput<GetDeviceOutput, GetDeviceError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceInput>
    public typealias MOutput = OperationOutput<GetDeviceOutput, GetDeviceError>
    public typealias Context = HttpContext
}
