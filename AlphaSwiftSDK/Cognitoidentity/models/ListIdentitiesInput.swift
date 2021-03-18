// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to the ListIdentities action.</p>
public struct ListIdentitiesInput: Equatable {
    /**
     <p>An optional boolean parameter that allows you to hide disabled identities. If
              omitted, the ListIdentities API will include disabled identities in the response.</p>
     */
    public let hideDisabled: Bool
    /// <p>An identity pool ID in the format REGION:GUID.</p>
    public let identityPoolId: String?
    /// <p>The maximum number of identities to return.</p>
    public let maxResults: Int
    /// <p>A pagination token.</p>
    public let nextToken: String?

    public init (
        hideDisabled: Bool = false,
        identityPoolId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.hideDisabled = hideDisabled
        self.identityPoolId = identityPoolId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}