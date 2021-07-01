// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAggregationAuthorizationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAggregationAuthorizationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAggregationAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAggregationAuthorizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAggregationAuthorizationInput>
    public typealias MOutput = OperationOutput<DeleteAggregationAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAggregationAuthorizationOutputError>
}

public struct DeleteAggregationAuthorizationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAggregationAuthorizationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAggregationAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAggregationAuthorizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAggregationAuthorizationInput>
    public typealias MOutput = OperationOutput<DeleteAggregationAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAggregationAuthorizationOutputError>
}

public struct DeleteAggregationAuthorizationInputBodyMiddleware: Middleware {
    public let id: String = "DeleteAggregationAuthorizationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAggregationAuthorizationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAggregationAuthorizationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteAggregationAuthorizationInput>
    public typealias MOutput = OperationOutput<DeleteAggregationAuthorizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAggregationAuthorizationOutputError>
}

extension DeleteAggregationAuthorizationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorizedAccountId = "AuthorizedAccountId"
        case authorizedAwsRegion = "AuthorizedAwsRegion"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorizedAccountId = authorizedAccountId {
            try encodeContainer.encode(authorizedAccountId, forKey: .authorizedAccountId)
        }
        if let authorizedAwsRegion = authorizedAwsRegion {
            try encodeContainer.encode(authorizedAwsRegion, forKey: .authorizedAwsRegion)
        }
    }
}