// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetGroupInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case groupName = "GroupName"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let groupName = groupName {
            try container.encode(groupName, forKey: .groupName)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
    }
}
