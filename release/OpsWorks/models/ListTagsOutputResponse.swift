// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a <code>ListTags</code> request.</p>
public struct ListTagsOutputResponse: Equatable {
    /// <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that
    ///             you can assign to the request object's <code>NextToken</code> parameter to get the next set of results.
    ///             If the previous paginated request returned all of the remaining results,
    ///             this parameter is set to <code>null</code>.
    ///       </p>
    public let nextToken: String?
    /// <p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>
    public let tags: [String:String]?

    public init (
        nextToken: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.nextToken = nextToken
        self.tags = tags
    }
}

extension ListTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsOutputResponse(nextToken: \(String(describing: nextToken)), tags: \(String(describing: tags)))"}
}