// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3Logs: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case s3BucketName
        case s3KeyPrefix
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let s3BucketName = s3BucketName {
            try encodeContainer.encode(s3BucketName, forKey: .s3BucketName)
        }
        if let s3KeyPrefix = s3KeyPrefix {
            try encodeContainer.encode(s3KeyPrefix, forKey: .s3KeyPrefix)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3BucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3BucketName)
        s3BucketName = s3BucketNameDecoded
        let s3KeyPrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3KeyPrefix)
        s3KeyPrefix = s3KeyPrefixDecoded
    }
}