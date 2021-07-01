// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteLoadBalancerInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteLoadBalancerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLoadBalancerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLoadBalancerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLoadBalancerInput>
    public typealias MOutput = OperationOutput<DeleteLoadBalancerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLoadBalancerOutputError>
}

public struct DeleteLoadBalancerInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteLoadBalancerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLoadBalancerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLoadBalancerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLoadBalancerInput>
    public typealias MOutput = OperationOutput<DeleteLoadBalancerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLoadBalancerOutputError>
}

public struct DeleteLoadBalancerInputBodyMiddleware: Middleware {
    public let id: String = "DeleteLoadBalancerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLoadBalancerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLoadBalancerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteLoadBalancerInput>
    public typealias MOutput = OperationOutput<DeleteLoadBalancerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLoadBalancerOutputError>
}

extension DeleteLoadBalancerInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let loadBalancerArn = loadBalancerArn {
            try container.encode(loadBalancerArn, forKey: Key("LoadBalancerArn"))
        }
        try container.encode("DeleteLoadBalancer", forKey:Key("Action"))
        try container.encode("2015-12-01", forKey:Key("Version"))
    }
}