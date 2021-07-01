// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSubscriptionDefinitionVersionInput: Equatable {
    /// The token for the next set of results, or ''null'' if there are no additional results.
    public let nextToken: String?
    /// The ID of the subscription definition.
    public let subscriptionDefinitionId: String?
    /// The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    public let subscriptionDefinitionVersionId: String?

    public init (
        nextToken: String? = nil,
        subscriptionDefinitionId: String? = nil,
        subscriptionDefinitionVersionId: String? = nil
    )
    {
        self.nextToken = nextToken
        self.subscriptionDefinitionId = subscriptionDefinitionId
        self.subscriptionDefinitionVersionId = subscriptionDefinitionVersionId
    }
}

extension GetSubscriptionDefinitionVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSubscriptionDefinitionVersionInput(nextToken: \(String(describing: nextToken)), subscriptionDefinitionId: \(String(describing: subscriptionDefinitionId)), subscriptionDefinitionVersionId: \(String(describing: subscriptionDefinitionVersionId)))"}
}