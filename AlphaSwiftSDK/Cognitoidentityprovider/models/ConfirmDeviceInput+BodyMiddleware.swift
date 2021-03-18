// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ConfirmDeviceInputBodyMiddleware: Middleware {
    public let id: String = "ConfirmDeviceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmDeviceInput>,
                  next: H) -> Result<OperationOutput<ConfirmDeviceOutput, ConfirmDeviceError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(err)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmDeviceInput>
    public typealias MOutput = OperationOutput<ConfirmDeviceOutput, ConfirmDeviceError>
    public typealias Context = HttpContext
}
