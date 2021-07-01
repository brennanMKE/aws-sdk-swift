// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetModelsInputHeadersMiddleware: Middleware {
    public let id: String = "GetModelsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelsInput>
    public typealias MOutput = OperationOutput<GetModelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelsOutputError>
}

public struct GetModelsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetModelsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelsInput>
    public typealias MOutput = OperationOutput<GetModelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelsOutputError>
}

public struct GetModelsInputBodyMiddleware: Middleware {
    public let id: String = "GetModelsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetModelsInput>
    public typealias MOutput = OperationOutput<GetModelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelsOutputError>
}

extension GetModelsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case modelId
        case modelType
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let modelId = modelId {
            try encodeContainer.encode(modelId, forKey: .modelId)
        }
        if let modelType = modelType {
            try encodeContainer.encode(modelType.rawValue, forKey: .modelType)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}