// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SetUserMFAPreferenceInput: Equatable {
    /// <p>The access token for the user.</p>
    public let accessToken: String?
    /// <p>The SMS text message multi-factor authentication (MFA) settings.</p>
    public let sMSMfaSettings: SMSMfaSettingsType?
    /// <p>The time-based one-time password software token MFA settings.</p>
    public let softwareTokenMfaSettings: SoftwareTokenMfaSettingsType?

    public init (
        accessToken: String? = nil,
        sMSMfaSettings: SMSMfaSettingsType? = nil,
        softwareTokenMfaSettings: SoftwareTokenMfaSettingsType? = nil
    )
    {
        self.accessToken = accessToken
        self.sMSMfaSettings = sMSMfaSettings
        self.softwareTokenMfaSettings = softwareTokenMfaSettings
    }
}
