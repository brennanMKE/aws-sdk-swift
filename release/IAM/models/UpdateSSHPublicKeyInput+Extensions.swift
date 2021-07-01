// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateSSHPublicKeyInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateSSHPublicKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSSHPublicKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSSHPublicKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSSHPublicKeyInput>
    public typealias MOutput = OperationOutput<UpdateSSHPublicKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSSHPublicKeyOutputError>
}

public struct UpdateSSHPublicKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateSSHPublicKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSSHPublicKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSSHPublicKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSSHPublicKeyInput>
    public typealias MOutput = OperationOutput<UpdateSSHPublicKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSSHPublicKeyOutputError>
}

public struct UpdateSSHPublicKeyInputBodyMiddleware: Middleware {
    public let id: String = "UpdateSSHPublicKeyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSSHPublicKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSSHPublicKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSSHPublicKeyInput>
    public typealias MOutput = OperationOutput<UpdateSSHPublicKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSSHPublicKeyOutputError>
}

extension UpdateSSHPublicKeyInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let sSHPublicKeyId = sSHPublicKeyId {
            try container.encode(sSHPublicKeyId, forKey: Key("SSHPublicKeyId"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
        if let userName = userName {
            try container.encode(userName, forKey: Key("UserName"))
        }
        try container.encode("UpdateSSHPublicKey", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}