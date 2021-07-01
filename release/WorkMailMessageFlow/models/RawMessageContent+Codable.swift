// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RawMessageContent: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case s3Reference
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let s3Reference = s3Reference {
            try encodeContainer.encode(s3Reference, forKey: .s3Reference)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3ReferenceDecoded = try containerValues.decodeIfPresent(S3Reference.self, forKey: .s3Reference)
        s3Reference = s3ReferenceDecoded
    }
}