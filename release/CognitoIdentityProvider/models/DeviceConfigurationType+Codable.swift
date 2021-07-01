// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeviceConfigurationType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case challengeRequiredOnNewDevice = "ChallengeRequiredOnNewDevice"
        case deviceOnlyRememberedOnUserPrompt = "DeviceOnlyRememberedOnUserPrompt"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if challengeRequiredOnNewDevice != false {
            try encodeContainer.encode(challengeRequiredOnNewDevice, forKey: .challengeRequiredOnNewDevice)
        }
        if deviceOnlyRememberedOnUserPrompt != false {
            try encodeContainer.encode(deviceOnlyRememberedOnUserPrompt, forKey: .deviceOnlyRememberedOnUserPrompt)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let challengeRequiredOnNewDeviceDecoded = try containerValues.decode(Bool.self, forKey: .challengeRequiredOnNewDevice)
        challengeRequiredOnNewDevice = challengeRequiredOnNewDeviceDecoded
        let deviceOnlyRememberedOnUserPromptDecoded = try containerValues.decode(Bool.self, forKey: .deviceOnlyRememberedOnUserPrompt)
        deviceOnlyRememberedOnUserPrompt = deviceOnlyRememberedOnUserPromptDecoded
    }
}