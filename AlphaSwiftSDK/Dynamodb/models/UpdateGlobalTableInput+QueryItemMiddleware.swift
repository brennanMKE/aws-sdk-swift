// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct UpdateGlobalTableInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateGlobalTableInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateGlobalTableInput>,
                  next: H) -> Result<OperationOutput<UpdateGlobalTableOutput, UpdateGlobalTableError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateGlobalTableInput>
    public typealias MOutput = OperationOutput<UpdateGlobalTableOutput, UpdateGlobalTableError>
    public typealias Context = HttpContext
}
