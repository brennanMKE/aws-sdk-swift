// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateEndpointGroupInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateEndpointGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateEndpointGroupInput>
    public typealias MOutput = OperationOutput<UpdateEndpointGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointGroupOutputError>
}

public struct UpdateEndpointGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateEndpointGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateEndpointGroupInput>
    public typealias MOutput = OperationOutput<UpdateEndpointGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointGroupOutputError>
}

public struct UpdateEndpointGroupInputBodyMiddleware: Middleware {
    public let id: String = "UpdateEndpointGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateEndpointGroupInput>
    public typealias MOutput = OperationOutput<UpdateEndpointGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointGroupOutputError>
}

extension UpdateEndpointGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endpointConfigurations = "EndpointConfigurations"
        case endpointGroupArn = "EndpointGroupArn"
        case healthCheckIntervalSeconds = "HealthCheckIntervalSeconds"
        case healthCheckPath = "HealthCheckPath"
        case healthCheckPort = "HealthCheckPort"
        case healthCheckProtocol = "HealthCheckProtocol"
        case portOverrides = "PortOverrides"
        case thresholdCount = "ThresholdCount"
        case trafficDialPercentage = "TrafficDialPercentage"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endpointConfigurations = endpointConfigurations {
            var endpointConfigurationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .endpointConfigurations)
            for endpointconfigurations0 in endpointConfigurations {
                try endpointConfigurationsContainer.encode(endpointconfigurations0)
            }
        }
        if let endpointGroupArn = endpointGroupArn {
            try encodeContainer.encode(endpointGroupArn, forKey: .endpointGroupArn)
        }
        if let healthCheckIntervalSeconds = healthCheckIntervalSeconds {
            try encodeContainer.encode(healthCheckIntervalSeconds, forKey: .healthCheckIntervalSeconds)
        }
        if let healthCheckPath = healthCheckPath {
            try encodeContainer.encode(healthCheckPath, forKey: .healthCheckPath)
        }
        if let healthCheckPort = healthCheckPort {
            try encodeContainer.encode(healthCheckPort, forKey: .healthCheckPort)
        }
        if let healthCheckProtocol = healthCheckProtocol {
            try encodeContainer.encode(healthCheckProtocol.rawValue, forKey: .healthCheckProtocol)
        }
        if let portOverrides = portOverrides {
            var portOverridesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .portOverrides)
            for portoverrides0 in portOverrides {
                try portOverridesContainer.encode(portoverrides0)
            }
        }
        if let thresholdCount = thresholdCount {
            try encodeContainer.encode(thresholdCount, forKey: .thresholdCount)
        }
        if let trafficDialPercentage = trafficDialPercentage {
            try encodeContainer.encode(trafficDialPercentage, forKey: .trafficDialPercentage)
        }
    }
}