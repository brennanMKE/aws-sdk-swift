// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateVpcCidrBlockInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateVpcCidrBlockInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateVpcCidrBlockInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateVpcCidrBlockOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateVpcCidrBlockInput>
    public typealias MOutput = OperationOutput<AssociateVpcCidrBlockOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateVpcCidrBlockOutputError>
}

public struct AssociateVpcCidrBlockInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateVpcCidrBlockInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateVpcCidrBlockInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateVpcCidrBlockOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateVpcCidrBlockInput>
    public typealias MOutput = OperationOutput<AssociateVpcCidrBlockOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateVpcCidrBlockOutputError>
}

public struct AssociateVpcCidrBlockInputBodyMiddleware: Middleware {
    public let id: String = "AssociateVpcCidrBlockInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateVpcCidrBlockInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateVpcCidrBlockOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateVpcCidrBlockInput>
    public typealias MOutput = OperationOutput<AssociateVpcCidrBlockOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateVpcCidrBlockOutputError>
}

extension AssociateVpcCidrBlockInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if amazonProvidedIpv6CidrBlock != false {
            try container.encode(amazonProvidedIpv6CidrBlock, forKey: Key("AmazonProvidedIpv6CidrBlock"))
        }
        if let cidrBlock = cidrBlock {
            try container.encode(cidrBlock, forKey: Key("CidrBlock"))
        }
        if let ipv6CidrBlock = ipv6CidrBlock {
            try container.encode(ipv6CidrBlock, forKey: Key("Ipv6CidrBlock"))
        }
        if let ipv6CidrBlockNetworkBorderGroup = ipv6CidrBlockNetworkBorderGroup {
            try container.encode(ipv6CidrBlockNetworkBorderGroup, forKey: Key("Ipv6CidrBlockNetworkBorderGroup"))
        }
        if let ipv6Pool = ipv6Pool {
            try container.encode(ipv6Pool, forKey: Key("Ipv6Pool"))
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
        try container.encode("AssociateVpcCidrBlock", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}