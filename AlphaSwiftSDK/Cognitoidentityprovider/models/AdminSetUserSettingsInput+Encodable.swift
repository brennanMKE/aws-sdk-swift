// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminSetUserSettingsInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case mFAOptions = "MFAOptions"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let mFAOptions = mFAOptions {
            var mFAOptionsContainer = container.nestedUnkeyedContainer(forKey: .mFAOptions)
            for mfaoptionlisttype0 in mFAOptions {
                try mFAOptionsContainer.encode(mfaoptionlisttype0)
            }
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
    }
}