// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RequestSpotInstancesInputHeadersMiddleware: Middleware {
    public let id: String = "RequestSpotInstancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RequestSpotInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<RequestSpotInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RequestSpotInstancesInput>
    public typealias MOutput = OperationOutput<RequestSpotInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RequestSpotInstancesOutputError>
}

public struct RequestSpotInstancesInputQueryItemMiddleware: Middleware {
    public let id: String = "RequestSpotInstancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RequestSpotInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<RequestSpotInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RequestSpotInstancesInput>
    public typealias MOutput = OperationOutput<RequestSpotInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RequestSpotInstancesOutputError>
}

public struct RequestSpotInstancesInputBodyMiddleware: Middleware {
    public let id: String = "RequestSpotInstancesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RequestSpotInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<RequestSpotInstancesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RequestSpotInstancesInput>
    public typealias MOutput = OperationOutput<RequestSpotInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RequestSpotInstancesOutputError>
}

extension RequestSpotInstancesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let availabilityZoneGroup = availabilityZoneGroup {
            try container.encode(availabilityZoneGroup, forKey: Key("AvailabilityZoneGroup"))
        }
        if blockDurationMinutes != 0 {
            try container.encode(blockDurationMinutes, forKey: Key("BlockDurationMinutes"))
        }
        if let clientToken = clientToken {
            try container.encode(clientToken, forKey: Key("ClientToken"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if instanceCount != 0 {
            try container.encode(instanceCount, forKey: Key("InstanceCount"))
        }
        if let instanceInterruptionBehavior = instanceInterruptionBehavior {
            try container.encode(instanceInterruptionBehavior, forKey: Key("InstanceInterruptionBehavior"))
        }
        if let launchGroup = launchGroup {
            try container.encode(launchGroup, forKey: Key("LaunchGroup"))
        }
        if let launchSpecification = launchSpecification {
            try container.encode(launchSpecification, forKey: Key("LaunchSpecification"))
        }
        if let spotPrice = spotPrice {
            try container.encode(spotPrice, forKey: Key("SpotPrice"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        if let type = type {
            try container.encode(type, forKey: Key("Type"))
        }
        if let validFrom = validFrom {
            try container.encode(TimestampWrapper(validFrom, format: .dateTime), forKey: Key("ValidFrom"))
        }
        if let validUntil = validUntil {
            try container.encode(TimestampWrapper(validUntil, format: .dateTime), forKey: Key("ValidUntil"))
        }
        try container.encode("RequestSpotInstances", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}