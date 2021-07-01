// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveFlowOutputOutputResponse: Equatable {
    /// The ARN of the flow that is associated with the output you removed.
    public let flowArn: String?
    /// The ARN of the output that was removed.
    public let outputArn: String?

    public init (
        flowArn: String? = nil,
        outputArn: String? = nil
    )
    {
        self.flowArn = flowArn
        self.outputArn = outputArn
    }
}

extension RemoveFlowOutputOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveFlowOutputOutputResponse(flowArn: \(String(describing: flowArn)), outputArn: \(String(describing: outputArn)))"}
}