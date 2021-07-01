// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ExecutionTimeFilter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case latestDate
        case oldestDate
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let latestDate = latestDate {
            try encodeContainer.encode(latestDate.timeIntervalSince1970, forKey: .latestDate)
        }
        if let oldestDate = oldestDate {
            try encodeContainer.encode(oldestDate.timeIntervalSince1970, forKey: .oldestDate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let oldestDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .oldestDate)
        oldestDate = oldestDateDecoded
        let latestDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .latestDate)
        latestDate = latestDateDecoded
    }
}