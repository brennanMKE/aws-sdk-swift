// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct GetCSVHeaderInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCSVHeaderInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCSVHeaderInput>,
                  next: H) -> Result<OperationOutput<GetCSVHeaderOutput, GetCSVHeaderError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCSVHeaderInput>
    public typealias MOutput = OperationOutput<GetCSVHeaderOutput, GetCSVHeaderError>
    public typealias Context = HttpContext
}
