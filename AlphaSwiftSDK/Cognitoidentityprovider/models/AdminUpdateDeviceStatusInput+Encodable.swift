// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminUpdateDeviceStatusInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case deviceKey = "DeviceKey"
        case deviceRememberedStatus = "DeviceRememberedStatus"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let deviceKey = deviceKey {
            try container.encode(deviceKey, forKey: .deviceKey)
        }
        if let deviceRememberedStatus = deviceRememberedStatus {
            try container.encode(deviceRememberedStatus.rawValue, forKey: .deviceRememberedStatus)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
    }
}