// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateChannelInputHeadersMiddleware: Middleware {
    public let id: String = "CreateChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateChannelInput>
    public typealias MOutput = OperationOutput<CreateChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateChannelOutputError>
}

public struct CreateChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateChannelInput>
    public typealias MOutput = OperationOutput<CreateChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateChannelOutputError>
}

public struct CreateChannelInputBodyMiddleware: Middleware {
    public let id: String = "CreateChannelInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateChannelOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateChannelInput>
    public typealias MOutput = OperationOutput<CreateChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateChannelOutputError>
}

extension CreateChannelInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "description"
        case id = "id"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}