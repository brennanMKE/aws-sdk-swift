// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeDBClustersInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeDBClustersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDBClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDBClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDBClustersInput>
    public typealias MOutput = OperationOutput<DescribeDBClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDBClustersOutputError>
}

public struct DescribeDBClustersInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeDBClustersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDBClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDBClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDBClustersInput>
    public typealias MOutput = OperationOutput<DescribeDBClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDBClustersOutputError>
}

public struct DescribeDBClustersInputBodyMiddleware: Middleware {
    public let id: String = "DescribeDBClustersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDBClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDBClustersOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeDBClustersInput>
    public typealias MOutput = OperationOutput<DescribeDBClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDBClustersOutputError>
}

extension DescribeDBClustersInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dBClusterIdentifier = dBClusterIdentifier {
            try container.encode(dBClusterIdentifier, forKey: Key("DBClusterIdentifier"))
        }
        if let filters = filters {
            var filtersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Filters"))
            for (index0, filter0) in filters.enumerated() {
                try filtersContainer.encode(filter0, forKey: Key("Filter.\(index0.advanced(by: 1))"))
            }
        }
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let maxRecords = maxRecords {
            try container.encode(maxRecords, forKey: Key("MaxRecords"))
        }
        try container.encode("DescribeDBClusters", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}