// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateKeyDescriptionInputBody: Equatable {
    public let keyId: String?
    public let description: String?
}

extension UpdateKeyDescriptionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case keyId = "KeyId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
    }
}