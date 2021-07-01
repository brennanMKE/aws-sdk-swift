// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteMitigationActionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteMitigationActionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMitigationActionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMitigationActionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMitigationActionInput>
    public typealias MOutput = OperationOutput<DeleteMitigationActionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMitigationActionOutputError>
}

public struct DeleteMitigationActionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteMitigationActionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMitigationActionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMitigationActionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMitigationActionInput>
    public typealias MOutput = OperationOutput<DeleteMitigationActionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMitigationActionOutputError>
}

extension DeleteMitigationActionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}