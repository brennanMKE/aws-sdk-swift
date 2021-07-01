// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForDeliveryStreamOutputResponse: Equatable {
    /// <p>If this is <code>true</code> in the response, more tags are available. To list the
    ///          remaining tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned
    ///          and call <code>ListTagsForDeliveryStream</code> again.</p>
    public let hasMoreTags: Bool?
    /// <p>A list of tags associated with <code>DeliveryStreamName</code>, starting with the
    ///          first tag after <code>ExclusiveStartTagKey</code> and up to the specified
    ///             <code>Limit</code>.</p>
    public let tags: [Tag]?

    public init (
        hasMoreTags: Bool? = nil,
        tags: [Tag]? = nil
    )
    {
        self.hasMoreTags = hasMoreTags
        self.tags = tags
    }
}

extension ListTagsForDeliveryStreamOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForDeliveryStreamOutputResponse(hasMoreTags: \(String(describing: hasMoreTags)), tags: \(String(describing: tags)))"}
}