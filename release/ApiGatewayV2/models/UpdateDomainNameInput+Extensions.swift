// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateDomainNameInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateDomainNameInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDomainNameInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDomainNameOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDomainNameInput>
    public typealias MOutput = OperationOutput<UpdateDomainNameOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDomainNameOutputError>
}

public struct UpdateDomainNameInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateDomainNameInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDomainNameInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDomainNameOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDomainNameInput>
    public typealias MOutput = OperationOutput<UpdateDomainNameOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDomainNameOutputError>
}

public struct UpdateDomainNameInputBodyMiddleware: Middleware {
    public let id: String = "UpdateDomainNameInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDomainNameInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDomainNameOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateDomainNameInput>
    public typealias MOutput = OperationOutput<UpdateDomainNameOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDomainNameOutputError>
}

extension UpdateDomainNameInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domainNameConfigurations = "domainNameConfigurations"
        case mutualTlsAuthentication = "mutualTlsAuthentication"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domainNameConfigurations = domainNameConfigurations {
            var domainNameConfigurationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .domainNameConfigurations)
            for domainnameconfigurations0 in domainNameConfigurations {
                try domainNameConfigurationsContainer.encode(domainnameconfigurations0)
            }
        }
        if let mutualTlsAuthentication = mutualTlsAuthentication {
            try encodeContainer.encode(mutualTlsAuthentication, forKey: .mutualTlsAuthentication)
        }
    }
}