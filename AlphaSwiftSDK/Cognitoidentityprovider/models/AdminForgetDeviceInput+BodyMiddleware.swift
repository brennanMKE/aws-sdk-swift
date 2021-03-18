// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct AdminForgetDeviceInputBodyMiddleware: Middleware {
    public let id: String = "AdminForgetDeviceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminForgetDeviceInput>,
                  next: H) -> Result<OperationOutput<AdminForgetDeviceOutput, AdminForgetDeviceError>, Error>
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

    public typealias MInput = SerializeStepInput<AdminForgetDeviceInput>
    public typealias MOutput = OperationOutput<AdminForgetDeviceOutput, AdminForgetDeviceError>
    public typealias Context = HttpContext
}
