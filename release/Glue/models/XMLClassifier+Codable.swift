// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension XMLClassifier: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case classification = "Classification"
        case creationTime = "CreationTime"
        case lastUpdated = "LastUpdated"
        case name = "Name"
        case rowTag = "RowTag"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let classification = classification {
            try encodeContainer.encode(classification, forKey: .classification)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let lastUpdated = lastUpdated {
            try encodeContainer.encode(lastUpdated.timeIntervalSince1970, forKey: .lastUpdated)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let rowTag = rowTag {
            try encodeContainer.encode(rowTag, forKey: .rowTag)
        }
        if version != 0 {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let classificationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .classification)
        classification = classificationDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastUpdatedDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdated)
        lastUpdated = lastUpdatedDecoded
        let versionDecoded = try containerValues.decode(Int.self, forKey: .version)
        version = versionDecoded
        let rowTagDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rowTag)
        rowTag = rowTagDecoded
    }
}