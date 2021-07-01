// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PublishInputHeadersMiddleware: Middleware {
    public let id: String = "PublishInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PublishInput>
    public typealias MOutput = OperationOutput<PublishOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishOutputError>
}

public struct PublishInputQueryItemMiddleware: Middleware {
    public let id: String = "PublishInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PublishInput>
    public typealias MOutput = OperationOutput<PublishOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishOutputError>
}

public struct PublishInputBodyMiddleware: Middleware {
    public let id: String = "PublishInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PublishInput>
    public typealias MOutput = OperationOutput<PublishOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishOutputError>
}

extension PublishInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let message = message {
            try container.encode(message, forKey: Key("Message"))
        }
        if let messageAttributes = messageAttributes {
            var messageAttributesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("MessageAttributes"))
            for (index0, element0) in messageAttributes.sorted(by: { $0.key < $1.key }).enumerated() {
                let stringKey0 = element0.key
                let messageattributevalueValue0 = element0.value
                var entryContainer0 = messageAttributesContainer.nestedContainer(keyedBy: Key.self, forKey: Key("entry.\(index0.advanced(by: 1))"))
                var keyContainer0 = entryContainer0.nestedContainer(keyedBy: Key.self, forKey: Key("Name"))
                try keyContainer0.encode(stringKey0, forKey: Key(""))
                var valueContainer0 = entryContainer0.nestedContainer(keyedBy: Key.self, forKey: Key("Value"))
                try valueContainer0.encode(messageattributevalueValue0, forKey: Key(""))
            }
        }
        if let messageDeduplicationId = messageDeduplicationId {
            try container.encode(messageDeduplicationId, forKey: Key("MessageDeduplicationId"))
        }
        if let messageGroupId = messageGroupId {
            try container.encode(messageGroupId, forKey: Key("MessageGroupId"))
        }
        if let messageStructure = messageStructure {
            try container.encode(messageStructure, forKey: Key("MessageStructure"))
        }
        if let phoneNumber = phoneNumber {
            try container.encode(phoneNumber, forKey: Key("PhoneNumber"))
        }
        if let subject = subject {
            try container.encode(subject, forKey: Key("Subject"))
        }
        if let targetArn = targetArn {
            try container.encode(targetArn, forKey: Key("TargetArn"))
        }
        if let topicArn = topicArn {
            try container.encode(topicArn, forKey: Key("TopicArn"))
        }
        try container.encode("Publish", forKey:Key("Action"))
        try container.encode("2010-03-31", forKey:Key("Version"))
    }
}