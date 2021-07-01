// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetEncryptionConfigOutputResponseBody: Equatable {
    public let encryptionConfig: EncryptionConfig?
}

extension GetEncryptionConfigOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case encryptionConfig = "EncryptionConfig"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let encryptionConfigDecoded = try containerValues.decodeIfPresent(EncryptionConfig.self, forKey: .encryptionConfig)
        encryptionConfig = encryptionConfigDecoded
    }
}