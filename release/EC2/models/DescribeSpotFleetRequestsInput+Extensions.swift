// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeSpotFleetRequestsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeSpotFleetRequestsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeSpotFleetRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeSpotFleetRequestsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeSpotFleetRequestsInput>
    public typealias MOutput = OperationOutput<DescribeSpotFleetRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeSpotFleetRequestsOutputError>
}

public struct DescribeSpotFleetRequestsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeSpotFleetRequestsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeSpotFleetRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeSpotFleetRequestsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeSpotFleetRequestsInput>
    public typealias MOutput = OperationOutput<DescribeSpotFleetRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeSpotFleetRequestsOutputError>
}

public struct DescribeSpotFleetRequestsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeSpotFleetRequestsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeSpotFleetRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeSpotFleetRequestsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeSpotFleetRequestsInput>
    public typealias MOutput = OperationOutput<DescribeSpotFleetRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeSpotFleetRequestsOutputError>
}

extension DescribeSpotFleetRequestsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if maxResults != 0 {
            try container.encode(maxResults, forKey: Key("MaxResults"))
        }
        if let nextToken = nextToken {
            try container.encode(nextToken, forKey: Key("NextToken"))
        }
        if let spotFleetRequestIds = spotFleetRequestIds {
            if !spotFleetRequestIds.isEmpty {
                for (index0, spotfleetrequestid0) in spotFleetRequestIds.enumerated() {
                    var spotFleetRequestIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("SpotFleetRequestId.\(index0.advanced(by: 1))"))
                    try spotFleetRequestIdsContainer0.encode(spotfleetrequestid0, forKey: Key(""))
                }
            }
        }
        try container.encode("DescribeSpotFleetRequests", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}