// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeRdsDbInstancesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeRdsDbInstancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRdsDbInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRdsDbInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRdsDbInstancesInput>
    public typealias MOutput = OperationOutput<DescribeRdsDbInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRdsDbInstancesOutputError>
}

public struct DescribeRdsDbInstancesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeRdsDbInstancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRdsDbInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRdsDbInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRdsDbInstancesInput>
    public typealias MOutput = OperationOutput<DescribeRdsDbInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRdsDbInstancesOutputError>
}

public struct DescribeRdsDbInstancesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeRdsDbInstancesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRdsDbInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRdsDbInstancesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeRdsDbInstancesInput>
    public typealias MOutput = OperationOutput<DescribeRdsDbInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRdsDbInstancesOutputError>
}

extension DescribeRdsDbInstancesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case rdsDbInstanceArns = "RdsDbInstanceArns"
        case stackId = "StackId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let rdsDbInstanceArns = rdsDbInstanceArns {
            var rdsDbInstanceArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .rdsDbInstanceArns)
            for strings0 in rdsDbInstanceArns {
                try rdsDbInstanceArnsContainer.encode(strings0)
            }
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
    }
}