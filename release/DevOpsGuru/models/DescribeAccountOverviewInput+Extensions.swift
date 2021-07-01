// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeAccountOverviewInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeAccountOverviewInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAccountOverviewInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAccountOverviewOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAccountOverviewInput>
    public typealias MOutput = OperationOutput<DescribeAccountOverviewOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAccountOverviewOutputError>
}

public struct DescribeAccountOverviewInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeAccountOverviewInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAccountOverviewInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAccountOverviewOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAccountOverviewInput>
    public typealias MOutput = OperationOutput<DescribeAccountOverviewOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAccountOverviewOutputError>
}

public struct DescribeAccountOverviewInputBodyMiddleware: Middleware {
    public let id: String = "DescribeAccountOverviewInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAccountOverviewInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAccountOverviewOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeAccountOverviewInput>
    public typealias MOutput = OperationOutput<DescribeAccountOverviewOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAccountOverviewOutputError>
}

extension DescribeAccountOverviewInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fromTime = "FromTime"
        case toTime = "ToTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fromTime = fromTime {
            try encodeContainer.encode(fromTime.timeIntervalSince1970, forKey: .fromTime)
        }
        if let toTime = toTime {
            try encodeContainer.encode(toTime.timeIntervalSince1970, forKey: .toTime)
        }
    }
}