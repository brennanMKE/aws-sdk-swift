// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDeviceMethodsInputHeadersMiddleware: Middleware {
    public let id: String = "GetDeviceMethodsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceMethodsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceMethodsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceMethodsInput>
    public typealias MOutput = OperationOutput<GetDeviceMethodsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceMethodsOutputError>
}

public struct GetDeviceMethodsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDeviceMethodsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceMethodsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceMethodsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceMethodsInput>
    public typealias MOutput = OperationOutput<GetDeviceMethodsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceMethodsOutputError>
}

extension GetDeviceMethodsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}