// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteMetricStreamInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteMetricStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMetricStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMetricStreamInput>
    public typealias MOutput = OperationOutput<DeleteMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMetricStreamOutputError>
}

public struct DeleteMetricStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteMetricStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMetricStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMetricStreamInput>
    public typealias MOutput = OperationOutput<DeleteMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMetricStreamOutputError>
}

public struct DeleteMetricStreamInputBodyMiddleware: Middleware {
    public let id: String = "DeleteMetricStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMetricStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteMetricStreamInput>
    public typealias MOutput = OperationOutput<DeleteMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMetricStreamOutputError>
}

extension DeleteMetricStreamInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let name = name {
            try container.encode(name, forKey: Key("Name"))
        }
        try container.encode("DeleteMetricStream", forKey:Key("Action"))
        try container.encode("2010-08-01", forKey:Key("Version"))
    }
}