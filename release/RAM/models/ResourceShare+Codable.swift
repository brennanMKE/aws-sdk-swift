// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResourceShare: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowExternalPrincipals
        case creationTime
        case featureSet
        case lastUpdatedTime
        case name
        case owningAccountId
        case resourceShareArn
        case status
        case statusMessage
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allowExternalPrincipals = allowExternalPrincipals {
            try encodeContainer.encode(allowExternalPrincipals, forKey: .allowExternalPrincipals)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let featureSet = featureSet {
            try encodeContainer.encode(featureSet.rawValue, forKey: .featureSet)
        }
        if let lastUpdatedTime = lastUpdatedTime {
            try encodeContainer.encode(lastUpdatedTime.timeIntervalSince1970, forKey: .lastUpdatedTime)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let owningAccountId = owningAccountId {
            try encodeContainer.encode(owningAccountId, forKey: .owningAccountId)
        }
        if let resourceShareArn = resourceShareArn {
            try encodeContainer.encode(resourceShareArn, forKey: .resourceShareArn)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let statusMessage = statusMessage {
            try encodeContainer.encode(statusMessage, forKey: .statusMessage)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceShareArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceShareArn)
        resourceShareArn = resourceShareArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let owningAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .owningAccountId)
        owningAccountId = owningAccountIdDecoded
        let allowExternalPrincipalsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .allowExternalPrincipals)
        allowExternalPrincipals = allowExternalPrincipalsDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ResourceShareStatus.self, forKey: .status)
        status = statusDecoded
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastUpdatedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedTime)
        lastUpdatedTime = lastUpdatedTimeDecoded
        let featureSetDecoded = try containerValues.decodeIfPresent(ResourceShareFeatureSet.self, forKey: .featureSet)
        featureSet = featureSetDecoded
    }
}