// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteDataSourceInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteDataSourceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDataSourceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDataSourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDataSourceInput>
    public typealias MOutput = OperationOutput<DeleteDataSourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDataSourceOutputError>
}

public struct DeleteDataSourceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteDataSourceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDataSourceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDataSourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDataSourceInput>
    public typealias MOutput = OperationOutput<DeleteDataSourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDataSourceOutputError>
}

extension DeleteDataSourceInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}