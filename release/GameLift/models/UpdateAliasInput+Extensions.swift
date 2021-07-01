// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateAliasInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateAliasInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAliasInput>
    public typealias MOutput = OperationOutput<UpdateAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAliasOutputError>
}

public struct UpdateAliasInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateAliasInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAliasInput>
    public typealias MOutput = OperationOutput<UpdateAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAliasOutputError>
}

public struct UpdateAliasInputBodyMiddleware: Middleware {
    public let id: String = "UpdateAliasInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAliasOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateAliasInput>
    public typealias MOutput = OperationOutput<UpdateAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAliasOutputError>
}

extension UpdateAliasInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aliasId = "AliasId"
        case description = "Description"
        case name = "Name"
        case routingStrategy = "RoutingStrategy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aliasId = aliasId {
            try encodeContainer.encode(aliasId, forKey: .aliasId)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let routingStrategy = routingStrategy {
            try encodeContainer.encode(routingStrategy, forKey: .routingStrategy)
        }
    }
}