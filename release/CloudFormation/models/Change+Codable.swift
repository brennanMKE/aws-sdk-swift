// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Change: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceChange = "ResourceChange"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let resourceChange = resourceChange {
            try container.encode(resourceChange, forKey: Key("ResourceChange"))
        }
        if let type = type {
            try container.encode(type, forKey: Key("Type"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(ChangeType.self, forKey: .type)
        type = typeDecoded
        let resourceChangeDecoded = try containerValues.decodeIfPresent(ResourceChange.self, forKey: .resourceChange)
        resourceChange = resourceChangeDecoded
    }
}