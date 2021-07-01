// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AgentNetworkInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ipAddress
        case macAddress
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ipAddress = ipAddress {
            try encodeContainer.encode(ipAddress, forKey: .ipAddress)
        }
        if let macAddress = macAddress {
            try encodeContainer.encode(macAddress, forKey: .macAddress)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ipAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddress)
        ipAddress = ipAddressDecoded
        let macAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .macAddress)
        macAddress = macAddressDecoded
    }
}