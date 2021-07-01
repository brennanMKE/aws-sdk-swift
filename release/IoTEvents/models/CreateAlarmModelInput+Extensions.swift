// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAlarmModelInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAlarmModelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAlarmModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAlarmModelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAlarmModelInput>
    public typealias MOutput = OperationOutput<CreateAlarmModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAlarmModelOutputError>
}

public struct CreateAlarmModelInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAlarmModelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAlarmModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAlarmModelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAlarmModelInput>
    public typealias MOutput = OperationOutput<CreateAlarmModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAlarmModelOutputError>
}

public struct CreateAlarmModelInputBodyMiddleware: Middleware {
    public let id: String = "CreateAlarmModelInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAlarmModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAlarmModelOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAlarmModelInput>
    public typealias MOutput = OperationOutput<CreateAlarmModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAlarmModelOutputError>
}

extension CreateAlarmModelInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case alarmCapabilities
        case alarmEventActions
        case alarmModelDescription
        case alarmModelName
        case alarmNotification
        case alarmRule
        case key
        case roleArn
        case severity
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let alarmCapabilities = alarmCapabilities {
            try encodeContainer.encode(alarmCapabilities, forKey: .alarmCapabilities)
        }
        if let alarmEventActions = alarmEventActions {
            try encodeContainer.encode(alarmEventActions, forKey: .alarmEventActions)
        }
        if let alarmModelDescription = alarmModelDescription {
            try encodeContainer.encode(alarmModelDescription, forKey: .alarmModelDescription)
        }
        if let alarmModelName = alarmModelName {
            try encodeContainer.encode(alarmModelName, forKey: .alarmModelName)
        }
        if let alarmNotification = alarmNotification {
            try encodeContainer.encode(alarmNotification, forKey: .alarmNotification)
        }
        if let alarmRule = alarmRule {
            try encodeContainer.encode(alarmRule, forKey: .alarmRule)
        }
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let severity = severity {
            try encodeContainer.encode(severity, forKey: .severity)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
    }
}