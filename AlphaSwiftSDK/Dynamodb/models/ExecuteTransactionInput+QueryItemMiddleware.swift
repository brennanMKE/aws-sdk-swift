// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ExecuteTransactionInputQueryItemMiddleware: Middleware {
    public let id: String = "ExecuteTransactionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExecuteTransactionInput>,
                  next: H) -> Result<OperationOutput<ExecuteTransactionOutput, ExecuteTransactionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExecuteTransactionInput>
    public typealias MOutput = OperationOutput<ExecuteTransactionOutput, ExecuteTransactionError>
    public typealias Context = HttpContext
}
