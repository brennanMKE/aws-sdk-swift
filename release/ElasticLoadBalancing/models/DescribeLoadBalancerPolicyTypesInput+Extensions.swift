// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeLoadBalancerPolicyTypesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeLoadBalancerPolicyTypesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>
    public typealias MOutput = OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLoadBalancerPolicyTypesOutputError>
}

public struct DescribeLoadBalancerPolicyTypesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeLoadBalancerPolicyTypesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>
    public typealias MOutput = OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLoadBalancerPolicyTypesOutputError>
}

public struct DescribeLoadBalancerPolicyTypesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeLoadBalancerPolicyTypesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeLoadBalancerPolicyTypesInput>
    public typealias MOutput = OperationOutput<DescribeLoadBalancerPolicyTypesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLoadBalancerPolicyTypesOutputError>
}

extension DescribeLoadBalancerPolicyTypesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let policyTypeNames = policyTypeNames {
            var policyTypeNamesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("PolicyTypeNames"))
            for (index0, policytypename0) in policyTypeNames.enumerated() {
                try policyTypeNamesContainer.encode(policytypename0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("DescribeLoadBalancerPolicyTypes", forKey:Key("Action"))
        try container.encode("2012-06-01", forKey:Key("Version"))
    }
}