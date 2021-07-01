// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceOutputResponse: Equatable {
    /// <p>The tag values that are assigned to the behavior graph. The request returns up to 50 tag
    ///          values.</p>
    public let tags: [String:String]?

    public init (
        tags: [String:String]? = nil
    )
    {
        self.tags = tags
    }
}

extension ListTagsForResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceOutputResponse(tags: \(String(describing: tags)))"}
}