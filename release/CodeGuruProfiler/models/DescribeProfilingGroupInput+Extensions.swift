// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeProfilingGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeProfilingGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProfilingGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProfilingGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProfilingGroupInput>
    public typealias MOutput = OperationOutput<DescribeProfilingGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProfilingGroupOutputError>
}

public struct DescribeProfilingGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeProfilingGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProfilingGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProfilingGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProfilingGroupInput>
    public typealias MOutput = OperationOutput<DescribeProfilingGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProfilingGroupOutputError>
}

extension DescribeProfilingGroupInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}