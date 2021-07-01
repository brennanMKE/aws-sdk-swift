// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SubscribeInputHeadersMiddleware: Middleware {
    public let id: String = "SubscribeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SubscribeInput>,
                  next: H) -> Swift.Result<OperationOutput<SubscribeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SubscribeInput>
    public typealias MOutput = OperationOutput<SubscribeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SubscribeOutputError>
}

public struct SubscribeInputQueryItemMiddleware: Middleware {
    public let id: String = "SubscribeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SubscribeInput>,
                  next: H) -> Swift.Result<OperationOutput<SubscribeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SubscribeInput>
    public typealias MOutput = OperationOutput<SubscribeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SubscribeOutputError>
}

public struct SubscribeInputBodyMiddleware: Middleware {
    public let id: String = "SubscribeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SubscribeInput>,
                  next: H) -> Swift.Result<OperationOutput<SubscribeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SubscribeInput>
    public typealias MOutput = OperationOutput<SubscribeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SubscribeOutputError>
}

extension SubscribeInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let attributes = attributes {
            var attributesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Attributes"))
            for (index0, element0) in attributes.sorted(by: { $0.key < $1.key }).enumerated() {
                let attributenameKey0 = element0.key
                let attributevalueValue0 = element0.value
                var entryContainer0 = attributesContainer.nestedContainer(keyedBy: Key.self, forKey: Key("entry.\(index0.advanced(by: 1))"))
                var keyContainer0 = entryContainer0.nestedContainer(keyedBy: Key.self, forKey: Key("key"))
                try keyContainer0.encode(attributenameKey0, forKey: Key(""))
                var valueContainer0 = entryContainer0.nestedContainer(keyedBy: Key.self, forKey: Key("value"))
                try valueContainer0.encode(attributevalueValue0, forKey: Key(""))
            }
        }
        if let endpoint = endpoint {
            try container.encode(endpoint, forKey: Key("Endpoint"))
        }
        if let `protocol` = `protocol` {
            try container.encode(`protocol`, forKey: Key("Protocol"))
        }
        if returnSubscriptionArn != false {
            try container.encode(returnSubscriptionArn, forKey: Key("ReturnSubscriptionArn"))
        }
        if let topicArn = topicArn {
            try container.encode(topicArn, forKey: Key("TopicArn"))
        }
        try container.encode("Subscribe", forKey:Key("Action"))
        try container.encode("2010-03-31", forKey:Key("Version"))
    }
}