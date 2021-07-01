// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateApiKeyInputBody: Equatable {
    public let description: String?
    public let expires: Int
}

extension UpdateApiKeyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description
        case expires
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let expiresDecoded = try containerValues.decode(Int.self, forKey: .expires)
        expires = expiresDecoded
    }
}