// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteScheduledAuditInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteScheduledAuditInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteScheduledAuditInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteScheduledAuditOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteScheduledAuditInput>
    public typealias MOutput = OperationOutput<DeleteScheduledAuditOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteScheduledAuditOutputError>
}

public struct DeleteScheduledAuditInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteScheduledAuditInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteScheduledAuditInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteScheduledAuditOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteScheduledAuditInput>
    public typealias MOutput = OperationOutput<DeleteScheduledAuditOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteScheduledAuditOutputError>
}

extension DeleteScheduledAuditInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}