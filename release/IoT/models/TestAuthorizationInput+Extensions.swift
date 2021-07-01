// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct TestAuthorizationInputHeadersMiddleware: Middleware {
    public let id: String = "TestAuthorizationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<TestAuthorizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestAuthorizationInput>
    public typealias MOutput = OperationOutput<TestAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestAuthorizationOutputError>
}

public struct TestAuthorizationInputQueryItemMiddleware: Middleware {
    public let id: String = "TestAuthorizationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<TestAuthorizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let clientId = input.operationInput.clientId {
            let clientIdQueryItem = URLQueryItem(name: "clientId".urlPercentEncoding(), value: String(clientId).urlPercentEncoding())
            input.builder.withQueryItem(clientIdQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestAuthorizationInput>
    public typealias MOutput = OperationOutput<TestAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestAuthorizationOutputError>
}

public struct TestAuthorizationInputBodyMiddleware: Middleware {
    public let id: String = "TestAuthorizationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<TestAuthorizationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<TestAuthorizationInput>
    public typealias MOutput = OperationOutput<TestAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestAuthorizationOutputError>
}

extension TestAuthorizationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authInfos
        case cognitoIdentityPoolId
        case policyNamesToAdd
        case policyNamesToSkip
        case principal
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authInfos = authInfos {
            var authInfosContainer = encodeContainer.nestedUnkeyedContainer(forKey: .authInfos)
            for authinfos0 in authInfos {
                try authInfosContainer.encode(authinfos0)
            }
        }
        if let cognitoIdentityPoolId = cognitoIdentityPoolId {
            try encodeContainer.encode(cognitoIdentityPoolId, forKey: .cognitoIdentityPoolId)
        }
        if let policyNamesToAdd = policyNamesToAdd {
            var policyNamesToAddContainer = encodeContainer.nestedUnkeyedContainer(forKey: .policyNamesToAdd)
            for policynames0 in policyNamesToAdd {
                try policyNamesToAddContainer.encode(policynames0)
            }
        }
        if let policyNamesToSkip = policyNamesToSkip {
            var policyNamesToSkipContainer = encodeContainer.nestedUnkeyedContainer(forKey: .policyNamesToSkip)
            for policynames0 in policyNamesToSkip {
                try policyNamesToSkipContainer.encode(policynames0)
            }
        }
        if let principal = principal {
            try encodeContainer.encode(principal, forKey: .principal)
        }
    }
}