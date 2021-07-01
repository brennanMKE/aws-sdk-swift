// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAccessKeyInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAccessKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAccessKeyInput>
    public typealias MOutput = OperationOutput<CreateAccessKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessKeyOutputError>
}

public struct CreateAccessKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAccessKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAccessKeyInput>
    public typealias MOutput = OperationOutput<CreateAccessKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessKeyOutputError>
}

public struct CreateAccessKeyInputBodyMiddleware: Middleware {
    public let id: String = "CreateAccessKeyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessKeyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAccessKeyInput>
    public typealias MOutput = OperationOutput<CreateAccessKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessKeyOutputError>
}

extension CreateAccessKeyInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let userName = userName {
            try container.encode(userName, forKey: Key("UserName"))
        }
        try container.encode("CreateAccessKey", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}