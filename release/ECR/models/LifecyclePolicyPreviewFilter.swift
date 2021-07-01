// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The filter for the lifecycle policy preview.</p>
public struct LifecyclePolicyPreviewFilter: Equatable {
    /// <p>The tag status of the image.</p>
    public let tagStatus: TagStatus?

    public init (
        tagStatus: TagStatus? = nil
    )
    {
        self.tagStatus = tagStatus
    }
}

extension LifecyclePolicyPreviewFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LifecyclePolicyPreviewFilter(tagStatus: \(String(describing: tagStatus)))"}
}