// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ClearTimerAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case timerName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let timerName = timerName {
            try encodeContainer.encode(timerName, forKey: .timerName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let timerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .timerName)
        timerName = timerNameDecoded
    }
}