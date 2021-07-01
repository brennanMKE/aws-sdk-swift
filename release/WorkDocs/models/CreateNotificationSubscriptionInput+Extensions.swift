// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateNotificationSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateNotificationSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotificationSubscriptionInput>
    public typealias MOutput = OperationOutput<CreateNotificationSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationSubscriptionOutputError>
}

public struct CreateNotificationSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateNotificationSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotificationSubscriptionInput>
    public typealias MOutput = OperationOutput<CreateNotificationSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationSubscriptionOutputError>
}

public struct CreateNotificationSubscriptionInputBodyMiddleware: Middleware {
    public let id: String = "CreateNotificationSubscriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationSubscriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateNotificationSubscriptionInput>
    public typealias MOutput = OperationOutput<CreateNotificationSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationSubscriptionOutputError>
}

extension CreateNotificationSubscriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endpoint = "Endpoint"
        case `protocol` = "Protocol"
        case subscriptionType = "SubscriptionType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endpoint = endpoint {
            try encodeContainer.encode(endpoint, forKey: .endpoint)
        }
        if let `protocol` = `protocol` {
            try encodeContainer.encode(`protocol`.rawValue, forKey: .`protocol`)
        }
        if let subscriptionType = subscriptionType {
            try encodeContainer.encode(subscriptionType.rawValue, forKey: .subscriptionType)
        }
    }
}