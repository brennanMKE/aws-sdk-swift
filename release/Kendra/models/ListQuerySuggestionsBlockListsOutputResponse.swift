// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListQuerySuggestionsBlockListsOutputResponse: Equatable {
    /// <p>Summary items for a block list.</p>
    ///         <p>This includes summary items on the block list ID, block list name, when the
    ///             block list was created, when the block list was last updated, and the count
    ///             of block words/phrases in the block list.</p>
    ///         <p>For information on the current quota limits for block lists, see
    ///             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    ///                 for Amazon Kendra</a>.</p>
    public let blockListSummaryItems: [QuerySuggestionsBlockListSummary]?
    /// <p>If the response is truncated, Amazon Kendra returns this token that you can use
    ///             in the subsequent request to retrieve the next set of block lists.</p>
    public let nextToken: String?

    public init (
        blockListSummaryItems: [QuerySuggestionsBlockListSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.blockListSummaryItems = blockListSummaryItems
        self.nextToken = nextToken
    }
}

extension ListQuerySuggestionsBlockListsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListQuerySuggestionsBlockListsOutputResponse(blockListSummaryItems: \(String(describing: blockListSummaryItems)), nextToken: \(String(describing: nextToken)))"}
}