// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct GetDeviceInputBodyMiddleware: Middleware {
    public let id: String = "GetDeviceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceInput>,
                  next: H) -> Result<OperationOutput<GetDeviceOutput, GetDeviceError>, Error>
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

    public typealias MInput = SerializeStepInput<GetDeviceInput>
    public typealias MOutput = OperationOutput<GetDeviceOutput, GetDeviceError>
    public typealias Context = HttpContext
}
