// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeEngineDefaultParametersInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeEngineDefaultParametersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEngineDefaultParametersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEngineDefaultParametersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeEngineDefaultParametersInput>
    public typealias MOutput = OperationOutput<DescribeEngineDefaultParametersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEngineDefaultParametersOutputError>
}

public struct DescribeEngineDefaultParametersInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeEngineDefaultParametersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEngineDefaultParametersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEngineDefaultParametersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeEngineDefaultParametersInput>
    public typealias MOutput = OperationOutput<DescribeEngineDefaultParametersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEngineDefaultParametersOutputError>
}

public struct DescribeEngineDefaultParametersInputBodyMiddleware: Middleware {
    public let id: String = "DescribeEngineDefaultParametersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEngineDefaultParametersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEngineDefaultParametersOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeEngineDefaultParametersInput>
    public typealias MOutput = OperationOutput<DescribeEngineDefaultParametersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEngineDefaultParametersOutputError>
}

extension DescribeEngineDefaultParametersInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let cacheParameterGroupFamily = cacheParameterGroupFamily {
            try container.encode(cacheParameterGroupFamily, forKey: Key("CacheParameterGroupFamily"))
        }
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let maxRecords = maxRecords {
            try container.encode(maxRecords, forKey: Key("MaxRecords"))
        }
        try container.encode("DescribeEngineDefaultParameters", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}