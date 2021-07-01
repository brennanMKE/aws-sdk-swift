// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCrawlersInput: Equatable {
    /// <p>The number of crawlers to return on each call.</p>
    public let maxResults: Int?
    /// <p>A continuation token, if this is a continuation request.</p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension GetCrawlersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCrawlersInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}