// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ServerSideEncryption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encryptionType = "encryptionType"
        case kmsMasterKeyId = "kmsMasterKeyId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encryptionType = encryptionType {
            try encodeContainer.encode(encryptionType.rawValue, forKey: .encryptionType)
        }
        if let kmsMasterKeyId = kmsMasterKeyId {
            try encodeContainer.encode(kmsMasterKeyId, forKey: .kmsMasterKeyId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let encryptionTypeDecoded = try containerValues.decodeIfPresent(EncryptionType.self, forKey: .encryptionType)
        encryptionType = encryptionTypeDecoded
        let kmsMasterKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsMasterKeyId)
        kmsMasterKeyId = kmsMasterKeyIdDecoded
    }
}