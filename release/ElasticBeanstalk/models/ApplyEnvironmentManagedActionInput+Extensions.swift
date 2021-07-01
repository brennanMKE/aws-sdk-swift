// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ApplyEnvironmentManagedActionInputHeadersMiddleware: Middleware {
    public let id: String = "ApplyEnvironmentManagedActionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyEnvironmentManagedActionInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyEnvironmentManagedActionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplyEnvironmentManagedActionInput>
    public typealias MOutput = OperationOutput<ApplyEnvironmentManagedActionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyEnvironmentManagedActionOutputError>
}

public struct ApplyEnvironmentManagedActionInputQueryItemMiddleware: Middleware {
    public let id: String = "ApplyEnvironmentManagedActionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyEnvironmentManagedActionInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyEnvironmentManagedActionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplyEnvironmentManagedActionInput>
    public typealias MOutput = OperationOutput<ApplyEnvironmentManagedActionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyEnvironmentManagedActionOutputError>
}

public struct ApplyEnvironmentManagedActionInputBodyMiddleware: Middleware {
    public let id: String = "ApplyEnvironmentManagedActionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyEnvironmentManagedActionInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyEnvironmentManagedActionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ApplyEnvironmentManagedActionInput>
    public typealias MOutput = OperationOutput<ApplyEnvironmentManagedActionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyEnvironmentManagedActionOutputError>
}

extension ApplyEnvironmentManagedActionInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let actionId = actionId {
            try container.encode(actionId, forKey: Key("ActionId"))
        }
        if let environmentId = environmentId {
            try container.encode(environmentId, forKey: Key("EnvironmentId"))
        }
        if let environmentName = environmentName {
            try container.encode(environmentName, forKey: Key("EnvironmentName"))
        }
        try container.encode("ApplyEnvironmentManagedAction", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}