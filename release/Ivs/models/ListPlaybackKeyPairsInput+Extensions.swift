// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPlaybackKeyPairsInputHeadersMiddleware: Middleware {
    public let id: String = "ListPlaybackKeyPairsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPlaybackKeyPairsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPlaybackKeyPairsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPlaybackKeyPairsInput>
    public typealias MOutput = OperationOutput<ListPlaybackKeyPairsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPlaybackKeyPairsOutputError>
}

public struct ListPlaybackKeyPairsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPlaybackKeyPairsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPlaybackKeyPairsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPlaybackKeyPairsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPlaybackKeyPairsInput>
    public typealias MOutput = OperationOutput<ListPlaybackKeyPairsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPlaybackKeyPairsOutputError>
}

public struct ListPlaybackKeyPairsInputBodyMiddleware: Middleware {
    public let id: String = "ListPlaybackKeyPairsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPlaybackKeyPairsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPlaybackKeyPairsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListPlaybackKeyPairsInput>
    public typealias MOutput = OperationOutput<ListPlaybackKeyPairsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPlaybackKeyPairsOutputError>
}

extension ListPlaybackKeyPairsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}