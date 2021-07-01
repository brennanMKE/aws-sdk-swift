// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code>
///          request.</p>
public struct GetOpenIdTokenForDeveloperIdentityOutputResponse: Equatable {
    /// <p>A unique identifier in the format REGION:GUID.</p>
    public let identityId: String?
    /// <p>An OpenID token.</p>
    public let token: String?

    public init (
        identityId: String? = nil,
        token: String? = nil
    )
    {
        self.identityId = identityId
        self.token = token
    }
}

extension GetOpenIdTokenForDeveloperIdentityOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetOpenIdTokenForDeveloperIdentityOutputResponse(identityId: \(String(describing: identityId)), token: \(String(describing: token)))"}
}