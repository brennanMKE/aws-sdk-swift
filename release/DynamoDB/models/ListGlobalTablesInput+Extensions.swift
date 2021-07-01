// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListGlobalTablesInputHeadersMiddleware: Middleware {
    public let id: String = "ListGlobalTablesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGlobalTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGlobalTablesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListGlobalTablesInput>
    public typealias MOutput = OperationOutput<ListGlobalTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGlobalTablesOutputError>
}

public struct ListGlobalTablesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListGlobalTablesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGlobalTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGlobalTablesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListGlobalTablesInput>
    public typealias MOutput = OperationOutput<ListGlobalTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGlobalTablesOutputError>
}

public struct ListGlobalTablesInputBodyMiddleware: Middleware {
    public let id: String = "ListGlobalTablesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGlobalTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGlobalTablesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListGlobalTablesInput>
    public typealias MOutput = OperationOutput<ListGlobalTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGlobalTablesOutputError>
}

extension ListGlobalTablesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case exclusiveStartGlobalTableName = "ExclusiveStartGlobalTableName"
        case limit = "Limit"
        case regionName = "RegionName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let exclusiveStartGlobalTableName = exclusiveStartGlobalTableName {
            try encodeContainer.encode(exclusiveStartGlobalTableName, forKey: .exclusiveStartGlobalTableName)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let regionName = regionName {
            try encodeContainer.encode(regionName, forKey: .regionName)
        }
    }
}