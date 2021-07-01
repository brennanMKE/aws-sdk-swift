// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CopySnapshotInputHeadersMiddleware: Middleware {
    public let id: String = "CopySnapshotInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CopySnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<CopySnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CopySnapshotInput>
    public typealias MOutput = OperationOutput<CopySnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CopySnapshotOutputError>
}

public struct CopySnapshotInputQueryItemMiddleware: Middleware {
    public let id: String = "CopySnapshotInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CopySnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<CopySnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CopySnapshotInput>
    public typealias MOutput = OperationOutput<CopySnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CopySnapshotOutputError>
}

public struct CopySnapshotInputBodyMiddleware: Middleware {
    public let id: String = "CopySnapshotInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CopySnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<CopySnapshotOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CopySnapshotInput>
    public typealias MOutput = OperationOutput<CopySnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CopySnapshotOutputError>
}

extension CopySnapshotInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case restoreDate
        case sourceRegion
        case sourceResourceName
        case sourceSnapshotName
        case targetSnapshotName
        case useLatestRestorableAutoSnapshot
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let restoreDate = restoreDate {
            try encodeContainer.encode(restoreDate, forKey: .restoreDate)
        }
        if let sourceRegion = sourceRegion {
            try encodeContainer.encode(sourceRegion.rawValue, forKey: .sourceRegion)
        }
        if let sourceResourceName = sourceResourceName {
            try encodeContainer.encode(sourceResourceName, forKey: .sourceResourceName)
        }
        if let sourceSnapshotName = sourceSnapshotName {
            try encodeContainer.encode(sourceSnapshotName, forKey: .sourceSnapshotName)
        }
        if let targetSnapshotName = targetSnapshotName {
            try encodeContainer.encode(targetSnapshotName, forKey: .targetSnapshotName)
        }
        if let useLatestRestorableAutoSnapshot = useLatestRestorableAutoSnapshot {
            try encodeContainer.encode(useLatestRestorableAutoSnapshot, forKey: .useLatestRestorableAutoSnapshot)
        }
    }
}