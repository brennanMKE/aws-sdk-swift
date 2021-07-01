// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateMetricSetInputHeadersMiddleware: Middleware {
    public let id: String = "CreateMetricSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMetricSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMetricSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMetricSetInput>
    public typealias MOutput = OperationOutput<CreateMetricSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMetricSetOutputError>
}

public struct CreateMetricSetInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateMetricSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMetricSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMetricSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMetricSetInput>
    public typealias MOutput = OperationOutput<CreateMetricSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMetricSetOutputError>
}

public struct CreateMetricSetInputBodyMiddleware: Middleware {
    public let id: String = "CreateMetricSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMetricSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMetricSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMetricSetInput>
    public typealias MOutput = OperationOutput<CreateMetricSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMetricSetOutputError>
}

extension CreateMetricSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case anomalyDetectorArn = "AnomalyDetectorArn"
        case dimensionList = "DimensionList"
        case metricList = "MetricList"
        case metricSetDescription = "MetricSetDescription"
        case metricSetFrequency = "MetricSetFrequency"
        case metricSetName = "MetricSetName"
        case metricSource = "MetricSource"
        case offset = "Offset"
        case tags = "Tags"
        case timestampColumn = "TimestampColumn"
        case timezone = "Timezone"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let anomalyDetectorArn = anomalyDetectorArn {
            try encodeContainer.encode(anomalyDetectorArn, forKey: .anomalyDetectorArn)
        }
        if let dimensionList = dimensionList {
            var dimensionListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .dimensionList)
            for dimensionlist0 in dimensionList {
                try dimensionListContainer.encode(dimensionlist0)
            }
        }
        if let metricList = metricList {
            var metricListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .metricList)
            for metriclist0 in metricList {
                try metricListContainer.encode(metriclist0)
            }
        }
        if let metricSetDescription = metricSetDescription {
            try encodeContainer.encode(metricSetDescription, forKey: .metricSetDescription)
        }
        if let metricSetFrequency = metricSetFrequency {
            try encodeContainer.encode(metricSetFrequency.rawValue, forKey: .metricSetFrequency)
        }
        if let metricSetName = metricSetName {
            try encodeContainer.encode(metricSetName, forKey: .metricSetName)
        }
        if let metricSource = metricSource {
            try encodeContainer.encode(metricSource, forKey: .metricSource)
        }
        if offset != 0 {
            try encodeContainer.encode(offset, forKey: .offset)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let timestampColumn = timestampColumn {
            try encodeContainer.encode(timestampColumn, forKey: .timestampColumn)
        }
        if let timezone = timezone {
            try encodeContainer.encode(timezone, forKey: .timezone)
        }
    }
}