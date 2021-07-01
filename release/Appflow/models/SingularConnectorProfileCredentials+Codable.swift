// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SingularConnectorProfileCredentials: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case apiKey
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let apiKey = apiKey {
            try encodeContainer.encode(apiKey, forKey: .apiKey)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let apiKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .apiKey)
        apiKey = apiKeyDecoded
    }
}