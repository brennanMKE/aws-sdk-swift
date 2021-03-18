// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateGlobalTableSettingsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateGlobalTableSettingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateGlobalTableSettingsInput>,
                  next: H) -> Result<OperationOutput<UpdateGlobalTableSettingsOutput, UpdateGlobalTableSettingsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateGlobalTableSettingsInput>
    public typealias MOutput = OperationOutput<UpdateGlobalTableSettingsOutput, UpdateGlobalTableSettingsError>
    public typealias Context = HttpContext
}
