// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTimelineEventInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTimelineEventInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTimelineEventInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTimelineEventOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTimelineEventInput>
    public typealias MOutput = OperationOutput<UpdateTimelineEventOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTimelineEventOutputError>
}

public struct UpdateTimelineEventInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTimelineEventInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTimelineEventInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTimelineEventOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTimelineEventInput>
    public typealias MOutput = OperationOutput<UpdateTimelineEventOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTimelineEventOutputError>
}

public struct UpdateTimelineEventInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTimelineEventInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTimelineEventInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTimelineEventOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTimelineEventInput>
    public typealias MOutput = OperationOutput<UpdateTimelineEventOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTimelineEventOutputError>
}

extension UpdateTimelineEventInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case eventData
        case eventId
        case eventTime
        case eventType
        case incidentRecordArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let eventData = eventData {
            try encodeContainer.encode(eventData, forKey: .eventData)
        }
        if let eventId = eventId {
            try encodeContainer.encode(eventId, forKey: .eventId)
        }
        if let eventTime = eventTime {
            try encodeContainer.encode(eventTime.timeIntervalSince1970, forKey: .eventTime)
        }
        if let eventType = eventType {
            try encodeContainer.encode(eventType, forKey: .eventType)
        }
        if let incidentRecordArn = incidentRecordArn {
            try encodeContainer.encode(incidentRecordArn, forKey: .incidentRecordArn)
        }
    }
}