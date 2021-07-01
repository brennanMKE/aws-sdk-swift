// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ArtifactSourceType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sourceIdType = "SourceIdType"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceIdType = sourceIdType {
            try encodeContainer.encode(sourceIdType.rawValue, forKey: .sourceIdType)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceIdTypeDecoded = try containerValues.decodeIfPresent(ArtifactSourceIdType.self, forKey: .sourceIdType)
        sourceIdType = sourceIdTypeDecoded
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
    }
}