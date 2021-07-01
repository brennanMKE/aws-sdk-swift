// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SidewalkDeviceMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case batteryLevel = "BatteryLevel"
        case deviceState = "DeviceState"
        case event = "Event"
        case rssi = "Rssi"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let batteryLevel = batteryLevel {
            try encodeContainer.encode(batteryLevel.rawValue, forKey: .batteryLevel)
        }
        if let deviceState = deviceState {
            try encodeContainer.encode(deviceState.rawValue, forKey: .deviceState)
        }
        if let event = event {
            try encodeContainer.encode(event.rawValue, forKey: .event)
        }
        if let rssi = rssi {
            try encodeContainer.encode(rssi, forKey: .rssi)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let rssiDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .rssi)
        rssi = rssiDecoded
        let batteryLevelDecoded = try containerValues.decodeIfPresent(BatteryLevel.self, forKey: .batteryLevel)
        batteryLevel = batteryLevelDecoded
        let eventDecoded = try containerValues.decodeIfPresent(Event.self, forKey: .event)
        event = eventDecoded
        let deviceStateDecoded = try containerValues.decodeIfPresent(DeviceState.self, forKey: .deviceState)
        deviceState = deviceStateDecoded
    }
}