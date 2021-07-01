// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeOrganizationConfigRulesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeOrganizationConfigRulesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationConfigRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationConfigRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeOrganizationConfigRulesInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationConfigRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationConfigRulesOutputError>
}

public struct DescribeOrganizationConfigRulesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeOrganizationConfigRulesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationConfigRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationConfigRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeOrganizationConfigRulesInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationConfigRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationConfigRulesOutputError>
}

public struct DescribeOrganizationConfigRulesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeOrganizationConfigRulesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationConfigRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationConfigRulesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeOrganizationConfigRulesInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationConfigRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationConfigRulesOutputError>
}

extension DescribeOrganizationConfigRulesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case nextToken = "NextToken"
        case organizationConfigRuleNames = "OrganizationConfigRuleNames"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if limit != 0 {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let organizationConfigRuleNames = organizationConfigRuleNames {
            var organizationConfigRuleNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .organizationConfigRuleNames)
            for organizationconfigrulenames0 in organizationConfigRuleNames {
                try organizationConfigRuleNamesContainer.encode(organizationconfigrulenames0)
            }
        }
    }
}