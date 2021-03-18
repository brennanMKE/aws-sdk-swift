// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct GetProvisionedConcurrencyConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "GetProvisionedConcurrencyConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetProvisionedConcurrencyConfigInput>,
                  next: H) -> Result<OperationOutput<GetProvisionedConcurrencyConfigOutput, GetProvisionedConcurrencyConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        if let qualifier = input.operationInput.qualifier {
            let queryItem = URLQueryItem(name: "Qualifier", value: String(qualifier))
            input.builder.withQueryItem(queryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetProvisionedConcurrencyConfigInput>
    public typealias MOutput = OperationOutput<GetProvisionedConcurrencyConfigOutput, GetProvisionedConcurrencyConfigError>
    public typealias Context = HttpContext
}
