// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateResourceServerInput: Equatable {
    /**
     <p>A unique resource server identifier for the resource server. This could be an HTTPS
                 endpoint where the resource server is located. For example,
                     <code>https://my-weather-api.example.com</code>.</p>
     */
    public let identifier: String?
    /// <p>A friendly name for the resource server.</p>
    public let name: String?
    /**
     <p>A list of scopes. Each scope is map, where the keys are <code>name</code> and
                     <code>description</code>.</p>
     */
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
