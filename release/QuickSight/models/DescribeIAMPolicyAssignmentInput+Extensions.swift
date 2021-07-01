// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeIAMPolicyAssignmentInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeIAMPolicyAssignmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIAMPolicyAssignmentInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIAMPolicyAssignmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIAMPolicyAssignmentInput>
    public typealias MOutput = OperationOutput<DescribeIAMPolicyAssignmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIAMPolicyAssignmentOutputError>
}

public struct DescribeIAMPolicyAssignmentInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeIAMPolicyAssignmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIAMPolicyAssignmentInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIAMPolicyAssignmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIAMPolicyAssignmentInput>
    public typealias MOutput = OperationOutput<DescribeIAMPolicyAssignmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIAMPolicyAssignmentOutputError>
}

extension DescribeIAMPolicyAssignmentInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}