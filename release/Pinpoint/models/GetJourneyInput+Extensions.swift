// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetJourneyInputHeadersMiddleware: Middleware {
    public let id: String = "GetJourneyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetJourneyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetJourneyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetJourneyInput>
    public typealias MOutput = OperationOutput<GetJourneyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetJourneyOutputError>
}

public struct GetJourneyInputQueryItemMiddleware: Middleware {
    public let id: String = "GetJourneyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetJourneyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetJourneyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetJourneyInput>
    public typealias MOutput = OperationOutput<GetJourneyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetJourneyOutputError>
}

extension GetJourneyInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}