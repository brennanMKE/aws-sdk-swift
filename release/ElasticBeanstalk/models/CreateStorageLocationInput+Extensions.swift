// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateStorageLocationInputHeadersMiddleware: Middleware {
    public let id: String = "CreateStorageLocationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStorageLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStorageLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStorageLocationInput>
    public typealias MOutput = OperationOutput<CreateStorageLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStorageLocationOutputError>
}

public struct CreateStorageLocationInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateStorageLocationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStorageLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStorageLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStorageLocationInput>
    public typealias MOutput = OperationOutput<CreateStorageLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStorageLocationOutputError>
}

public struct CreateStorageLocationInputBodyMiddleware: Middleware {
    public let id: String = "CreateStorageLocationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStorageLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStorageLocationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateStorageLocationInput>
    public typealias MOutput = OperationOutput<CreateStorageLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStorageLocationOutputError>
}

extension CreateStorageLocationInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        try container.encode("CreateStorageLocation", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}