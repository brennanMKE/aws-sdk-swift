// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartContinuousExportInputHeadersMiddleware: Middleware {
    public let id: String = "StartContinuousExportInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartContinuousExportInput>,
                  next: H) -> Swift.Result<OperationOutput<StartContinuousExportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartContinuousExportInput>
    public typealias MOutput = OperationOutput<StartContinuousExportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartContinuousExportOutputError>
}

public struct StartContinuousExportInputQueryItemMiddleware: Middleware {
    public let id: String = "StartContinuousExportInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartContinuousExportInput>,
                  next: H) -> Swift.Result<OperationOutput<StartContinuousExportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartContinuousExportInput>
    public typealias MOutput = OperationOutput<StartContinuousExportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartContinuousExportOutputError>
}

extension StartContinuousExportInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}