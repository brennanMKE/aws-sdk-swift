// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeClusterInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeClusterInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeClusterInput>
    public typealias MOutput = OperationOutput<DescribeClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeClusterOutputError>
}

public struct DescribeClusterInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeClusterInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeClusterInput>
    public typealias MOutput = OperationOutput<DescribeClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeClusterOutputError>
}

extension DescribeClusterInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}