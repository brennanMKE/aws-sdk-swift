// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeregisterTransitGatewayMulticastGroupSourcesInputHeadersMiddleware: Middleware {
    public let id: String = "DeregisterTransitGatewayMulticastGroupSourcesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>
    public typealias MOutput = OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterTransitGatewayMulticastGroupSourcesOutputError>
}

public struct DeregisterTransitGatewayMulticastGroupSourcesInputQueryItemMiddleware: Middleware {
    public let id: String = "DeregisterTransitGatewayMulticastGroupSourcesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>
    public typealias MOutput = OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterTransitGatewayMulticastGroupSourcesOutputError>
}

public struct DeregisterTransitGatewayMulticastGroupSourcesInputBodyMiddleware: Middleware {
    public let id: String = "DeregisterTransitGatewayMulticastGroupSourcesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeregisterTransitGatewayMulticastGroupSourcesInput>
    public typealias MOutput = OperationOutput<DeregisterTransitGatewayMulticastGroupSourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterTransitGatewayMulticastGroupSourcesOutputError>
}

extension DeregisterTransitGatewayMulticastGroupSourcesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let groupIpAddress = groupIpAddress {
            try container.encode(groupIpAddress, forKey: Key("GroupIpAddress"))
        }
        if let networkInterfaceIds = networkInterfaceIds {
            if !networkInterfaceIds.isEmpty {
                for (index0, networkinterfaceid0) in networkInterfaceIds.enumerated() {
                    var networkInterfaceIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("NetworkInterfaceIds.\(index0.advanced(by: 1))"))
                    try networkInterfaceIdsContainer0.encode(networkinterfaceid0, forKey: Key(""))
                }
            }
        }
        if let transitGatewayMulticastDomainId = transitGatewayMulticastDomainId {
            try container.encode(transitGatewayMulticastDomainId, forKey: Key("TransitGatewayMulticastDomainId"))
        }
        try container.encode("DeregisterTransitGatewayMulticastGroupSources", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}