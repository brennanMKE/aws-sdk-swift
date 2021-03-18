// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to the ListIdentityPools action.</p>
public struct ListIdentityPoolsInput: Equatable {
    /// <p>The maximum number of identities to return.</p>
    public let maxResults: Int
    /// <p>A pagination token.</p>
    public let nextToken: String?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}
