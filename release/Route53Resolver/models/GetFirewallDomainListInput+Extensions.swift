// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetFirewallDomainListInputHeadersMiddleware: Middleware {
    public let id: String = "GetFirewallDomainListInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFirewallDomainListInput>,
                  next: H) -> Swift.Result<OperationOutput<GetFirewallDomainListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFirewallDomainListInput>
    public typealias MOutput = OperationOutput<GetFirewallDomainListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetFirewallDomainListOutputError>
}

public struct GetFirewallDomainListInputQueryItemMiddleware: Middleware {
    public let id: String = "GetFirewallDomainListInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFirewallDomainListInput>,
                  next: H) -> Swift.Result<OperationOutput<GetFirewallDomainListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFirewallDomainListInput>
    public typealias MOutput = OperationOutput<GetFirewallDomainListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetFirewallDomainListOutputError>
}

public struct GetFirewallDomainListInputBodyMiddleware: Middleware {
    public let id: String = "GetFirewallDomainListInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFirewallDomainListInput>,
                  next: H) -> Swift.Result<OperationOutput<GetFirewallDomainListOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetFirewallDomainListInput>
    public typealias MOutput = OperationOutput<GetFirewallDomainListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetFirewallDomainListOutputError>
}

extension GetFirewallDomainListInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case firewallDomainListId = "FirewallDomainListId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let firewallDomainListId = firewallDomainListId {
            try encodeContainer.encode(firewallDomainListId, forKey: .firewallDomainListId)
        }
    }
}