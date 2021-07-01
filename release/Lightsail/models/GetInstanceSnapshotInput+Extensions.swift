// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetInstanceSnapshotInputHeadersMiddleware: Middleware {
    public let id: String = "GetInstanceSnapshotInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstanceSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstanceSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInstanceSnapshotInput>
    public typealias MOutput = OperationOutput<GetInstanceSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstanceSnapshotOutputError>
}

public struct GetInstanceSnapshotInputQueryItemMiddleware: Middleware {
    public let id: String = "GetInstanceSnapshotInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstanceSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstanceSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInstanceSnapshotInput>
    public typealias MOutput = OperationOutput<GetInstanceSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstanceSnapshotOutputError>
}

public struct GetInstanceSnapshotInputBodyMiddleware: Middleware {
    public let id: String = "GetInstanceSnapshotInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstanceSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstanceSnapshotOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetInstanceSnapshotInput>
    public typealias MOutput = OperationOutput<GetInstanceSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstanceSnapshotOutputError>
}

extension GetInstanceSnapshotInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceSnapshotName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceSnapshotName = instanceSnapshotName {
            try encodeContainer.encode(instanceSnapshotName, forKey: .instanceSnapshotName)
        }
    }
}