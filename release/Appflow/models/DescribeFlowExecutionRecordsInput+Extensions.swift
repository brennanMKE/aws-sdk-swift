// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeFlowExecutionRecordsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeFlowExecutionRecordsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFlowExecutionRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFlowExecutionRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeFlowExecutionRecordsInput>
    public typealias MOutput = OperationOutput<DescribeFlowExecutionRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFlowExecutionRecordsOutputError>
}

public struct DescribeFlowExecutionRecordsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeFlowExecutionRecordsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFlowExecutionRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFlowExecutionRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeFlowExecutionRecordsInput>
    public typealias MOutput = OperationOutput<DescribeFlowExecutionRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFlowExecutionRecordsOutputError>
}

public struct DescribeFlowExecutionRecordsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeFlowExecutionRecordsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFlowExecutionRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFlowExecutionRecordsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeFlowExecutionRecordsInput>
    public typealias MOutput = OperationOutput<DescribeFlowExecutionRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFlowExecutionRecordsOutputError>
}

extension DescribeFlowExecutionRecordsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case flowName
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let flowName = flowName {
            try encodeContainer.encode(flowName, forKey: .flowName)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}