// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminSetUserMFAPreferenceInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case sMSMfaSettings = "SMSMfaSettings"
        case softwareTokenMfaSettings = "SoftwareTokenMfaSettings"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let sMSMfaSettings = sMSMfaSettings {
            try container.encode(sMSMfaSettings, forKey: .sMSMfaSettings)
        }
        if let softwareTokenMfaSettings = softwareTokenMfaSettings {
            try container.encode(softwareTokenMfaSettings, forKey: .softwareTokenMfaSettings)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
    }
}
