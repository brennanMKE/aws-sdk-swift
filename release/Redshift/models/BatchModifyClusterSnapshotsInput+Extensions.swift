// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct BatchModifyClusterSnapshotsInputHeadersMiddleware: Middleware {
    public let id: String = "BatchModifyClusterSnapshotsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchModifyClusterSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchModifyClusterSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchModifyClusterSnapshotsInput>
    public typealias MOutput = OperationOutput<BatchModifyClusterSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchModifyClusterSnapshotsOutputError>
}

public struct BatchModifyClusterSnapshotsInputQueryItemMiddleware: Middleware {
    public let id: String = "BatchModifyClusterSnapshotsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchModifyClusterSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchModifyClusterSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchModifyClusterSnapshotsInput>
    public typealias MOutput = OperationOutput<BatchModifyClusterSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchModifyClusterSnapshotsOutputError>
}

public struct BatchModifyClusterSnapshotsInputBodyMiddleware: Middleware {
    public let id: String = "BatchModifyClusterSnapshotsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchModifyClusterSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchModifyClusterSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchModifyClusterSnapshotsInput>
    public typealias MOutput = OperationOutput<BatchModifyClusterSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchModifyClusterSnapshotsOutputError>
}

extension BatchModifyClusterSnapshotsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if force != false {
            try container.encode(force, forKey: Key("Force"))
        }
        if let manualSnapshotRetentionPeriod = manualSnapshotRetentionPeriod {
            try container.encode(manualSnapshotRetentionPeriod, forKey: Key("ManualSnapshotRetentionPeriod"))
        }
        if let snapshotIdentifierList = snapshotIdentifierList {
            var snapshotIdentifierListContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SnapshotIdentifierList"))
            for (index0, string0) in snapshotIdentifierList.enumerated() {
                try snapshotIdentifierListContainer.encode(string0, forKey: Key("String.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("BatchModifyClusterSnapshots", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}