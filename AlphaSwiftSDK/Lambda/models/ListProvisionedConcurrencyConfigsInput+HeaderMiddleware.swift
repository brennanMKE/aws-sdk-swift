// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListProvisionedConcurrencyConfigsInputHeadersMiddleware: Middleware {
    public let id: String = "ListProvisionedConcurrencyConfigsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListProvisionedConcurrencyConfigsInput>,
                  next: H) -> Result<OperationOutput<ListProvisionedConcurrencyConfigsOutput, ListProvisionedConcurrencyConfigsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListProvisionedConcurrencyConfigsInput>
    public typealias MOutput = OperationOutput<ListProvisionedConcurrencyConfigsOutput, ListProvisionedConcurrencyConfigsError>
    public typealias Context = HttpContext
}
