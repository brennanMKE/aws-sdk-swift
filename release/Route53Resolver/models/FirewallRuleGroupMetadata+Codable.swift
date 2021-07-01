// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FirewallRuleGroupMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creatorRequestId = "CreatorRequestId"
        case id = "Id"
        case name = "Name"
        case ownerId = "OwnerId"
        case shareStatus = "ShareStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let creatorRequestId = creatorRequestId {
            try encodeContainer.encode(creatorRequestId, forKey: .creatorRequestId)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let ownerId = ownerId {
            try encodeContainer.encode(ownerId, forKey: .ownerId)
        }
        if let shareStatus = shareStatus {
            try encodeContainer.encode(shareStatus.rawValue, forKey: .shareStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let ownerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ownerId)
        ownerId = ownerIdDecoded
        let creatorRequestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creatorRequestId)
        creatorRequestId = creatorRequestIdDecoded
        let shareStatusDecoded = try containerValues.decodeIfPresent(ShareStatus.self, forKey: .shareStatus)
        shareStatus = shareStatusDecoded
    }
}