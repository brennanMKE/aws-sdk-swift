// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateAttributeGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateAttributeGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateAttributeGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateAttributeGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateAttributeGroupInput>
    public typealias MOutput = OperationOutput<DisassociateAttributeGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateAttributeGroupOutputError>
}

public struct DisassociateAttributeGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateAttributeGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateAttributeGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateAttributeGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateAttributeGroupInput>
    public typealias MOutput = OperationOutput<DisassociateAttributeGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateAttributeGroupOutputError>
}

extension DisassociateAttributeGroupInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}