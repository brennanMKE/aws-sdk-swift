// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetBackendEnvironmentInputHeadersMiddleware: Middleware {
    public let id: String = "GetBackendEnvironmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBackendEnvironmentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBackendEnvironmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBackendEnvironmentInput>
    public typealias MOutput = OperationOutput<GetBackendEnvironmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBackendEnvironmentOutputError>
}

public struct GetBackendEnvironmentInputQueryItemMiddleware: Middleware {
    public let id: String = "GetBackendEnvironmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBackendEnvironmentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBackendEnvironmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBackendEnvironmentInput>
    public typealias MOutput = OperationOutput<GetBackendEnvironmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBackendEnvironmentOutputError>
}

extension GetBackendEnvironmentInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}