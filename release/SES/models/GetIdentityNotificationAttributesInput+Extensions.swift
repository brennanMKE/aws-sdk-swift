// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetIdentityNotificationAttributesInputHeadersMiddleware: Middleware {
    public let id: String = "GetIdentityNotificationAttributesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetIdentityNotificationAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetIdentityNotificationAttributesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetIdentityNotificationAttributesInput>
    public typealias MOutput = OperationOutput<GetIdentityNotificationAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetIdentityNotificationAttributesOutputError>
}

public struct GetIdentityNotificationAttributesInputQueryItemMiddleware: Middleware {
    public let id: String = "GetIdentityNotificationAttributesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetIdentityNotificationAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetIdentityNotificationAttributesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetIdentityNotificationAttributesInput>
    public typealias MOutput = OperationOutput<GetIdentityNotificationAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetIdentityNotificationAttributesOutputError>
}

public struct GetIdentityNotificationAttributesInputBodyMiddleware: Middleware {
    public let id: String = "GetIdentityNotificationAttributesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetIdentityNotificationAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetIdentityNotificationAttributesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetIdentityNotificationAttributesInput>
    public typealias MOutput = OperationOutput<GetIdentityNotificationAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetIdentityNotificationAttributesOutputError>
}

extension GetIdentityNotificationAttributesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let identities = identities {
            var identitiesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Identities"))
            for (index0, identity0) in identities.enumerated() {
                try identitiesContainer.encode(identity0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("GetIdentityNotificationAttributes", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}