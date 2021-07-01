// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The OAuth configurations for authenticating users into your Amplify app.</p>
public struct UpdateBackendAuthOAuthConfig: Equatable {
    /// <p>The Amazon Cognito domain prefix used to create a hosted UI for authentication.</p>
    public let domainPrefix: String?
    /// <p>The OAuth grant type to allow app users to authenticate from your Amplify app.</p>
    public let oAuthGrantType: OAuthGrantType?
    /// <p>The list of OAuth-related flows that can allow users to authenticate from your Amplify app.</p>
    public let oAuthScopes: [OAuthScopesElement]?
    /// <p>Redirect URLs that OAuth uses when a user signs in to an Amplify app.</p>
    public let redirectSignInURIs: [String]?
    /// <p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>
    public let redirectSignOutURIs: [String]?
    /// <p>Describes third-party social federation configurations for allowing your users to sign in with OAuth.</p>
    public let socialProviderSettings: SocialProviderSettings?

    public init (
        domainPrefix: String? = nil,
        oAuthGrantType: OAuthGrantType? = nil,
        oAuthScopes: [OAuthScopesElement]? = nil,
        redirectSignInURIs: [String]? = nil,
        redirectSignOutURIs: [String]? = nil,
        socialProviderSettings: SocialProviderSettings? = nil
    )
    {
        self.domainPrefix = domainPrefix
        self.oAuthGrantType = oAuthGrantType
        self.oAuthScopes = oAuthScopes
        self.redirectSignInURIs = redirectSignInURIs
        self.redirectSignOutURIs = redirectSignOutURIs
        self.socialProviderSettings = socialProviderSettings
    }
}

extension UpdateBackendAuthOAuthConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateBackendAuthOAuthConfig(domainPrefix: \(String(describing: domainPrefix)), oAuthGrantType: \(String(describing: oAuthGrantType)), oAuthScopes: \(String(describing: oAuthScopes)), redirectSignInURIs: \(String(describing: redirectSignInURIs)), redirectSignOutURIs: \(String(describing: redirectSignOutURIs)), socialProviderSettings: \(String(describing: socialProviderSettings)))"}
}