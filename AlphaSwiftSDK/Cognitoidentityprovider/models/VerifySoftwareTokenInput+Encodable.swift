// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension VerifySoftwareTokenInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case friendlyDeviceName = "FriendlyDeviceName"
        case session = "Session"
        case userCode = "UserCode"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try container.encode(accessToken, forKey: .accessToken)
        }
        if let friendlyDeviceName = friendlyDeviceName {
            try container.encode(friendlyDeviceName, forKey: .friendlyDeviceName)
        }
        if let session = session {
            try container.encode(session, forKey: .session)
        }
        if let userCode = userCode {
            try container.encode(userCode, forKey: .userCode)
        }
    }
}
