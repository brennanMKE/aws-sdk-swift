// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension Endpoint: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case address = "Address"
        case cachePeriodInMinutes = "CachePeriodInMinutes"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let address = address {
            try container.encode(address, forKey: .address)
        }
        if cachePeriodInMinutes != 0 {
            try container.encode(cachePeriodInMinutes, forKey: .cachePeriodInMinutes)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let addressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .address)
        address = addressDecoded
        let cachePeriodInMinutesDecoded = try containerValues.decode(Int.self, forKey: .cachePeriodInMinutes)
        cachePeriodInMinutes = cachePeriodInMinutesDecoded
    }
}
