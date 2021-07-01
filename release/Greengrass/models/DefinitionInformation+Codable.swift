// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DefinitionInformation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationTimestamp = "CreationTimestamp"
        case id = "Id"
        case lastUpdatedTimestamp = "LastUpdatedTimestamp"
        case latestVersion = "LatestVersion"
        case latestVersionArn = "LatestVersionArn"
        case name = "Name"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let creationTimestamp = creationTimestamp {
            try encodeContainer.encode(creationTimestamp, forKey: .creationTimestamp)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let lastUpdatedTimestamp = lastUpdatedTimestamp {
            try encodeContainer.encode(lastUpdatedTimestamp, forKey: .lastUpdatedTimestamp)
        }
        if let latestVersion = latestVersion {
            try encodeContainer.encode(latestVersion, forKey: .latestVersion)
        }
        if let latestVersionArn = latestVersionArn {
            try encodeContainer.encode(latestVersionArn, forKey: .latestVersionArn)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let creationTimestampDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationTimestamp)
        creationTimestamp = creationTimestampDecoded
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let lastUpdatedTimestampDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastUpdatedTimestamp)
        lastUpdatedTimestamp = lastUpdatedTimestampDecoded
        let latestVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .latestVersion)
        latestVersion = latestVersionDecoded
        let latestVersionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .latestVersionArn)
        latestVersionArn = latestVersionArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, __string0) in tagsContainer {
                if let __string0 = __string0 {
                    tagsDecoded0?[key0] = __string0
                }
            }
        }
        tags = tagsDecoded0
    }
}