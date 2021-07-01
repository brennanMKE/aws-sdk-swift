// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetRelationalDatabaseSnapshotsInputHeadersMiddleware: Middleware {
    public let id: String = "GetRelationalDatabaseSnapshotsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRelationalDatabaseSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRelationalDatabaseSnapshotsInput>
    public typealias MOutput = OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRelationalDatabaseSnapshotsOutputError>
}

public struct GetRelationalDatabaseSnapshotsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetRelationalDatabaseSnapshotsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRelationalDatabaseSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRelationalDatabaseSnapshotsInput>
    public typealias MOutput = OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRelationalDatabaseSnapshotsOutputError>
}

public struct GetRelationalDatabaseSnapshotsInputBodyMiddleware: Middleware {
    public let id: String = "GetRelationalDatabaseSnapshotsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRelationalDatabaseSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetRelationalDatabaseSnapshotsInput>
    public typealias MOutput = OperationOutput<GetRelationalDatabaseSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRelationalDatabaseSnapshotsOutputError>
}

extension GetRelationalDatabaseSnapshotsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case pageToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let pageToken = pageToken {
            try encodeContainer.encode(pageToken, forKey: .pageToken)
        }
    }
}