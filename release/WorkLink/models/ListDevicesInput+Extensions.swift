// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListDevicesInputHeadersMiddleware: Middleware {
    public let id: String = "ListDevicesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDevicesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListDevicesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListDevicesInput>
    public typealias MOutput = OperationOutput<ListDevicesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListDevicesOutputError>
}

public struct ListDevicesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListDevicesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDevicesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListDevicesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListDevicesInput>
    public typealias MOutput = OperationOutput<ListDevicesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListDevicesOutputError>
}

public struct ListDevicesInputBodyMiddleware: Middleware {
    public let id: String = "ListDevicesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDevicesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListDevicesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListDevicesInput>
    public typealias MOutput = OperationOutput<ListDevicesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListDevicesOutputError>
}

extension ListDevicesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fleetArn = "FleetArn"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fleetArn = fleetArn {
            try encodeContainer.encode(fleetArn, forKey: .fleetArn)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}