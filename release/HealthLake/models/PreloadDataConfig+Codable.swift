// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PreloadDataConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case preloadDataType = "PreloadDataType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let preloadDataType = preloadDataType {
            try encodeContainer.encode(preloadDataType.rawValue, forKey: .preloadDataType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let preloadDataTypeDecoded = try containerValues.decodeIfPresent(PreloadDataType.self, forKey: .preloadDataType)
        preloadDataType = preloadDataTypeDecoded
    }
}