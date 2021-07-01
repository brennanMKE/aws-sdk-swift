// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateNotificationRuleInputHeadersMiddleware: Middleware {
    public let id: String = "CreateNotificationRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotificationRuleInput>
    public typealias MOutput = OperationOutput<CreateNotificationRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationRuleOutputError>
}

public struct CreateNotificationRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateNotificationRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotificationRuleInput>
    public typealias MOutput = OperationOutput<CreateNotificationRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationRuleOutputError>
}

public struct CreateNotificationRuleInputBodyMiddleware: Middleware {
    public let id: String = "CreateNotificationRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotificationRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotificationRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateNotificationRuleInput>
    public typealias MOutput = OperationOutput<CreateNotificationRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotificationRuleOutputError>
}

extension CreateNotificationRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case detailType = "DetailType"
        case eventTypeIds = "EventTypeIds"
        case name = "Name"
        case resource = "Resource"
        case status = "Status"
        case tags = "Tags"
        case targets = "Targets"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientRequestToken = clientRequestToken {
            try encodeContainer.encode(clientRequestToken, forKey: .clientRequestToken)
        }
        if let detailType = detailType {
            try encodeContainer.encode(detailType.rawValue, forKey: .detailType)
        }
        if let eventTypeIds = eventTypeIds {
            var eventTypeIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .eventTypeIds)
            for eventtypeids0 in eventTypeIds {
                try eventTypeIdsContainer.encode(eventtypeids0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let resource = resource {
            try encodeContainer.encode(resource, forKey: .resource)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let targets = targets {
            var targetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .targets)
            for targets0 in targets {
                try targetsContainer.encode(targets0)
            }
        }
    }
}