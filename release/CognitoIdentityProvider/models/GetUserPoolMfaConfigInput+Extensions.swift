// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetUserPoolMfaConfigInputHeadersMiddleware: Middleware {
    public let id: String = "GetUserPoolMfaConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetUserPoolMfaConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<GetUserPoolMfaConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetUserPoolMfaConfigInput>
    public typealias MOutput = OperationOutput<GetUserPoolMfaConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetUserPoolMfaConfigOutputError>
}

public struct GetUserPoolMfaConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "GetUserPoolMfaConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetUserPoolMfaConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<GetUserPoolMfaConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetUserPoolMfaConfigInput>
    public typealias MOutput = OperationOutput<GetUserPoolMfaConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetUserPoolMfaConfigOutputError>
}

public struct GetUserPoolMfaConfigInputBodyMiddleware: Middleware {
    public let id: String = "GetUserPoolMfaConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetUserPoolMfaConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<GetUserPoolMfaConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetUserPoolMfaConfigInput>
    public typealias MOutput = OperationOutput<GetUserPoolMfaConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetUserPoolMfaConfigOutputError>
}

extension GetUserPoolMfaConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
    }
}