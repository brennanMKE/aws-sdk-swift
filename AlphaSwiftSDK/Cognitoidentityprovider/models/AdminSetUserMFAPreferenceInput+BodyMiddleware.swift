// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct AdminSetUserMFAPreferenceInputBodyMiddleware: Middleware {
    public let id: String = "AdminSetUserMFAPreferenceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminSetUserMFAPreferenceInput>,
                  next: H) -> Result<OperationOutput<AdminSetUserMFAPreferenceOutput, AdminSetUserMFAPreferenceError>, Error>
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

    public typealias MInput = SerializeStepInput<AdminSetUserMFAPreferenceInput>
    public typealias MOutput = OperationOutput<AdminSetUserMFAPreferenceOutput, AdminSetUserMFAPreferenceError>
    public typealias Context = HttpContext
}
