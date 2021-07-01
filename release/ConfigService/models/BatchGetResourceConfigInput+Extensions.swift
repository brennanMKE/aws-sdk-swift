// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct BatchGetResourceConfigInputHeadersMiddleware: Middleware {
    public let id: String = "BatchGetResourceConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchGetResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchGetResourceConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchGetResourceConfigInput>
    public typealias MOutput = OperationOutput<BatchGetResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchGetResourceConfigOutputError>
}

public struct BatchGetResourceConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "BatchGetResourceConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchGetResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchGetResourceConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchGetResourceConfigInput>
    public typealias MOutput = OperationOutput<BatchGetResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchGetResourceConfigOutputError>
}

public struct BatchGetResourceConfigInputBodyMiddleware: Middleware {
    public let id: String = "BatchGetResourceConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchGetResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchGetResourceConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<BatchGetResourceConfigInput>
    public typealias MOutput = OperationOutput<BatchGetResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchGetResourceConfigOutputError>
}

extension BatchGetResourceConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceKeys
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resourceKeys = resourceKeys {
            var resourceKeysContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourceKeys)
            for resourcekeys0 in resourceKeys {
                try resourceKeysContainer.encode(resourcekeys0)
            }
        }
    }
}