// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PciId: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deviceId = "DeviceId"
        case subsystemId = "SubsystemId"
        case subsystemVendorId = "SubsystemVendorId"
        case vendorId = "VendorId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let deviceId = deviceId {
            try container.encode(deviceId, forKey: Key("DeviceId"))
        }
        if let subsystemId = subsystemId {
            try container.encode(subsystemId, forKey: Key("SubsystemId"))
        }
        if let subsystemVendorId = subsystemVendorId {
            try container.encode(subsystemVendorId, forKey: Key("SubsystemVendorId"))
        }
        if let vendorId = vendorId {
            try container.encode(vendorId, forKey: Key("VendorId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceId)
        deviceId = deviceIdDecoded
        let vendorIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vendorId)
        vendorId = vendorIdDecoded
        let subsystemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subsystemId)
        subsystemId = subsystemIdDecoded
        let subsystemVendorIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subsystemVendorId)
        subsystemVendorId = subsystemVendorIdDecoded
    }
}