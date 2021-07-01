// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeVolumeAttributeInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeVolumeAttributeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVolumeAttributeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVolumeAttributeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVolumeAttributeInput>
    public typealias MOutput = OperationOutput<DescribeVolumeAttributeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVolumeAttributeOutputError>
}

public struct DescribeVolumeAttributeInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeVolumeAttributeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVolumeAttributeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVolumeAttributeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVolumeAttributeInput>
    public typealias MOutput = OperationOutput<DescribeVolumeAttributeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVolumeAttributeOutputError>
}

public struct DescribeVolumeAttributeInputBodyMiddleware: Middleware {
    public let id: String = "DescribeVolumeAttributeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVolumeAttributeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVolumeAttributeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeVolumeAttributeInput>
    public typealias MOutput = OperationOutput<DescribeVolumeAttributeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVolumeAttributeOutputError>
}

extension DescribeVolumeAttributeInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let attribute = attribute {
            try container.encode(attribute, forKey: Key("Attribute"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let volumeId = volumeId {
            try container.encode(volumeId, forKey: Key("VolumeId"))
        }
        try container.encode("DescribeVolumeAttribute", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}