// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAdminAccountInputHeadersMiddleware: Middleware {
    public let id: String = "GetAdminAccountInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAdminAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAdminAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAdminAccountInput>
    public typealias MOutput = OperationOutput<GetAdminAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAdminAccountOutputError>
}

public struct GetAdminAccountInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAdminAccountInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAdminAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAdminAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAdminAccountInput>
    public typealias MOutput = OperationOutput<GetAdminAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAdminAccountOutputError>
}

extension GetAdminAccountInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}