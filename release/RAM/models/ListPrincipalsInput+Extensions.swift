// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPrincipalsInputHeadersMiddleware: Middleware {
    public let id: String = "ListPrincipalsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPrincipalsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPrincipalsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPrincipalsInput>
    public typealias MOutput = OperationOutput<ListPrincipalsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPrincipalsOutputError>
}

public struct ListPrincipalsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPrincipalsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPrincipalsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPrincipalsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPrincipalsInput>
    public typealias MOutput = OperationOutput<ListPrincipalsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPrincipalsOutputError>
}

public struct ListPrincipalsInputBodyMiddleware: Middleware {
    public let id: String = "ListPrincipalsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPrincipalsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPrincipalsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListPrincipalsInput>
    public typealias MOutput = OperationOutput<ListPrincipalsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPrincipalsOutputError>
}

extension ListPrincipalsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case principals
        case resourceArn
        case resourceOwner
        case resourceShareArns
        case resourceType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let principals = principals {
            var principalsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .principals)
            for principalarnoridlist0 in principals {
                try principalsContainer.encode(principalarnoridlist0)
            }
        }
        if let resourceArn = resourceArn {
            try encodeContainer.encode(resourceArn, forKey: .resourceArn)
        }
        if let resourceOwner = resourceOwner {
            try encodeContainer.encode(resourceOwner.rawValue, forKey: .resourceOwner)
        }
        if let resourceShareArns = resourceShareArns {
            var resourceShareArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourceShareArns)
            for resourcesharearnlist0 in resourceShareArns {
                try resourceShareArnsContainer.encode(resourcesharearnlist0)
            }
        }
        if let resourceType = resourceType {
            try encodeContainer.encode(resourceType, forKey: .resourceType)
        }
    }
}