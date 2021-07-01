// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ApplySecurityGroupsToClientVpnTargetNetworkInputHeadersMiddleware: Middleware {
    public let id: String = "ApplySecurityGroupsToClientVpnTargetNetworkInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>
    public typealias MOutput = OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplySecurityGroupsToClientVpnTargetNetworkOutputError>
}

public struct ApplySecurityGroupsToClientVpnTargetNetworkInputQueryItemMiddleware: Middleware {
    public let id: String = "ApplySecurityGroupsToClientVpnTargetNetworkInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>
    public typealias MOutput = OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplySecurityGroupsToClientVpnTargetNetworkOutputError>
}

public struct ApplySecurityGroupsToClientVpnTargetNetworkInputBodyMiddleware: Middleware {
    public let id: String = "ApplySecurityGroupsToClientVpnTargetNetworkInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ApplySecurityGroupsToClientVpnTargetNetworkInput>
    public typealias MOutput = OperationOutput<ApplySecurityGroupsToClientVpnTargetNetworkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplySecurityGroupsToClientVpnTargetNetworkOutputError>
}

extension ApplySecurityGroupsToClientVpnTargetNetworkInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clientVpnEndpointId = clientVpnEndpointId {
            try container.encode(clientVpnEndpointId, forKey: Key("ClientVpnEndpointId"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let securityGroupIds = securityGroupIds {
            if !securityGroupIds.isEmpty {
                for (index0, securitygroupid0) in securityGroupIds.enumerated() {
                    var securityGroupIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("SecurityGroupId.\(index0.advanced(by: 1))"))
                    try securityGroupIdsContainer0.encode(securitygroupid0, forKey: Key(""))
                }
            }
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
        try container.encode("ApplySecurityGroupsToClientVpnTargetNetwork", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}