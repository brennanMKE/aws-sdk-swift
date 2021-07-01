// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListSkillsStoreCategoriesInputHeadersMiddleware: Middleware {
    public let id: String = "ListSkillsStoreCategoriesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSkillsStoreCategoriesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSkillsStoreCategoriesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSkillsStoreCategoriesInput>
    public typealias MOutput = OperationOutput<ListSkillsStoreCategoriesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSkillsStoreCategoriesOutputError>
}

public struct ListSkillsStoreCategoriesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListSkillsStoreCategoriesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSkillsStoreCategoriesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSkillsStoreCategoriesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSkillsStoreCategoriesInput>
    public typealias MOutput = OperationOutput<ListSkillsStoreCategoriesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSkillsStoreCategoriesOutputError>
}

public struct ListSkillsStoreCategoriesInputBodyMiddleware: Middleware {
    public let id: String = "ListSkillsStoreCategoriesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSkillsStoreCategoriesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSkillsStoreCategoriesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListSkillsStoreCategoriesInput>
    public typealias MOutput = OperationOutput<ListSkillsStoreCategoriesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSkillsStoreCategoriesOutputError>
}

extension ListSkillsStoreCategoriesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}