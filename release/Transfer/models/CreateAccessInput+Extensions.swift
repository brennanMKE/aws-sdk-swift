// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAccessInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAccessInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAccessInput>
    public typealias MOutput = OperationOutput<CreateAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessOutputError>
}

public struct CreateAccessInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAccessInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAccessInput>
    public typealias MOutput = OperationOutput<CreateAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessOutputError>
}

public struct CreateAccessInputBodyMiddleware: Middleware {
    public let id: String = "CreateAccessInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAccessOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAccessInput>
    public typealias MOutput = OperationOutput<CreateAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAccessOutputError>
}

extension CreateAccessInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case externalId = "ExternalId"
        case homeDirectory = "HomeDirectory"
        case homeDirectoryMappings = "HomeDirectoryMappings"
        case homeDirectoryType = "HomeDirectoryType"
        case policy = "Policy"
        case posixProfile = "PosixProfile"
        case role = "Role"
        case serverId = "ServerId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let externalId = externalId {
            try encodeContainer.encode(externalId, forKey: .externalId)
        }
        if let homeDirectory = homeDirectory {
            try encodeContainer.encode(homeDirectory, forKey: .homeDirectory)
        }
        if let homeDirectoryMappings = homeDirectoryMappings {
            var homeDirectoryMappingsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .homeDirectoryMappings)
            for homedirectorymappings0 in homeDirectoryMappings {
                try homeDirectoryMappingsContainer.encode(homedirectorymappings0)
            }
        }
        if let homeDirectoryType = homeDirectoryType {
            try encodeContainer.encode(homeDirectoryType.rawValue, forKey: .homeDirectoryType)
        }
        if let policy = policy {
            try encodeContainer.encode(policy, forKey: .policy)
        }
        if let posixProfile = posixProfile {
            try encodeContainer.encode(posixProfile, forKey: .posixProfile)
        }
        if let role = role {
            try encodeContainer.encode(role, forKey: .role)
        }
        if let serverId = serverId {
            try encodeContainer.encode(serverId, forKey: .serverId)
        }
    }
}