// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct AdminSetUserPasswordInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminSetUserPasswordInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminSetUserPasswordInput>,
                  next: H) -> Result<OperationOutput<AdminSetUserPasswordOutput, AdminSetUserPasswordError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminSetUserPasswordInput>
    public typealias MOutput = OperationOutput<AdminSetUserPasswordOutput, AdminSetUserPasswordError>
    public typealias Context = HttpContext
}
