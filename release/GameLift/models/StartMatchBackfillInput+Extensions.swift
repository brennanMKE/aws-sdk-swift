// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartMatchBackfillInputHeadersMiddleware: Middleware {
    public let id: String = "StartMatchBackfillInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMatchBackfillInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMatchBackfillOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMatchBackfillInput>
    public typealias MOutput = OperationOutput<StartMatchBackfillOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMatchBackfillOutputError>
}

public struct StartMatchBackfillInputQueryItemMiddleware: Middleware {
    public let id: String = "StartMatchBackfillInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMatchBackfillInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMatchBackfillOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMatchBackfillInput>
    public typealias MOutput = OperationOutput<StartMatchBackfillOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMatchBackfillOutputError>
}

public struct StartMatchBackfillInputBodyMiddleware: Middleware {
    public let id: String = "StartMatchBackfillInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMatchBackfillInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMatchBackfillOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartMatchBackfillInput>
    public typealias MOutput = OperationOutput<StartMatchBackfillOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMatchBackfillOutputError>
}

extension StartMatchBackfillInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configurationName = "ConfigurationName"
        case gameSessionArn = "GameSessionArn"
        case players = "Players"
        case ticketId = "TicketId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configurationName = configurationName {
            try encodeContainer.encode(configurationName, forKey: .configurationName)
        }
        if let gameSessionArn = gameSessionArn {
            try encodeContainer.encode(gameSessionArn, forKey: .gameSessionArn)
        }
        if let players = players {
            var playersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .players)
            for playerlist0 in players {
                try playersContainer.encode(playerlist0)
            }
        }
        if let ticketId = ticketId {
            try encodeContainer.encode(ticketId, forKey: .ticketId)
        }
    }
}