// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output from the ListThingPrincipals operation.</p>
public struct ListThingPrincipalsOutputResponse: Equatable {
    /// <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    public let nextToken: String?
    /// <p>The principals associated with the thing.</p>
    public let principals: [String]?

    public init (
        nextToken: String? = nil,
        principals: [String]? = nil
    )
    {
        self.nextToken = nextToken
        self.principals = principals
    }
}

extension ListThingPrincipalsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListThingPrincipalsOutputResponse(nextToken: \(String(describing: nextToken)), principals: \(String(describing: principals)))"}
}