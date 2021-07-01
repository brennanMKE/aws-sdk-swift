// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteTrafficMirrorFilterInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteTrafficMirrorFilterInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTrafficMirrorFilterInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTrafficMirrorFilterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTrafficMirrorFilterInput>
    public typealias MOutput = OperationOutput<DeleteTrafficMirrorFilterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTrafficMirrorFilterOutputError>
}

public struct DeleteTrafficMirrorFilterInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteTrafficMirrorFilterInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTrafficMirrorFilterInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTrafficMirrorFilterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTrafficMirrorFilterInput>
    public typealias MOutput = OperationOutput<DeleteTrafficMirrorFilterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTrafficMirrorFilterOutputError>
}

public struct DeleteTrafficMirrorFilterInputBodyMiddleware: Middleware {
    public let id: String = "DeleteTrafficMirrorFilterInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTrafficMirrorFilterInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTrafficMirrorFilterOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteTrafficMirrorFilterInput>
    public typealias MOutput = OperationOutput<DeleteTrafficMirrorFilterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTrafficMirrorFilterOutputError>
}

extension DeleteTrafficMirrorFilterInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let trafficMirrorFilterId = trafficMirrorFilterId {
            try container.encode(trafficMirrorFilterId, forKey: Key("TrafficMirrorFilterId"))
        }
        try container.encode("DeleteTrafficMirrorFilter", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}