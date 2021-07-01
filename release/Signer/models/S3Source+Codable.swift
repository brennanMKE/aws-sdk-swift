// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3Source: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucketName
        case key
        case version
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucketName = bucketName {
            try encodeContainer.encode(bucketName, forKey: .bucketName)
        }
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucketName)
        bucketName = bucketNameDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
    }
}