// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ApplyArchiveRuleInputHeadersMiddleware: Middleware {
    public let id: String = "ApplyArchiveRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyArchiveRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplyArchiveRuleInput>
    public typealias MOutput = OperationOutput<ApplyArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyArchiveRuleOutputError>
}

public struct ApplyArchiveRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "ApplyArchiveRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyArchiveRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ApplyArchiveRuleInput>
    public typealias MOutput = OperationOutput<ApplyArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyArchiveRuleOutputError>
}

public struct ApplyArchiveRuleInputBodyMiddleware: Middleware {
    public let id: String = "ApplyArchiveRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ApplyArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ApplyArchiveRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ApplyArchiveRuleInput>
    public typealias MOutput = OperationOutput<ApplyArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ApplyArchiveRuleOutputError>
}

extension ApplyArchiveRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case analyzerArn
        case clientToken
        case ruleName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let analyzerArn = analyzerArn {
            try encodeContainer.encode(analyzerArn, forKey: .analyzerArn)
        }
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let ruleName = ruleName {
            try encodeContainer.encode(ruleName, forKey: .ruleName)
        }
    }
}