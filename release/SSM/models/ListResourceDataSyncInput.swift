// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListResourceDataSyncInput: Equatable {
    /// <p>The maximum number of items to return for this call. The call also returns a token that you
    ///    can specify in a subsequent call to get the next set of results.</p>
    public let maxResults: Int
    /// <p>A token to start the list. Use this token to get the next set of results. </p>
    public let nextToken: String?
    /// <p>View a list of resource data syncs according to the sync type. Specify
    ///     <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3
    ///    bucket. Specify <code>SyncFromSource</code> to view resource data syncs from AWS Organizations or from
    ///    multiple AWS Regions.</p>
    public let syncType: String?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil,
        syncType: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.syncType = syncType
    }
}

extension ListResourceDataSyncInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResourceDataSyncInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), syncType: \(String(describing: syncType)))"}
}