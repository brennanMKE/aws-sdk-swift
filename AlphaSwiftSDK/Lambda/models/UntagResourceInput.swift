// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /// <p>The function's Amazon Resource Name (ARN).</p>
    public let resource: String?
    /// <p>A list of tag keys to remove from the function.</p>
    public let tagKeys: [String]?

    public init (
        resource: String? = nil,
        tagKeys: [String]? = nil
    )
    {
        self.resource = resource
        self.tagKeys = tagKeys
    }
}
