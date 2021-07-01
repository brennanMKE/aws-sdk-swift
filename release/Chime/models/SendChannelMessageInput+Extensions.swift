// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SendChannelMessageInputHeadersMiddleware: Middleware {
    public let id: String = "SendChannelMessageInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendChannelMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendChannelMessageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let chimeBearer = input.operationInput.chimeBearer {
            input.builder.withHeader(name: "x-amz-chime-bearer", value: String(chimeBearer))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendChannelMessageInput>
    public typealias MOutput = OperationOutput<SendChannelMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendChannelMessageOutputError>
}

public struct SendChannelMessageInputQueryItemMiddleware: Middleware {
    public let id: String = "SendChannelMessageInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendChannelMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendChannelMessageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendChannelMessageInput>
    public typealias MOutput = OperationOutput<SendChannelMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendChannelMessageOutputError>
}

public struct SendChannelMessageInputBodyMiddleware: Middleware {
    public let id: String = "SendChannelMessageInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendChannelMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendChannelMessageOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SendChannelMessageInput>
    public typealias MOutput = OperationOutput<SendChannelMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendChannelMessageOutputError>
}

extension SendChannelMessageInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case content = "Content"
        case metadata = "Metadata"
        case persistence = "Persistence"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientRequestToken = clientRequestToken {
            try encodeContainer.encode(clientRequestToken, forKey: .clientRequestToken)
        }
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if let metadata = metadata {
            try encodeContainer.encode(metadata, forKey: .metadata)
        }
        if let persistence = persistence {
            try encodeContainer.encode(persistence.rawValue, forKey: .persistence)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}