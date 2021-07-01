// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Account: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case email = "Email"
        case id = "Id"
        case joinedMethod = "JoinedMethod"
        case joinedTimestamp = "JoinedTimestamp"
        case name = "Name"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let email = email {
            try encodeContainer.encode(email, forKey: .email)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let joinedMethod = joinedMethod {
            try encodeContainer.encode(joinedMethod.rawValue, forKey: .joinedMethod)
        }
        if let joinedTimestamp = joinedTimestamp {
            try encodeContainer.encode(joinedTimestamp.timeIntervalSince1970, forKey: .joinedTimestamp)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let emailDecoded = try containerValues.decodeIfPresent(String.self, forKey: .email)
        email = emailDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(AccountStatus.self, forKey: .status)
        status = statusDecoded
        let joinedMethodDecoded = try containerValues.decodeIfPresent(AccountJoinedMethod.self, forKey: .joinedMethod)
        joinedMethod = joinedMethodDecoded
        let joinedTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .joinedTimestamp)
        joinedTimestamp = joinedTimestampDecoded
    }
}