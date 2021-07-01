// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisableInsightRulesInputHeadersMiddleware: Middleware {
    public let id: String = "DisableInsightRulesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableInsightRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableInsightRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisableInsightRulesInput>
    public typealias MOutput = OperationOutput<DisableInsightRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableInsightRulesOutputError>
}

public struct DisableInsightRulesInputQueryItemMiddleware: Middleware {
    public let id: String = "DisableInsightRulesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableInsightRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableInsightRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisableInsightRulesInput>
    public typealias MOutput = OperationOutput<DisableInsightRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableInsightRulesOutputError>
}

public struct DisableInsightRulesInputBodyMiddleware: Middleware {
    public let id: String = "DisableInsightRulesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableInsightRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableInsightRulesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisableInsightRulesInput>
    public typealias MOutput = OperationOutput<DisableInsightRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableInsightRulesOutputError>
}

extension DisableInsightRulesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let ruleNames = ruleNames {
            var ruleNamesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("RuleNames"))
            for (index0, insightrulename0) in ruleNames.enumerated() {
                try ruleNamesContainer.encode(insightrulename0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("DisableInsightRules", forKey:Key("Action"))
        try container.encode("2010-08-01", forKey:Key("Version"))
    }
}