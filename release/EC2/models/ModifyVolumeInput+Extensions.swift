// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyVolumeInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyVolumeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVolumeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyVolumeInput>
    public typealias MOutput = OperationOutput<ModifyVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVolumeOutputError>
}

public struct ModifyVolumeInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyVolumeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVolumeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyVolumeInput>
    public typealias MOutput = OperationOutput<ModifyVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVolumeOutputError>
}

public struct ModifyVolumeInputBodyMiddleware: Middleware {
    public let id: String = "ModifyVolumeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVolumeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyVolumeInput>
    public typealias MOutput = OperationOutput<ModifyVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVolumeOutputError>
}

extension ModifyVolumeInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if iops != 0 {
            try container.encode(iops, forKey: Key("Iops"))
        }
        if multiAttachEnabled != false {
            try container.encode(multiAttachEnabled, forKey: Key("MultiAttachEnabled"))
        }
        if size != 0 {
            try container.encode(size, forKey: Key("Size"))
        }
        if throughput != 0 {
            try container.encode(throughput, forKey: Key("Throughput"))
        }
        if let volumeId = volumeId {
            try container.encode(volumeId, forKey: Key("VolumeId"))
        }
        if let volumeType = volumeType {
            try container.encode(volumeType, forKey: Key("VolumeType"))
        }
        try container.encode("ModifyVolume", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}