// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListEntitlementsOutputResponse: Equatable {
    /// A list of entitlements that have been granted to you from other AWS accounts.
    public let entitlements: [ListedEntitlement]?
    /// The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value.
    public let nextToken: String?

    public init (
        entitlements: [ListedEntitlement]? = nil,
        nextToken: String? = nil
    )
    {
        self.entitlements = entitlements
        self.nextToken = nextToken
    }
}

extension ListEntitlementsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEntitlementsOutputResponse(entitlements: \(String(describing: entitlements)), nextToken: \(String(describing: nextToken)))"}
}