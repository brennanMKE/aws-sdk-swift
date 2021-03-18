// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>The type used for enabling SMS MFA at the user level. Phone numbers don't need to be verified
             to be used for SMS MFA. If an MFA type is enabled for a user, the user will be prompted for MFA during all sign in attempts,
             unless device tracking is turned on and the device has been trusted. If you would like MFA to be applied selectively based on the assessed risk level of sign in attempts,
             disable MFA for users and turn on Adaptive Authentication for the user pool.</p>
 */
public struct SMSMfaSettingsType: Equatable {
    /**
     <p>Specifies whether SMS text message MFA is enabled. If an MFA type is enabled for a user,
                 the user will be prompted for MFA during all sign in attempts, unless device tracking is turned on and the device has been trusted.</p>
     */
    public let enabled: Bool
    /// <p>Specifies whether SMS is the preferred MFA method.</p>
    public let preferredMfa: Bool

    public init (
        enabled: Bool = false,
        preferredMfa: Bool = false
    )
    {
        self.enabled = enabled
        self.preferredMfa = preferredMfa
    }
}
