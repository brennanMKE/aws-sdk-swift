// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration for the user pool's device tracking.</p>
public struct DeviceConfigurationType: Equatable {
    /**
     <p>Indicates whether a challenge is required on a new device. Only applicable to a new
                 device.</p>
     */
    public let challengeRequiredOnNewDevice: Bool
    /// <p>If true, a device is only remembered on user prompt.</p>
    public let deviceOnlyRememberedOnUserPrompt: Bool

    public init (
        challengeRequiredOnNewDevice: Bool = false,
        deviceOnlyRememberedOnUserPrompt: Bool = false
    )
    {
        self.challengeRequiredOnNewDevice = challengeRequiredOnNewDevice
        self.deviceOnlyRememberedOnUserPrompt = deviceOnlyRememberedOnUserPrompt
    }
}
