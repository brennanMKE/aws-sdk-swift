// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The authentication result.</p>
public struct AuthenticationResultType: Equatable {
    /// <p>The access token.</p>
    public let accessToken: String?
    /// <p>The expiration period of the authentication result in seconds.</p>
    public let expiresIn: Int
    /// <p>The ID token.</p>
    public let idToken: String?
    /// <p>The new device metadata from an authentication result.</p>
    public let newDeviceMetadata: NewDeviceMetadataType?
    /// <p>The refresh token.</p>
    public let refreshToken: String?
    /// <p>The token type.</p>
    public let tokenType: String?

    public init (
        accessToken: String? = nil,
        expiresIn: Int = 0,
        idToken: String? = nil,
        newDeviceMetadata: NewDeviceMetadataType? = nil,
        refreshToken: String? = nil,
        tokenType: String? = nil
    )
    {
        self.accessToken = accessToken
        self.expiresIn = expiresIn
        self.idToken = idToken
        self.newDeviceMetadata = newDeviceMetadata
        self.refreshToken = refreshToken
        self.tokenType = tokenType
    }
}
