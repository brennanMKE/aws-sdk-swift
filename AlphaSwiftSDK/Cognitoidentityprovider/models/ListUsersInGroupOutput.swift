// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListUsersInGroupOutput: Equatable {
    /**
     <p>An identifier that was returned from the previous call to this operation, which can be
                 used to return the next set of items in the list.</p>
     */
    public let nextToken: String?
    /// <p>The users returned in the request to list users.</p>
    public let users: [UserType]?

    public init (
        nextToken: String? = nil,
        users: [UserType]? = nil
    )
    {
        self.nextToken = nextToken
        self.users = users
    }
}
