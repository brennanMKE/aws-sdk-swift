// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTopicRuleInputHeadersMiddleware: Middleware {
    public let id: String = "CreateTopicRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTopicRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTopicRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let tags = input.operationInput.tags {
            input.builder.withHeader(name: "x-amz-tagging", value: String(tags))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTopicRuleInput>
    public typealias MOutput = OperationOutput<CreateTopicRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTopicRuleOutputError>
}

public struct CreateTopicRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateTopicRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTopicRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTopicRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTopicRuleInput>
    public typealias MOutput = OperationOutput<CreateTopicRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTopicRuleOutputError>
}

public struct CreateTopicRuleInputBodyMiddleware: Middleware {
    public let id: String = "CreateTopicRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTopicRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTopicRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let topicRulePayload = input.operationInput.topicRulePayload {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(topicRulePayload)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTopicRuleInput>
    public typealias MOutput = OperationOutput<CreateTopicRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTopicRuleOutputError>
}

extension CreateTopicRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case topicRulePayload
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let topicRulePayload = topicRulePayload {
            try encodeContainer.encode(topicRulePayload, forKey: .topicRulePayload)
        }
    }
}