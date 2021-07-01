// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteSmsChannelInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteSmsChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSmsChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSmsChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSmsChannelInput>
    public typealias MOutput = OperationOutput<DeleteSmsChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSmsChannelOutputError>
}

public struct DeleteSmsChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteSmsChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSmsChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSmsChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSmsChannelInput>
    public typealias MOutput = OperationOutput<DeleteSmsChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSmsChannelOutputError>
}

extension DeleteSmsChannelInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}