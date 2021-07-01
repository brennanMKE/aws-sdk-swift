// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateWirelessGatewayTaskEntry: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case id = "Id"
        case loRaWAN = "LoRaWAN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let loRaWAN = loRaWAN {
            try encodeContainer.encode(loRaWAN, forKey: .loRaWAN)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let loRaWANDecoded = try containerValues.decodeIfPresent(LoRaWANUpdateGatewayTaskEntry.self, forKey: .loRaWAN)
        loRaWAN = loRaWANDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
    }
}