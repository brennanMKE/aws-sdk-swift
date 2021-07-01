// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBuildBatchesInput: Equatable {
    /// <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    public let filter: BuildBatchFilter?
    /// <p>The maximum number of results to return.</p>
    public let maxResults: Int?
    /// <p>The <code>nextToken</code> value returned from a previous call to
    ///                 <code>ListBuildBatches</code>. This specifies the next item to return. To return the
    ///             beginning of the list, exclude this parameter.</p>
    public let nextToken: String?
    /// <p>Specifies the sort order of the returned items. Valid values include:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p>
    ///             </li>
    ///          </ul>
    public let sortOrder: SortOrderType?

    public init (
        filter: BuildBatchFilter? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        sortOrder: SortOrderType? = nil
    )
    {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortOrder = sortOrder
    }
}

extension ListBuildBatchesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBuildBatchesInput(filter: \(String(describing: filter)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sortOrder: \(String(describing: sortOrder)))"}
}