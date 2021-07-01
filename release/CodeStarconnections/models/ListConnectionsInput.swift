// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListConnectionsInput: Equatable {
    /// <p>Filters the list of connections to those associated with a specified host.</p>
    public let hostArnFilter: String?
    /// <p>The maximum number of results to return in a single call. To retrieve the remaining
    ///       results, make another call with the returned <code>nextToken</code> value.</p>
    public let maxResults: Int
    /// <p>The token that was returned from the previous <code>ListConnections</code> call, which
    ///       can be used to return the next set of connections in the list.</p>
    public let nextToken: String?
    /// <p>Filters the list of connections to those associated with a specified provider, such as
    ///       Bitbucket.</p>
    public let providerTypeFilter: ProviderType?

    public init (
        hostArnFilter: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        providerTypeFilter: ProviderType? = nil
    )
    {
        self.hostArnFilter = hostArnFilter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.providerTypeFilter = providerTypeFilter
    }
}

extension ListConnectionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListConnectionsInput(hostArnFilter: \(String(describing: hostArnFilter)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), providerTypeFilter: \(String(describing: providerTypeFilter)))"}
}