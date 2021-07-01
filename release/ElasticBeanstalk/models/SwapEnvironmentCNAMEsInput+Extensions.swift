// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SwapEnvironmentCNAMEsInputHeadersMiddleware: Middleware {
    public let id: String = "SwapEnvironmentCNAMEsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SwapEnvironmentCNAMEsInput>,
                  next: H) -> Swift.Result<OperationOutput<SwapEnvironmentCNAMEsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SwapEnvironmentCNAMEsInput>
    public typealias MOutput = OperationOutput<SwapEnvironmentCNAMEsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SwapEnvironmentCNAMEsOutputError>
}

public struct SwapEnvironmentCNAMEsInputQueryItemMiddleware: Middleware {
    public let id: String = "SwapEnvironmentCNAMEsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SwapEnvironmentCNAMEsInput>,
                  next: H) -> Swift.Result<OperationOutput<SwapEnvironmentCNAMEsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SwapEnvironmentCNAMEsInput>
    public typealias MOutput = OperationOutput<SwapEnvironmentCNAMEsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SwapEnvironmentCNAMEsOutputError>
}

public struct SwapEnvironmentCNAMEsInputBodyMiddleware: Middleware {
    public let id: String = "SwapEnvironmentCNAMEsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SwapEnvironmentCNAMEsInput>,
                  next: H) -> Swift.Result<OperationOutput<SwapEnvironmentCNAMEsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SwapEnvironmentCNAMEsInput>
    public typealias MOutput = OperationOutput<SwapEnvironmentCNAMEsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SwapEnvironmentCNAMEsOutputError>
}

extension SwapEnvironmentCNAMEsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let destinationEnvironmentId = destinationEnvironmentId {
            try container.encode(destinationEnvironmentId, forKey: Key("DestinationEnvironmentId"))
        }
        if let destinationEnvironmentName = destinationEnvironmentName {
            try container.encode(destinationEnvironmentName, forKey: Key("DestinationEnvironmentName"))
        }
        if let sourceEnvironmentId = sourceEnvironmentId {
            try container.encode(sourceEnvironmentId, forKey: Key("SourceEnvironmentId"))
        }
        if let sourceEnvironmentName = sourceEnvironmentName {
            try container.encode(sourceEnvironmentName, forKey: Key("SourceEnvironmentName"))
        }
        try container.encode("SwapEnvironmentCNAMEs", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}