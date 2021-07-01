// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DynamoDBTarget: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case path = "Path"
        case scanAll
        case scanRate
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let path = path {
            try encodeContainer.encode(path, forKey: .path)
        }
        if let scanAll = scanAll {
            try encodeContainer.encode(scanAll, forKey: .scanAll)
        }
        if let scanRate = scanRate {
            try encodeContainer.encode(scanRate, forKey: .scanRate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pathDecoded = try containerValues.decodeIfPresent(String.self, forKey: .path)
        path = pathDecoded
        let scanAllDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .scanAll)
        scanAll = scanAllDecoded
        let scanRateDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .scanRate)
        scanRate = scanRateDecoded
    }
}