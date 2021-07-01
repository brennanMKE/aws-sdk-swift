// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to return a list of all identities (email addresses and domains)
///             that you have attempted to verify under your AWS account, regardless of verification
///             status.</p>
public struct ListIdentitiesInput: Equatable {
    /// <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain".
    ///             If this parameter is omitted, then all identities will be listed.</p>
    public let identityType: IdentityType?
    /// <p>The maximum number of identities per page. Possible values are 1-1000
    ///             inclusive.</p>
    public let maxItems: Int?
    /// <p>The token to use for pagination.</p>
    public let nextToken: String?

    public init (
        identityType: IdentityType? = nil,
        maxItems: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.identityType = identityType
        self.maxItems = maxItems
        self.nextToken = nextToken
    }
}

extension ListIdentitiesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListIdentitiesInput(identityType: \(String(describing: identityType)), maxItems: \(String(describing: maxItems)), nextToken: \(String(describing: nextToken)))"}
}