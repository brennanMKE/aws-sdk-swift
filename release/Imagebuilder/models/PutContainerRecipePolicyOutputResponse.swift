// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutContainerRecipePolicyOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the container recipe that this policy was applied to.</p>
    public let containerRecipeArn: String?
    /// <p>The request ID that uniquely identifies this request.</p>
    public let requestId: String?

    public init (
        containerRecipeArn: String? = nil,
        requestId: String? = nil
    )
    {
        self.containerRecipeArn = containerRecipeArn
        self.requestId = requestId
    }
}

extension PutContainerRecipePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutContainerRecipePolicyOutputResponse(containerRecipeArn: \(String(describing: containerRecipeArn)), requestId: \(String(describing: requestId)))"}
}