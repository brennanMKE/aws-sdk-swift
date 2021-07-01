// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListProvisionedCapacityInputHeadersMiddleware: Middleware {
    public let id: String = "ListProvisionedCapacityInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListProvisionedCapacityInput>,
                  next: H) -> Swift.Result<OperationOutput<ListProvisionedCapacityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListProvisionedCapacityInput>
    public typealias MOutput = OperationOutput<ListProvisionedCapacityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListProvisionedCapacityOutputError>
}

public struct ListProvisionedCapacityInputQueryItemMiddleware: Middleware {
    public let id: String = "ListProvisionedCapacityInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListProvisionedCapacityInput>,
                  next: H) -> Swift.Result<OperationOutput<ListProvisionedCapacityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListProvisionedCapacityInput>
    public typealias MOutput = OperationOutput<ListProvisionedCapacityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListProvisionedCapacityOutputError>
}

extension ListProvisionedCapacityInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}