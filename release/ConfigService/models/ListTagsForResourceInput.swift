// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceInput: Equatable {
    /// <p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, AWS Config uses the default. </p>
    public let limit: Int
    /// <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    public let resourceArn: String?

    public init (
        limit: Int = 0,
        nextToken: String? = nil,
        resourceArn: String? = nil
    )
    {
        self.limit = limit
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }
}

extension ListTagsForResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceInput(limit: \(String(describing: limit)), nextToken: \(String(describing: nextToken)), resourceArn: \(String(describing: resourceArn)))"}
}