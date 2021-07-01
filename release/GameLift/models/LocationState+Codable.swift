// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LocationState: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case location = "Location"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let locationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .location)
        location = locationDecoded
        let statusDecoded = try containerValues.decodeIfPresent(FleetStatus.self, forKey: .status)
        status = statusDecoded
    }
}