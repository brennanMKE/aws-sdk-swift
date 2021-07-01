// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeQuickConnectInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeQuickConnectInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeQuickConnectInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeQuickConnectOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeQuickConnectInput>
    public typealias MOutput = OperationOutput<DescribeQuickConnectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeQuickConnectOutputError>
}

public struct DescribeQuickConnectInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeQuickConnectInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeQuickConnectInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeQuickConnectOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeQuickConnectInput>
    public typealias MOutput = OperationOutput<DescribeQuickConnectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeQuickConnectOutputError>
}

extension DescribeQuickConnectInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}