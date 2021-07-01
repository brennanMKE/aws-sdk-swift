// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteSiteInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteSiteInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSiteInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSiteOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSiteInput>
    public typealias MOutput = OperationOutput<DeleteSiteOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSiteOutputError>
}

public struct DeleteSiteInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteSiteInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSiteInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSiteOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSiteInput>
    public typealias MOutput = OperationOutput<DeleteSiteOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSiteOutputError>
}

extension DeleteSiteInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}