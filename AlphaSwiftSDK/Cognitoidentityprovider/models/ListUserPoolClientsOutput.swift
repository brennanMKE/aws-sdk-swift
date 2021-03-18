// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the response from the server that lists user pool clients.</p>
public struct ListUserPoolClientsOutput: Equatable {
    /**
     <p>An identifier that was returned from the previous call to this operation, which can be
                 used to return the next set of items in the list.</p>
     */
    public let nextToken: String?
    /// <p>The user pool clients in the response that lists user pool clients.</p>
    public let userPoolClients: [UserPoolClientDescription]?

    public init (
        nextToken: String? = nil,
        userPoolClients: [UserPoolClientDescription]? = nil
    )
    {
        self.nextToken = nextToken
        self.userPoolClients = userPoolClients
    }
}