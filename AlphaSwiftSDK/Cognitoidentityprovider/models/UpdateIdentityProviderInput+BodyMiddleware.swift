// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct UpdateIdentityProviderInputBodyMiddleware: Middleware {
    public let id: String = "UpdateIdentityProviderInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateIdentityProviderInput>,
                  next: H) -> Result<OperationOutput<UpdateIdentityProviderOutput, UpdateIdentityProviderError>, Error>
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

    public typealias MInput = SerializeStepInput<UpdateIdentityProviderInput>
    public typealias MOutput = OperationOutput<UpdateIdentityProviderOutput, UpdateIdentityProviderError>
    public typealias Context = HttpContext
}
