// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteMeshInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteMeshInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMeshInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMeshOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMeshInput>
    public typealias MOutput = OperationOutput<DeleteMeshOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMeshOutputError>
}

public struct DeleteMeshInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteMeshInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMeshInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMeshOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMeshInput>
    public typealias MOutput = OperationOutput<DeleteMeshOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMeshOutputError>
}

extension DeleteMeshInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}