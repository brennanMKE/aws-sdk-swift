// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteKeyPairInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteKeyPairInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteKeyPairInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteKeyPairOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteKeyPairInput>
    public typealias MOutput = OperationOutput<DeleteKeyPairOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteKeyPairOutputError>
}

public struct DeleteKeyPairInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteKeyPairInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteKeyPairInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteKeyPairOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteKeyPairInput>
    public typealias MOutput = OperationOutput<DeleteKeyPairOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteKeyPairOutputError>
}

public struct DeleteKeyPairInputBodyMiddleware: Middleware {
    public let id: String = "DeleteKeyPairInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteKeyPairInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteKeyPairOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteKeyPairInput>
    public typealias MOutput = OperationOutput<DeleteKeyPairOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteKeyPairOutputError>
}

extension DeleteKeyPairInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let keyName = keyName {
            try container.encode(keyName, forKey: Key("KeyName"))
        }
        if let keyPairId = keyPairId {
            try container.encode(keyPairId, forKey: Key("KeyPairId"))
        }
        try container.encode("DeleteKeyPair", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}