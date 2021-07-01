// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateComputeEnvironmentOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the compute environment.</p>
    public let computeEnvironmentArn: String?
    /// <p>The name of the compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and
    ///  underscores are allowed.</p>
    public let computeEnvironmentName: String?

    public init (
        computeEnvironmentArn: String? = nil,
        computeEnvironmentName: String? = nil
    )
    {
        self.computeEnvironmentArn = computeEnvironmentArn
        self.computeEnvironmentName = computeEnvironmentName
    }
}

extension UpdateComputeEnvironmentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateComputeEnvironmentOutputResponse(computeEnvironmentArn: \(String(describing: computeEnvironmentArn)), computeEnvironmentName: \(String(describing: computeEnvironmentName)))"}
}