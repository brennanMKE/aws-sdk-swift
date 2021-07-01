// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateConfigurationSetInputHeadersMiddleware: Middleware {
    public let id: String = "CreateConfigurationSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConfigurationSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConfigurationSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConfigurationSetInput>
    public typealias MOutput = OperationOutput<CreateConfigurationSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConfigurationSetOutputError>
}

public struct CreateConfigurationSetInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateConfigurationSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConfigurationSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConfigurationSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConfigurationSetInput>
    public typealias MOutput = OperationOutput<CreateConfigurationSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConfigurationSetOutputError>
}

public struct CreateConfigurationSetInputBodyMiddleware: Middleware {
    public let id: String = "CreateConfigurationSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConfigurationSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConfigurationSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateConfigurationSetInput>
    public typealias MOutput = OperationOutput<CreateConfigurationSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConfigurationSetOutputError>
}

extension CreateConfigurationSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configurationSetName = "ConfigurationSetName"
        case deliveryOptions = "DeliveryOptions"
        case reputationOptions = "ReputationOptions"
        case sendingOptions = "SendingOptions"
        case suppressionOptions = "SuppressionOptions"
        case tags = "Tags"
        case trackingOptions = "TrackingOptions"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configurationSetName = configurationSetName {
            try encodeContainer.encode(configurationSetName, forKey: .configurationSetName)
        }
        if let deliveryOptions = deliveryOptions {
            try encodeContainer.encode(deliveryOptions, forKey: .deliveryOptions)
        }
        if let reputationOptions = reputationOptions {
            try encodeContainer.encode(reputationOptions, forKey: .reputationOptions)
        }
        if let sendingOptions = sendingOptions {
            try encodeContainer.encode(sendingOptions, forKey: .sendingOptions)
        }
        if let suppressionOptions = suppressionOptions {
            try encodeContainer.encode(suppressionOptions, forKey: .suppressionOptions)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let trackingOptions = trackingOptions {
            try encodeContainer.encode(trackingOptions, forKey: .trackingOptions)
        }
    }
}