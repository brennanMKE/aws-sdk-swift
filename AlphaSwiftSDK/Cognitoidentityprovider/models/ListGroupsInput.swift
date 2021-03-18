// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListGroupsInput: Equatable {
    /// <p>The limit of the request to list groups.</p>
    public let limit: Int?
    /**
     <p>An identifier that was returned from the previous call to this operation, which can be
                 used to return the next set of items in the list.</p>
     */
    public let nextToken: String?
    /// <p>The user pool ID for the user pool.</p>
    public let userPoolId: String?

    public init (
        limit: Int? = nil,
        nextToken: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.limit = limit
        self.nextToken = nextToken
        self.userPoolId = userPoolId
    }
}
