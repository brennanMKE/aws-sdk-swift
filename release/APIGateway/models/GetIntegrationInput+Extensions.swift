// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetIntegrationInputHeadersMiddleware: Middleware {
    public let id: String = "GetIntegrationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetIntegrationInput>
    public typealias MOutput = OperationOutput<GetIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetIntegrationOutputError>
}

public struct GetIntegrationInputQueryItemMiddleware: Middleware {
    public let id: String = "GetIntegrationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetIntegrationInput>
    public typealias MOutput = OperationOutput<GetIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetIntegrationOutputError>
}

extension GetIntegrationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}