// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct InitiateAuthInputHeadersMiddleware: Middleware {
    public let id: String = "InitiateAuthInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InitiateAuthInput>,
                  next: H) -> Swift.Result<OperationOutput<InitiateAuthOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InitiateAuthInput>
    public typealias MOutput = OperationOutput<InitiateAuthOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InitiateAuthOutputError>
}

public struct InitiateAuthInputQueryItemMiddleware: Middleware {
    public let id: String = "InitiateAuthInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InitiateAuthInput>,
                  next: H) -> Swift.Result<OperationOutput<InitiateAuthOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InitiateAuthInput>
    public typealias MOutput = OperationOutput<InitiateAuthOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InitiateAuthOutputError>
}

public struct InitiateAuthInputBodyMiddleware: Middleware {
    public let id: String = "InitiateAuthInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InitiateAuthInput>,
                  next: H) -> Swift.Result<OperationOutput<InitiateAuthOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<InitiateAuthInput>
    public typealias MOutput = OperationOutput<InitiateAuthOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InitiateAuthOutputError>
}

extension InitiateAuthInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case analyticsMetadata = "AnalyticsMetadata"
        case authFlow = "AuthFlow"
        case authParameters = "AuthParameters"
        case clientId = "ClientId"
        case clientMetadata = "ClientMetadata"
        case userContextData = "UserContextData"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let analyticsMetadata = analyticsMetadata {
            try encodeContainer.encode(analyticsMetadata, forKey: .analyticsMetadata)
        }
        if let authFlow = authFlow {
            try encodeContainer.encode(authFlow.rawValue, forKey: .authFlow)
        }
        if let authParameters = authParameters {
            var authParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .authParameters)
            for (dictKey0, authparameterstype0) in authParameters {
                try authParametersContainer.encode(authparameterstype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let clientId = clientId {
            try encodeContainer.encode(clientId, forKey: .clientId)
        }
        if let clientMetadata = clientMetadata {
            var clientMetadataContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .clientMetadata)
            for (dictKey0, clientmetadatatype0) in clientMetadata {
                try clientMetadataContainer.encode(clientmetadatatype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let userContextData = userContextData {
            try encodeContainer.encode(userContextData, forKey: .userContextData)
        }
    }
}