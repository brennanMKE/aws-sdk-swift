// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRoutingProfileQueuesOutputResponse: Equatable {
    /// <p>If there are additional results, this is the token for the next set of results.</p>
    public let nextToken: String?
    /// <p>Information about the routing profiles.</p>
    public let routingProfileQueueConfigSummaryList: [RoutingProfileQueueConfigSummary]?

    public init (
        nextToken: String? = nil,
        routingProfileQueueConfigSummaryList: [RoutingProfileQueueConfigSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.routingProfileQueueConfigSummaryList = routingProfileQueueConfigSummaryList
    }
}

extension ListRoutingProfileQueuesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRoutingProfileQueuesOutputResponse(nextToken: \(String(describing: nextToken)), routingProfileQueueConfigSummaryList: \(String(describing: routingProfileQueueConfigSummaryList)))"}
}