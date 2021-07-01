// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteNamespaceInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteNamespaceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteNamespaceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteNamespaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteNamespaceInput>
    public typealias MOutput = OperationOutput<DeleteNamespaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteNamespaceOutputError>
}

public struct DeleteNamespaceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteNamespaceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteNamespaceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteNamespaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteNamespaceInput>
    public typealias MOutput = OperationOutput<DeleteNamespaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteNamespaceOutputError>
}

public struct DeleteNamespaceInputBodyMiddleware: Middleware {
    public let id: String = "DeleteNamespaceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteNamespaceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteNamespaceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteNamespaceInput>
    public typealias MOutput = OperationOutput<DeleteNamespaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteNamespaceOutputError>
}

extension DeleteNamespaceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }
}