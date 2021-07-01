// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TimeRange: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
    }
}