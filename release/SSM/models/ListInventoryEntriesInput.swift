// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListInventoryEntriesInput: Equatable {
    /// <p>One or more filters. Use a filter to return a more specific list of results.</p>
    public let filters: [InventoryFilter]?
    /// <p>The instance ID for which you want inventory information.</p>
    public let instanceId: String?
    /// <p>The maximum number of items to return for this call. The call also returns a token that you
    ///    can specify in a subsequent call to get the next set of results.</p>
    public let maxResults: Int
    /// <p>The token for the next set of items to return. (You received this token from a previous
    ///    call.)</p>
    public let nextToken: String?
    /// <p>The type of inventory item for which you want information.</p>
    public let typeName: String?

    public init (
        filters: [InventoryFilter]? = nil,
        instanceId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        typeName: String? = nil
    )
    {
        self.filters = filters
        self.instanceId = instanceId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.typeName = typeName
    }
}

extension ListInventoryEntriesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListInventoryEntriesInput(filters: \(String(describing: filters)), instanceId: \(String(describing: instanceId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), typeName: \(String(describing: typeName)))"}
}