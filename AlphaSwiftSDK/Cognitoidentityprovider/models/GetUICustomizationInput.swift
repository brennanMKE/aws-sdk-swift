// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetUICustomizationInput: Equatable {
    /// <p>The client ID for the client app.</p>
    public let clientId: String?
    /// <p>The user pool ID for the user pool.</p>
    public let userPoolId: String?

    public init (
        clientId: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.clientId = clientId
        self.userPoolId = userPoolId
    }
}