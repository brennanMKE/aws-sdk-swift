// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Instance: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case dnsName = "DnsName"
        case fleetArn = "FleetArn"
        case fleetId = "FleetId"
        case instanceId = "InstanceId"
        case ipAddress = "IpAddress"
        case location = "Location"
        case operatingSystem = "OperatingSystem"
        case status = "Status"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let dnsName = dnsName {
            try encodeContainer.encode(dnsName, forKey: .dnsName)
        }
        if let fleetArn = fleetArn {
            try encodeContainer.encode(fleetArn, forKey: .fleetArn)
        }
        if let fleetId = fleetId {
            try encodeContainer.encode(fleetId, forKey: .fleetId)
        }
        if let instanceId = instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let ipAddress = ipAddress {
            try encodeContainer.encode(ipAddress, forKey: .ipAddress)
        }
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
        if let operatingSystem = operatingSystem {
            try encodeContainer.encode(operatingSystem.rawValue, forKey: .operatingSystem)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetId)
        fleetId = fleetIdDecoded
        let fleetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetArn)
        fleetArn = fleetArnDecoded
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let ipAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddress)
        ipAddress = ipAddressDecoded
        let dnsNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dnsName)
        dnsName = dnsNameDecoded
        let operatingSystemDecoded = try containerValues.decodeIfPresent(OperatingSystem.self, forKey: .operatingSystem)
        operatingSystem = operatingSystemDecoded
        let typeDecoded = try containerValues.decodeIfPresent(EC2InstanceType.self, forKey: .type)
        type = typeDecoded
        let statusDecoded = try containerValues.decodeIfPresent(InstanceStatus.self, forKey: .status)
        status = statusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let locationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .location)
        location = locationDecoded
    }
}