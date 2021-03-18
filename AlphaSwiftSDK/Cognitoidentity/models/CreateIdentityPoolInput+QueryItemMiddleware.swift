// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct CreateIdentityPoolInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateIdentityPoolInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateIdentityPoolInput>,
                  next: H) -> Result<OperationOutput<CreateIdentityPoolOutput, CreateIdentityPoolError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateIdentityPoolInput>
    public typealias MOutput = OperationOutput<CreateIdentityPoolOutput, CreateIdentityPoolError>
    public typealias Context = HttpContext
}
