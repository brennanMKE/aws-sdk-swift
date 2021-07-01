// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SearchFlowTemplatesInputHeadersMiddleware: Middleware {
    public let id: String = "SearchFlowTemplatesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchFlowTemplatesInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchFlowTemplatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SearchFlowTemplatesInput>
    public typealias MOutput = OperationOutput<SearchFlowTemplatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchFlowTemplatesOutputError>
}

public struct SearchFlowTemplatesInputQueryItemMiddleware: Middleware {
    public let id: String = "SearchFlowTemplatesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchFlowTemplatesInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchFlowTemplatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SearchFlowTemplatesInput>
    public typealias MOutput = OperationOutput<SearchFlowTemplatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchFlowTemplatesOutputError>
}

public struct SearchFlowTemplatesInputBodyMiddleware: Middleware {
    public let id: String = "SearchFlowTemplatesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SearchFlowTemplatesInput>,
                  next: H) -> Swift.Result<OperationOutput<SearchFlowTemplatesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SearchFlowTemplatesInput>
    public typealias MOutput = OperationOutput<SearchFlowTemplatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SearchFlowTemplatesOutputError>
}

extension SearchFlowTemplatesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .filters)
            for flowtemplatefilters0 in filters {
                try filtersContainer.encode(flowtemplatefilters0)
            }
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}