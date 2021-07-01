// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetThreatIntelSetInputHeadersMiddleware: Middleware {
    public let id: String = "GetThreatIntelSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetThreatIntelSetInput>,
                  next: H) -> Swift.Result<OperationOutput<GetThreatIntelSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetThreatIntelSetInput>
    public typealias MOutput = OperationOutput<GetThreatIntelSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetThreatIntelSetOutputError>
}

public struct GetThreatIntelSetInputQueryItemMiddleware: Middleware {
    public let id: String = "GetThreatIntelSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetThreatIntelSetInput>,
                  next: H) -> Swift.Result<OperationOutput<GetThreatIntelSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetThreatIntelSetInput>
    public typealias MOutput = OperationOutput<GetThreatIntelSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetThreatIntelSetOutputError>
}

extension GetThreatIntelSetInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}