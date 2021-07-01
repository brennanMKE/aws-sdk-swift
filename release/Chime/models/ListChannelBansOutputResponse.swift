// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListChannelBansOutputResponse: Equatable {
    /// <p>The ARN of the channel.</p>
    public let channelArn: String?
    /// <p>The information for each requested ban.</p>
    public let channelBans: [ChannelBanSummary]?
    /// <p>The token passed by previous API calls until all requested bans are returned.</p>
    public let nextToken: String?

    public init (
        channelArn: String? = nil,
        channelBans: [ChannelBanSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.channelArn = channelArn
        self.channelBans = channelBans
        self.nextToken = nextToken
    }
}

extension ListChannelBansOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListChannelBansOutputResponse(channelArn: \(String(describing: channelArn)), channelBans: \(String(describing: channelBans)), nextToken: \(String(describing: nextToken)))"}
}