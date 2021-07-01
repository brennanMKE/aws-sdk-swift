// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteFunctionDefinitionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteFunctionDefinitionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFunctionDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionDefinitionInput>
    public typealias MOutput = OperationOutput<DeleteFunctionDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFunctionDefinitionOutputError>
}

public struct DeleteFunctionDefinitionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteFunctionDefinitionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFunctionDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionDefinitionInput>
    public typealias MOutput = OperationOutput<DeleteFunctionDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFunctionDefinitionOutputError>
}

extension DeleteFunctionDefinitionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}