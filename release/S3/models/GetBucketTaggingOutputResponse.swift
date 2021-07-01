// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBucketTaggingOutputResponse: Equatable {
    /// <p>Contains the tag set.</p>
    public let tagSet: [Tag]?

    public init (
        tagSet: [Tag]? = nil
    )
    {
        self.tagSet = tagSet
    }
}

extension GetBucketTaggingOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBucketTaggingOutputResponse(tagSet: \(String(describing: tagSet)))"}
}