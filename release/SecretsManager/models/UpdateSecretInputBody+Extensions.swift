// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateSecretInputBody: Equatable {
    public let secretId: String?
    public let clientRequestToken: String?
    public let description: String?
    public let kmsKeyId: String?
    public let secretBinary: Data?
    public let secretString: String?
}

extension UpdateSecretInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case description = "Description"
        case kmsKeyId = "KmsKeyId"
        case secretBinary = "SecretBinary"
        case secretId = "SecretId"
        case secretString = "SecretString"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let secretIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretId)
        secretId = secretIdDecoded
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let secretBinaryDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .secretBinary)
        secretBinary = secretBinaryDecoded
        let secretStringDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretString)
        secretString = secretStringDecoded
    }
}