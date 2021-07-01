// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DynatraceConnectorProfileCredentials: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case apiToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let apiToken = apiToken {
            try encodeContainer.encode(apiToken, forKey: .apiToken)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let apiTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .apiToken)
        apiToken = apiTokenDecoded
    }
}