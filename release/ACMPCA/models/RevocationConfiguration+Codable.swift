// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RevocationConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case crlConfiguration = "CrlConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let crlConfiguration = crlConfiguration {
            try encodeContainer.encode(crlConfiguration, forKey: .crlConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let crlConfigurationDecoded = try containerValues.decodeIfPresent(CrlConfiguration.self, forKey: .crlConfiguration)
        crlConfiguration = crlConfigurationDecoded
    }
}