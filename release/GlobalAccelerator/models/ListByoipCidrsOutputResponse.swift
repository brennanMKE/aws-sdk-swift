// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListByoipCidrsOutputResponse: Equatable {
    /// <p>Information about your address ranges.</p>
    public let byoipCidrs: [ByoipCidr]?
    /// <p>The token for the next page of results.</p>
    public let nextToken: String?

    public init (
        byoipCidrs: [ByoipCidr]? = nil,
        nextToken: String? = nil
    )
    {
        self.byoipCidrs = byoipCidrs
        self.nextToken = nextToken
    }
}

extension ListByoipCidrsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListByoipCidrsOutputResponse(byoipCidrs: \(String(describing: byoipCidrs)), nextToken: \(String(describing: nextToken)))"}
}