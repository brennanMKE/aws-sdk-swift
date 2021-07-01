// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SearchInsightsInputHeadersMiddleware: Middleware {
    public let id: String = "SearchInsightsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchInsightsInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchInsightsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SearchInsightsInput>
    public typealias MOutput = OperationOutput<SearchInsightsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchInsightsOutputError>
}

public struct SearchInsightsInputQueryItemMiddleware: Middleware {
    public let id: String = "SearchInsightsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchInsightsInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchInsightsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SearchInsightsInput>
    public typealias MOutput = OperationOutput<SearchInsightsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchInsightsOutputError>
}

public struct SearchInsightsInputBodyMiddleware: Middleware {
    public let id: String = "SearchInsightsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchInsightsInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchInsightsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SearchInsightsInput>
    public typealias MOutput = OperationOutput<SearchInsightsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchInsightsOutputError>
}

extension SearchInsightsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case startTimeRange = "StartTimeRange"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            try encodeContainer.encode(filters, forKey: .filters)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startTimeRange = startTimeRange {
            try encodeContainer.encode(startTimeRange, forKey: .startTimeRange)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}