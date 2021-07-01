// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeDefaultAuthorizerInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeDefaultAuthorizerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDefaultAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDefaultAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDefaultAuthorizerInput>
    public typealias MOutput = OperationOutput<DescribeDefaultAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDefaultAuthorizerOutputError>
}

public struct DescribeDefaultAuthorizerInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeDefaultAuthorizerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDefaultAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDefaultAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDefaultAuthorizerInput>
    public typealias MOutput = OperationOutput<DescribeDefaultAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDefaultAuthorizerOutputError>
}

extension DescribeDefaultAuthorizerInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}