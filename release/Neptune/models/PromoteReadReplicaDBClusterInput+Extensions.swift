// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PromoteReadReplicaDBClusterInputHeadersMiddleware: Middleware {
    public let id: String = "PromoteReadReplicaDBClusterInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PromoteReadReplicaDBClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<PromoteReadReplicaDBClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PromoteReadReplicaDBClusterInput>
    public typealias MOutput = OperationOutput<PromoteReadReplicaDBClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PromoteReadReplicaDBClusterOutputError>
}

public struct PromoteReadReplicaDBClusterInputQueryItemMiddleware: Middleware {
    public let id: String = "PromoteReadReplicaDBClusterInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PromoteReadReplicaDBClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<PromoteReadReplicaDBClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PromoteReadReplicaDBClusterInput>
    public typealias MOutput = OperationOutput<PromoteReadReplicaDBClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PromoteReadReplicaDBClusterOutputError>
}

public struct PromoteReadReplicaDBClusterInputBodyMiddleware: Middleware {
    public let id: String = "PromoteReadReplicaDBClusterInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PromoteReadReplicaDBClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<PromoteReadReplicaDBClusterOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PromoteReadReplicaDBClusterInput>
    public typealias MOutput = OperationOutput<PromoteReadReplicaDBClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PromoteReadReplicaDBClusterOutputError>
}

extension PromoteReadReplicaDBClusterInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dBClusterIdentifier = dBClusterIdentifier {
            try container.encode(dBClusterIdentifier, forKey: Key("DBClusterIdentifier"))
        }
        try container.encode("PromoteReadReplicaDBCluster", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}