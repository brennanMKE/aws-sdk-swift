// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AcceptMatchInputHeadersMiddleware: Middleware {
    public let id: String = "AcceptMatchInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptMatchInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptMatchOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptMatchInput>
    public typealias MOutput = OperationOutput<AcceptMatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptMatchOutputError>
}

public struct AcceptMatchInputQueryItemMiddleware: Middleware {
    public let id: String = "AcceptMatchInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptMatchInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptMatchOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptMatchInput>
    public typealias MOutput = OperationOutput<AcceptMatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptMatchOutputError>
}

public struct AcceptMatchInputBodyMiddleware: Middleware {
    public let id: String = "AcceptMatchInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptMatchInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptMatchOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AcceptMatchInput>
    public typealias MOutput = OperationOutput<AcceptMatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptMatchOutputError>
}

extension AcceptMatchInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptanceType = "AcceptanceType"
        case playerIds = "PlayerIds"
        case ticketId = "TicketId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptanceType = acceptanceType {
            try encodeContainer.encode(acceptanceType.rawValue, forKey: .acceptanceType)
        }
        if let playerIds = playerIds {
            var playerIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .playerIds)
            for stringlist0 in playerIds {
                try playerIdsContainer.encode(stringlist0)
            }
        }
        if let ticketId = ticketId {
            try encodeContainer.encode(ticketId, forKey: .ticketId)
        }
    }
}