// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteSipRuleInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteSipRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSipRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSipRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSipRuleInput>
    public typealias MOutput = OperationOutput<DeleteSipRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSipRuleOutputError>
}

public struct DeleteSipRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteSipRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSipRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSipRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSipRuleInput>
    public typealias MOutput = OperationOutput<DeleteSipRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSipRuleOutputError>
}

extension DeleteSipRuleInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}