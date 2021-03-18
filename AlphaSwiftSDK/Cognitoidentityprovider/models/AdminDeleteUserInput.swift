// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to delete a user as an administrator.</p>
public struct AdminDeleteUserInput: Equatable {
    /// <p>The user pool ID for the user pool where you want to delete the user.</p>
    public let userPoolId: String?
    /// <p>The user name of the user you wish to delete.</p>
    public let username: String?

    public init (
        userPoolId: String? = nil,
        username: String? = nil
    )
    {
        self.userPoolId = userPoolId
        self.username = username
    }
}
