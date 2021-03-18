// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The data type for TokenValidityUnits that specifics the time measurements for token validity.</p>
public struct TokenValidityUnitsType: Equatable {
    /// <p> A time unit in “seconds”, “minutes”, “hours” or “days” for the value in AccessTokenValidity, defaults to hours.</p>
    public let accessToken: TimeUnitsType?
    /// <p>A time unit in “seconds”, “minutes”, “hours” or “days” for the value in IdTokenValidity, defaults to hours.</p>
    public let idToken: TimeUnitsType?
    /// <p>A time unit in “seconds”, “minutes”, “hours” or “days” for the value in RefreshTokenValidity, defaults to days.</p>
    public let refreshToken: TimeUnitsType?

    public init (
        accessToken: TimeUnitsType? = nil,
        idToken: TimeUnitsType? = nil,
        refreshToken: TimeUnitsType? = nil
    )
    {
        self.accessToken = accessToken
        self.idToken = idToken
        self.refreshToken = refreshToken
    }
}
