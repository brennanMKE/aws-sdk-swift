// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateWebsiteAuthorizationProviderInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteAuthorizationProviderInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteAuthorizationProviderOutputError>
}

public struct DisassociateWebsiteAuthorizationProviderInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteAuthorizationProviderInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteAuthorizationProviderOutputError>
}

public struct DisassociateWebsiteAuthorizationProviderInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteAuthorizationProviderInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisassociateWebsiteAuthorizationProviderInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteAuthorizationProviderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteAuthorizationProviderOutputError>
}

extension DisassociateWebsiteAuthorizationProviderInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorizationProviderId = "AuthorizationProviderId"
        case fleetArn = "FleetArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorizationProviderId = authorizationProviderId {
            try encodeContainer.encode(authorizationProviderId, forKey: .authorizationProviderId)
        }
        if let fleetArn = fleetArn {
            try encodeContainer.encode(fleetArn, forKey: .fleetArn)
        }
    }
}