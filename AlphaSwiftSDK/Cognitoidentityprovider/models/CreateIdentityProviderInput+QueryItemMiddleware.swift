// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct CreateIdentityProviderInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateIdentityProviderInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateIdentityProviderInput>,
                  next: H) -> Result<OperationOutput<CreateIdentityProviderOutput, CreateIdentityProviderError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateIdentityProviderInput>
    public typealias MOutput = OperationOutput<CreateIdentityProviderOutput, CreateIdentityProviderError>
    public typealias Context = HttpContext
}
