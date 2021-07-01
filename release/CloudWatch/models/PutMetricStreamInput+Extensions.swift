// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutMetricStreamInputHeadersMiddleware: Middleware {
    public let id: String = "PutMetricStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<PutMetricStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutMetricStreamInput>
    public typealias MOutput = OperationOutput<PutMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutMetricStreamOutputError>
}

public struct PutMetricStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "PutMetricStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<PutMetricStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutMetricStreamInput>
    public typealias MOutput = OperationOutput<PutMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutMetricStreamOutputError>
}

public struct PutMetricStreamInputBodyMiddleware: Middleware {
    public let id: String = "PutMetricStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutMetricStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<PutMetricStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutMetricStreamInput>
    public typealias MOutput = OperationOutput<PutMetricStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutMetricStreamOutputError>
}

extension PutMetricStreamInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let excludeFilters = excludeFilters {
            var excludeFiltersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("ExcludeFilters"))
            for (index0, metricstreamfilter0) in excludeFilters.enumerated() {
                try excludeFiltersContainer.encode(metricstreamfilter0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let firehoseArn = firehoseArn {
            try container.encode(firehoseArn, forKey: Key("FirehoseArn"))
        }
        if let includeFilters = includeFilters {
            var includeFiltersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("IncludeFilters"))
            for (index0, metricstreamfilter0) in includeFilters.enumerated() {
                try includeFiltersContainer.encode(metricstreamfilter0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let name = name {
            try container.encode(name, forKey: Key("Name"))
        }
        if let outputFormat = outputFormat {
            try container.encode(outputFormat, forKey: Key("OutputFormat"))
        }
        if let roleArn = roleArn {
            try container.encode(roleArn, forKey: Key("RoleArn"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("PutMetricStream", forKey:Key("Action"))
        try container.encode("2010-08-01", forKey:Key("Version"))
    }
}