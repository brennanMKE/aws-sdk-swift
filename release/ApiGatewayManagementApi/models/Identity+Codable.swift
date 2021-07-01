// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Identity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sourceIp = "sourceIp"
        case userAgent = "userAgent"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceIp = sourceIp {
            try encodeContainer.encode(sourceIp, forKey: .sourceIp)
        }
        if let userAgent = userAgent {
            try encodeContainer.encode(userAgent, forKey: .userAgent)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceIp)
        sourceIp = sourceIpDecoded
        let userAgentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userAgent)
        userAgent = userAgentDecoded
    }
}