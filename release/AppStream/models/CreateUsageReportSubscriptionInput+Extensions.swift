// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateUsageReportSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateUsageReportSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUsageReportSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUsageReportSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUsageReportSubscriptionInput>
    public typealias MOutput = OperationOutput<CreateUsageReportSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUsageReportSubscriptionOutputError>
}

public struct CreateUsageReportSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateUsageReportSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUsageReportSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUsageReportSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUsageReportSubscriptionInput>
    public typealias MOutput = OperationOutput<CreateUsageReportSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUsageReportSubscriptionOutputError>
}

extension CreateUsageReportSubscriptionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}