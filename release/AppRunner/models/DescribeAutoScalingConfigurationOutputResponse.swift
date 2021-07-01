// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAutoScalingConfigurationOutputResponse: Equatable {
    /// <p>A full description of the App Runner auto scaling configuration that you specified in this request.</p>
    public let autoScalingConfiguration: AutoScalingConfiguration?

    public init (
        autoScalingConfiguration: AutoScalingConfiguration? = nil
    )
    {
        self.autoScalingConfiguration = autoScalingConfiguration
    }
}

extension DescribeAutoScalingConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAutoScalingConfigurationOutputResponse(autoScalingConfiguration: \(String(describing: autoScalingConfiguration)))"}
}