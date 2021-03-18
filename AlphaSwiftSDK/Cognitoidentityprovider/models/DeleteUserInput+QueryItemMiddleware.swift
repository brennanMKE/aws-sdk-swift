// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteUserInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserInput>,
                  next: H) -> Result<OperationOutput<DeleteUserOutput, DeleteUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserInput>
    public typealias MOutput = OperationOutput<DeleteUserOutput, DeleteUserError>
    public typealias Context = HttpContext
}
