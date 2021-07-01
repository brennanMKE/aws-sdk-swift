// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeSourceServersInput: Equatable {
    /// <p>Request to filter Source Servers list.</p>
    public let filters: DescribeSourceServersRequestFilters?
    /// <p>Request to filter Source Servers list by maximum results.</p>
    public let maxResults: Int
    /// <p>Request to filter Source Servers list by next token.</p>
    public let nextToken: String?

    public init (
        filters: DescribeSourceServersRequestFilters? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeSourceServersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeSourceServersInput(filters: \(String(describing: filters)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}