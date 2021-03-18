// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteIdentityProviderInput: Equatable {
    /// <p>The identity provider name.</p>
    public let providerName: String?
    /// <p>The user pool ID.</p>
    public let userPoolId: String?

    public init (
        providerName: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.providerName = providerName
        self.userPoolId = userPoolId
    }
}
