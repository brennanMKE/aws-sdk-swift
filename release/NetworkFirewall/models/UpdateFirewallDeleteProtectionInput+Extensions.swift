// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFirewallDeleteProtectionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFirewallDeleteProtectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallDeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFirewallDeleteProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallDeleteProtectionOutputError>
}

public struct UpdateFirewallDeleteProtectionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFirewallDeleteProtectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallDeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFirewallDeleteProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallDeleteProtectionOutputError>
}

public struct UpdateFirewallDeleteProtectionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFirewallDeleteProtectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallDeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFirewallDeleteProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallDeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallDeleteProtectionOutputError>
}

extension UpdateFirewallDeleteProtectionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deleteProtection = "DeleteProtection"
        case firewallArn = "FirewallArn"
        case firewallName = "FirewallName"
        case updateToken = "UpdateToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if deleteProtection != false {
            try encodeContainer.encode(deleteProtection, forKey: .deleteProtection)
        }
        if let firewallArn = firewallArn {
            try encodeContainer.encode(firewallArn, forKey: .firewallArn)
        }
        if let firewallName = firewallName {
            try encodeContainer.encode(firewallName, forKey: .firewallName)
        }
        if let updateToken = updateToken {
            try encodeContainer.encode(updateToken, forKey: .updateToken)
        }
    }
}