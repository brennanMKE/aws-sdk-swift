// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AcceptVpcPeeringConnectionInputHeadersMiddleware: Middleware {
    public let id: String = "AcceptVpcPeeringConnectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptVpcPeeringConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptVpcPeeringConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptVpcPeeringConnectionInput>
    public typealias MOutput = OperationOutput<AcceptVpcPeeringConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptVpcPeeringConnectionOutputError>
}

public struct AcceptVpcPeeringConnectionInputQueryItemMiddleware: Middleware {
    public let id: String = "AcceptVpcPeeringConnectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptVpcPeeringConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptVpcPeeringConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptVpcPeeringConnectionInput>
    public typealias MOutput = OperationOutput<AcceptVpcPeeringConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptVpcPeeringConnectionOutputError>
}

public struct AcceptVpcPeeringConnectionInputBodyMiddleware: Middleware {
    public let id: String = "AcceptVpcPeeringConnectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptVpcPeeringConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptVpcPeeringConnectionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AcceptVpcPeeringConnectionInput>
    public typealias MOutput = OperationOutput<AcceptVpcPeeringConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptVpcPeeringConnectionOutputError>
}

extension AcceptVpcPeeringConnectionInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let vpcPeeringConnectionId = vpcPeeringConnectionId {
            try container.encode(vpcPeeringConnectionId, forKey: Key("VpcPeeringConnectionId"))
        }
        try container.encode("AcceptVpcPeeringConnection", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}