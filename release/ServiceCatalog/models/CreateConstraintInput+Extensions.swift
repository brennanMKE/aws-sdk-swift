// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateConstraintInputHeadersMiddleware: Middleware {
    public let id: String = "CreateConstraintInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConstraintInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConstraintOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConstraintInput>
    public typealias MOutput = OperationOutput<CreateConstraintOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConstraintOutputError>
}

public struct CreateConstraintInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateConstraintInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConstraintInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConstraintOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConstraintInput>
    public typealias MOutput = OperationOutput<CreateConstraintOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConstraintOutputError>
}

public struct CreateConstraintInputBodyMiddleware: Middleware {
    public let id: String = "CreateConstraintInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConstraintInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConstraintOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateConstraintInput>
    public typealias MOutput = OperationOutput<CreateConstraintOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConstraintOutputError>
}

extension CreateConstraintInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case description = "Description"
        case idempotencyToken = "IdempotencyToken"
        case parameters = "Parameters"
        case portfolioId = "PortfolioId"
        case productId = "ProductId"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptLanguage = acceptLanguage {
            try encodeContainer.encode(acceptLanguage, forKey: .acceptLanguage)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let idempotencyToken = idempotencyToken {
            try encodeContainer.encode(idempotencyToken, forKey: .idempotencyToken)
        }
        if let parameters = parameters {
            try encodeContainer.encode(parameters, forKey: .parameters)
        }
        if let portfolioId = portfolioId {
            try encodeContainer.encode(portfolioId, forKey: .portfolioId)
        }
        if let productId = productId {
            try encodeContainer.encode(productId, forKey: .productId)
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
    }
}