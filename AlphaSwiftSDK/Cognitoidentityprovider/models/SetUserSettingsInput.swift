// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to set user settings.</p>
public struct SetUserSettingsInput: Equatable {
    /// <p>The access token for the set user settings request.</p>
    public let accessToken: String?
    /**
     <p>You can use this parameter only to set an SMS configuration that uses SMS for
                 delivery.</p>
     */
    public let mFAOptions: [MFAOptionType]?

    public init (
        accessToken: String? = nil,
        mFAOptions: [MFAOptionType]? = nil
    )
    {
        self.accessToken = accessToken
        self.mFAOptions = mFAOptions
    }
}
