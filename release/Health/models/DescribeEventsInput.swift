// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeEventsInput: Equatable {
    /// <p>Values to narrow the results returned.</p>
    public let filter: EventFilter?
    /// <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    public let locale: String?
    /// <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    public let maxResults: Int?
    /// <p>If the results of a search are large, only a portion of the
    /// results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    /// retrieve the next batch of results, reissue the search request and include the returned token.
    /// When all results have been returned, the response does not contain a pagination token value.</p>
    public let nextToken: String?

    public init (
        filter: EventFilter? = nil,
        locale: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.filter = filter
        self.locale = locale
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeEventsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEventsInput(filter: \(String(describing: filter)), locale: \(String(describing: locale)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}