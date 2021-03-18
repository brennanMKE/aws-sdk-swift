// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateResourceServerInput: Equatable {
    /// <p>The identifier for the resource server.</p>
    public let identifier: String?
    /// <p>The name of the resource server.</p>
    public let name: String?
    /// <p>The scope values to be set for the resource server.</p>
    public let scopes: [ResourceServerScopeType]?
    /// <p>The user pool ID for the user pool.</p>
    public let userPoolId: String?

    public init (
        identifier: String? = nil,
        name: String? = nil,
        scopes: [ResourceServerScopeType]? = nil,
        userPoolId: String? = nil
    )
    {
        self.identifier = identifier
        self.name = name
        self.scopes = scopes
        self.userPoolId = userPoolId
    }
}
