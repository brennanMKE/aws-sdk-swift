// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateBotAliasInputHeadersMiddleware: Middleware {
    public let id: String = "CreateBotAliasInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBotAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBotAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBotAliasInput>
    public typealias MOutput = OperationOutput<CreateBotAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBotAliasOutputError>
}

public struct CreateBotAliasInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateBotAliasInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBotAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBotAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBotAliasInput>
    public typealias MOutput = OperationOutput<CreateBotAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBotAliasOutputError>
}

public struct CreateBotAliasInputBodyMiddleware: Middleware {
    public let id: String = "CreateBotAliasInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBotAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBotAliasOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateBotAliasInput>
    public typealias MOutput = OperationOutput<CreateBotAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBotAliasOutputError>
}

extension CreateBotAliasInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case botAliasLocaleSettings
        case botAliasName
        case botVersion
        case conversationLogSettings
        case description
        case sentimentAnalysisSettings
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let botAliasLocaleSettings = botAliasLocaleSettings {
            var botAliasLocaleSettingsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .botAliasLocaleSettings)
            for (dictKey0, botaliaslocalesettingsmap0) in botAliasLocaleSettings {
                try botAliasLocaleSettingsContainer.encode(botaliaslocalesettingsmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let botAliasName = botAliasName {
            try encodeContainer.encode(botAliasName, forKey: .botAliasName)
        }
        if let botVersion = botVersion {
            try encodeContainer.encode(botVersion, forKey: .botVersion)
        }
        if let conversationLogSettings = conversationLogSettings {
            try encodeContainer.encode(conversationLogSettings, forKey: .conversationLogSettings)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let sentimentAnalysisSettings = sentimentAnalysisSettings {
            try encodeContainer.encode(sentimentAnalysisSettings, forKey: .sentimentAnalysisSettings)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}