// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ProvisionedThroughputOverride: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case readCapacityUnits = "ReadCapacityUnits"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let readCapacityUnits = readCapacityUnits {
            try container.encode(readCapacityUnits, forKey: .readCapacityUnits)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let readCapacityUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .readCapacityUnits)
        readCapacityUnits = readCapacityUnitsDecoded
    }
}
