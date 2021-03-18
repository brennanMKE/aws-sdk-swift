// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListIdentityProvidersInput: Equatable {
    /// <p>The maximum number of identity providers to return.</p>
    public let maxResults: Int?
    /// <p>A pagination token.</p>
    public let nextToken: String?
    /// <p>The user pool ID.</p>
    public let userPoolId: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.userPoolId = userPoolId
    }
}
