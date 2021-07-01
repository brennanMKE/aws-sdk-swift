// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisableKeyInputHeadersMiddleware: Middleware {
    public let id: String = "DisableKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisableKeyInput>
    public typealias MOutput = OperationOutput<DisableKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableKeyOutputError>
}

public struct DisableKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "DisableKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisableKeyInput>
    public typealias MOutput = OperationOutput<DisableKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableKeyOutputError>
}

public struct DisableKeyInputBodyMiddleware: Middleware {
    public let id: String = "DisableKeyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisableKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DisableKeyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisableKeyInput>
    public typealias MOutput = OperationOutput<DisableKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisableKeyOutputError>
}

extension DisableKeyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case keyId = "KeyId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
    }
}