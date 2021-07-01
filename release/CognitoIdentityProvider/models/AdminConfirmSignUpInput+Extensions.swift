// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminConfirmSignUpInputHeadersMiddleware: Middleware {
    public let id: String = "AdminConfirmSignUpInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminConfirmSignUpInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminConfirmSignUpOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminConfirmSignUpInput>
    public typealias MOutput = OperationOutput<AdminConfirmSignUpOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminConfirmSignUpOutputError>
}

public struct AdminConfirmSignUpInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminConfirmSignUpInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminConfirmSignUpInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminConfirmSignUpOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminConfirmSignUpInput>
    public typealias MOutput = OperationOutput<AdminConfirmSignUpOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminConfirmSignUpOutputError>
}

public struct AdminConfirmSignUpInputBodyMiddleware: Middleware {
    public let id: String = "AdminConfirmSignUpInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminConfirmSignUpInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminConfirmSignUpOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AdminConfirmSignUpInput>
    public typealias MOutput = OperationOutput<AdminConfirmSignUpOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminConfirmSignUpOutputError>
}

extension AdminConfirmSignUpInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientMetadata = "ClientMetadata"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientMetadata = clientMetadata {
            var clientMetadataContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .clientMetadata)
            for (dictKey0, clientmetadatatype0) in clientMetadata {
                try clientMetadataContainer.encode(clientmetadatatype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }
}