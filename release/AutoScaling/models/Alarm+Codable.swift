// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Alarm: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case alarmARN = "AlarmARN"
        case alarmName = "AlarmName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let alarmARN = alarmARN {
            try container.encode(alarmARN, forKey: Key("AlarmARN"))
        }
        if let alarmName = alarmName {
            try container.encode(alarmName, forKey: Key("AlarmName"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let alarmNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmName)
        alarmName = alarmNameDecoded
        let alarmARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmARN)
        alarmARN = alarmARNDecoded
    }
}