// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListObjectChildrenInputHeadersMiddleware: Middleware {
    public let id: String = "ListObjectChildrenInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListObjectChildrenInput>,
                  next: H) -> Swift.Result<OperationOutput<ListObjectChildrenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let consistencyLevel = input.operationInput.consistencyLevel {
            input.builder.withHeader(name: "x-amz-consistency-level", value: String(consistencyLevel.rawValue))
        }
        if let directoryArn = input.operationInput.directoryArn {
            input.builder.withHeader(name: "x-amz-data-partition", value: String(directoryArn))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListObjectChildrenInput>
    public typealias MOutput = OperationOutput<ListObjectChildrenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListObjectChildrenOutputError>
}

public struct ListObjectChildrenInputQueryItemMiddleware: Middleware {
    public let id: String = "ListObjectChildrenInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListObjectChildrenInput>,
                  next: H) -> Swift.Result<OperationOutput<ListObjectChildrenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListObjectChildrenInput>
    public typealias MOutput = OperationOutput<ListObjectChildrenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListObjectChildrenOutputError>
}

public struct ListObjectChildrenInputBodyMiddleware: Middleware {
    public let id: String = "ListObjectChildrenInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListObjectChildrenInput>,
                  next: H) -> Swift.Result<OperationOutput<ListObjectChildrenOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListObjectChildrenInput>
    public typealias MOutput = OperationOutput<ListObjectChildrenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListObjectChildrenOutputError>
}

extension ListObjectChildrenInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case objectReference = "ObjectReference"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let objectReference = objectReference {
            try encodeContainer.encode(objectReference, forKey: .objectReference)
        }
    }
}