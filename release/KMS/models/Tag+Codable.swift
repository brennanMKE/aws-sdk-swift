// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Tag: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case tagKey = "TagKey"
        case tagValue = "TagValue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let tagKey = tagKey {
            try encodeContainer.encode(tagKey, forKey: .tagKey)
        }
        if let tagValue = tagValue {
            try encodeContainer.encode(tagValue, forKey: .tagValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tagKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tagKey)
        tagKey = tagKeyDecoded
        let tagValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tagValue)
        tagValue = tagValueDecoded
    }
}