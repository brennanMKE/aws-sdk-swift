// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension SetUserMFAPreferenceInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case sMSMfaSettings = "SMSMfaSettings"
        case softwareTokenMfaSettings = "SoftwareTokenMfaSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try container.encode(accessToken, forKey: .accessToken)
        }
        if let sMSMfaSettings = sMSMfaSettings {
            try container.encode(sMSMfaSettings, forKey: .sMSMfaSettings)
        }
        if let softwareTokenMfaSettings = softwareTokenMfaSettings {
            try container.encode(softwareTokenMfaSettings, forKey: .softwareTokenMfaSettings)
        }
    }
}
