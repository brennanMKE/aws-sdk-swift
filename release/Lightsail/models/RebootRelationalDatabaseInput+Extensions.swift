// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RebootRelationalDatabaseInputHeadersMiddleware: Middleware {
    public let id: String = "RebootRelationalDatabaseInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootRelationalDatabaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RebootRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<RebootRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootRelationalDatabaseOutputError>
}

public struct RebootRelationalDatabaseInputQueryItemMiddleware: Middleware {
    public let id: String = "RebootRelationalDatabaseInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootRelationalDatabaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RebootRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<RebootRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootRelationalDatabaseOutputError>
}

public struct RebootRelationalDatabaseInputBodyMiddleware: Middleware {
    public let id: String = "RebootRelationalDatabaseInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootRelationalDatabaseOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RebootRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<RebootRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootRelationalDatabaseOutputError>
}

extension RebootRelationalDatabaseInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case relationalDatabaseName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let relationalDatabaseName = relationalDatabaseName {
            try encodeContainer.encode(relationalDatabaseName, forKey: .relationalDatabaseName)
        }
    }
}