// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SecurityGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case groupId = "groupId"
        case groupName = "groupName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let groupId = groupId {
            try encodeContainer.encode(groupId, forKey: .groupId)
        }
        if let groupName = groupName {
            try encodeContainer.encode(groupName, forKey: .groupName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupId)
        groupId = groupIdDecoded
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
    }
}