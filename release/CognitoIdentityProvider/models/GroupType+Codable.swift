// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GroupType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationDate = "CreationDate"
        case description = "Description"
        case groupName = "GroupName"
        case lastModifiedDate = "LastModifiedDate"
        case precedence = "Precedence"
        case roleArn = "RoleArn"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationDate = creationDate {
            try encodeContainer.encode(creationDate.timeIntervalSince1970, forKey: .creationDate)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let groupName = groupName {
            try encodeContainer.encode(groupName, forKey: .groupName)
        }
        if let lastModifiedDate = lastModifiedDate {
            try encodeContainer.encode(lastModifiedDate.timeIntervalSince1970, forKey: .lastModifiedDate)
        }
        if let precedence = precedence {
            try encodeContainer.encode(precedence, forKey: .precedence)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let precedenceDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .precedence)
        precedence = precedenceDecoded
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
    }
}