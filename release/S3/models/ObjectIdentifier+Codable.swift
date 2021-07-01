// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ObjectIdentifier: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case versionId = "VersionId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let key = key {
            try container.encode(key, forKey: Key("key"))
        }
        if let versionId = versionId {
            try container.encode(versionId, forKey: Key("versionId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let versionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .versionId)
        versionId = versionIdDecoded
    }
}