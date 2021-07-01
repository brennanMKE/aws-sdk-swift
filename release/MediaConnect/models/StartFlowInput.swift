// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartFlowInput: Equatable {
    /// The ARN of the flow that you want to start.
    public let flowArn: String?

    public init (
        flowArn: String? = nil
    )
    {
        self.flowArn = flowArn
    }
}

extension StartFlowInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartFlowInput(flowArn: \(String(describing: flowArn)))"}
}