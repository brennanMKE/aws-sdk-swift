// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ForgetDeviceInputQueryItemMiddleware: Middleware {
    public let id: String = "ForgetDeviceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ForgetDeviceInput>,
                  next: H) -> Result<OperationOutput<ForgetDeviceOutput, ForgetDeviceError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ForgetDeviceInput>
    public typealias MOutput = OperationOutput<ForgetDeviceOutput, ForgetDeviceError>
    public typealias Context = HttpContext
}