// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteInterconnectInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteInterconnectInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteInterconnectInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteInterconnectOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteInterconnectInput>
    public typealias MOutput = OperationOutput<DeleteInterconnectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteInterconnectOutputError>
}

public struct DeleteInterconnectInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteInterconnectInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteInterconnectInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteInterconnectOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteInterconnectInput>
    public typealias MOutput = OperationOutput<DeleteInterconnectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteInterconnectOutputError>
}

public struct DeleteInterconnectInputBodyMiddleware: Middleware {
    public let id: String = "DeleteInterconnectInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteInterconnectInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteInterconnectOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteInterconnectInput>
    public typealias MOutput = OperationOutput<DeleteInterconnectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteInterconnectOutputError>
}

extension DeleteInterconnectInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case interconnectId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let interconnectId = interconnectId {
            try encodeContainer.encode(interconnectId, forKey: .interconnectId)
        }
    }
}