// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartActivityStreamInputHeadersMiddleware: Middleware {
    public let id: String = "StartActivityStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartActivityStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<StartActivityStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartActivityStreamInput>
    public typealias MOutput = OperationOutput<StartActivityStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartActivityStreamOutputError>
}

public struct StartActivityStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "StartActivityStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartActivityStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<StartActivityStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartActivityStreamInput>
    public typealias MOutput = OperationOutput<StartActivityStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartActivityStreamOutputError>
}

public struct StartActivityStreamInputBodyMiddleware: Middleware {
    public let id: String = "StartActivityStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartActivityStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<StartActivityStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartActivityStreamInput>
    public typealias MOutput = OperationOutput<StartActivityStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartActivityStreamOutputError>
}

extension StartActivityStreamInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let applyImmediately = applyImmediately {
            try container.encode(applyImmediately, forKey: Key("ApplyImmediately"))
        }
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let mode = mode {
            try container.encode(mode, forKey: Key("Mode"))
        }
        if let resourceArn = resourceArn {
            try container.encode(resourceArn, forKey: Key("ResourceArn"))
        }
        try container.encode("StartActivityStream", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}