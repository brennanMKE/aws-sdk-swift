// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeRiskConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeRiskConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRiskConfigurationInput>,
                  next: H) -> Result<OperationOutput<DescribeRiskConfigurationOutput, DescribeRiskConfigurationError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRiskConfigurationInput>
    public typealias MOutput = OperationOutput<DescribeRiskConfigurationOutput, DescribeRiskConfigurationError>
    public typealias Context = HttpContext
}
