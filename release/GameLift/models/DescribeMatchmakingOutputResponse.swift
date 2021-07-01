// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the returned data in response to a request operation.</p>
public struct DescribeMatchmakingOutputResponse: Equatable {
    /// <p>A collection of existing matchmaking ticket objects matching the request.</p>
    public let ticketList: [MatchmakingTicket]?

    public init (
        ticketList: [MatchmakingTicket]? = nil
    )
    {
        self.ticketList = ticketList
    }
}

extension DescribeMatchmakingOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeMatchmakingOutputResponse(ticketList: \(String(describing: ticketList)))"}
}