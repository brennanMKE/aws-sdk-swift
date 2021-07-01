// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateSecurityKeyInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateSecurityKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateSecurityKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateSecurityKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateSecurityKeyInput>
    public typealias MOutput = OperationOutput<DisassociateSecurityKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateSecurityKeyOutputError>
}

public struct DisassociateSecurityKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateSecurityKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateSecurityKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateSecurityKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateSecurityKeyInput>
    public typealias MOutput = OperationOutput<DisassociateSecurityKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateSecurityKeyOutputError>
}

extension DisassociateSecurityKeyInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}