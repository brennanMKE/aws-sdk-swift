// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetInsightImpactGraphInputHeadersMiddleware: Middleware {
    public let id: String = "GetInsightImpactGraphInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInsightImpactGraphInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInsightImpactGraphOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInsightImpactGraphInput>
    public typealias MOutput = OperationOutput<GetInsightImpactGraphOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInsightImpactGraphOutputError>
}

public struct GetInsightImpactGraphInputQueryItemMiddleware: Middleware {
    public let id: String = "GetInsightImpactGraphInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInsightImpactGraphInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInsightImpactGraphOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInsightImpactGraphInput>
    public typealias MOutput = OperationOutput<GetInsightImpactGraphOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInsightImpactGraphOutputError>
}

public struct GetInsightImpactGraphInputBodyMiddleware: Middleware {
    public let id: String = "GetInsightImpactGraphInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInsightImpactGraphInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInsightImpactGraphOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetInsightImpactGraphInput>
    public typealias MOutput = OperationOutput<GetInsightImpactGraphOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInsightImpactGraphOutputError>
}

extension GetInsightImpactGraphInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case insightId = "InsightId"
        case nextToken = "NextToken"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let insightId = insightId {
            try encodeContainer.encode(insightId, forKey: .insightId)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
    }
}