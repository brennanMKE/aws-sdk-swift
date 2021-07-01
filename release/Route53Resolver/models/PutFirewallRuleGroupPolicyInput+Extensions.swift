// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutFirewallRuleGroupPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "PutFirewallRuleGroupPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFirewallRuleGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutFirewallRuleGroupPolicyInput>
    public typealias MOutput = OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFirewallRuleGroupPolicyOutputError>
}

public struct PutFirewallRuleGroupPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "PutFirewallRuleGroupPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFirewallRuleGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutFirewallRuleGroupPolicyInput>
    public typealias MOutput = OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFirewallRuleGroupPolicyOutputError>
}

public struct PutFirewallRuleGroupPolicyInputBodyMiddleware: Middleware {
    public let id: String = "PutFirewallRuleGroupPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFirewallRuleGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutFirewallRuleGroupPolicyInput>
    public typealias MOutput = OperationOutput<PutFirewallRuleGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFirewallRuleGroupPolicyOutputError>
}

extension PutFirewallRuleGroupPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case firewallRuleGroupPolicy = "FirewallRuleGroupPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let firewallRuleGroupPolicy = firewallRuleGroupPolicy {
            try encodeContainer.encode(firewallRuleGroupPolicy, forKey: .firewallRuleGroupPolicy)
        }
    }
}