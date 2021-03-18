// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct StartUserImportJobInputBodyMiddleware: Middleware {
    public let id: String = "StartUserImportJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartUserImportJobInput>,
                  next: H) -> Result<OperationOutput<StartUserImportJobOutput, StartUserImportJobError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(err)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartUserImportJobInput>
    public typealias MOutput = OperationOutput<StartUserImportJobOutput, StartUserImportJobError>
    public typealias Context = HttpContext
}