// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDhcpOptionsInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDhcpOptionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDhcpOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDhcpOptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDhcpOptionsInput>
    public typealias MOutput = OperationOutput<CreateDhcpOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDhcpOptionsOutputError>
}

public struct CreateDhcpOptionsInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDhcpOptionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDhcpOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDhcpOptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDhcpOptionsInput>
    public typealias MOutput = OperationOutput<CreateDhcpOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDhcpOptionsOutputError>
}

public struct CreateDhcpOptionsInputBodyMiddleware: Middleware {
    public let id: String = "CreateDhcpOptionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDhcpOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDhcpOptionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDhcpOptionsInput>
    public typealias MOutput = OperationOutput<CreateDhcpOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDhcpOptionsOutputError>
}

extension CreateDhcpOptionsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dhcpConfigurations = dhcpConfigurations {
            if !dhcpConfigurations.isEmpty {
                for (index0, newdhcpconfiguration0) in dhcpConfigurations.enumerated() {
                    var dhcpConfigurationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("DhcpConfiguration.\(index0.advanced(by: 1))"))
                    try dhcpConfigurationsContainer0.encode(newdhcpconfiguration0, forKey: Key(""))
                }
            }
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        try container.encode("CreateDhcpOptions", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}