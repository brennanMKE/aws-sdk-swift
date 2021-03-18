// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ConfirmSignUpInputQueryItemMiddleware: Middleware {
    public let id: String = "ConfirmSignUpInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmSignUpInput>,
                  next: H) -> Result<OperationOutput<ConfirmSignUpOutput, ConfirmSignUpError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmSignUpInput>
    public typealias MOutput = OperationOutput<ConfirmSignUpOutput, ConfirmSignUpError>
    public typealias Context = HttpContext
}