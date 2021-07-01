// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NetworkFirewallMissingFirewallViolation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case targetViolationReason = "TargetViolationReason"
        case vPC = "VPC"
        case violationTarget = "ViolationTarget"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZone = availabilityZone {
            try encodeContainer.encode(availabilityZone, forKey: .availabilityZone)
        }
        if let targetViolationReason = targetViolationReason {
            try encodeContainer.encode(targetViolationReason, forKey: .targetViolationReason)
        }
        if let vPC = vPC {
            try encodeContainer.encode(vPC, forKey: .vPC)
        }
        if let violationTarget = violationTarget {
            try encodeContainer.encode(violationTarget, forKey: .violationTarget)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let violationTargetDecoded = try containerValues.decodeIfPresent(String.self, forKey: .violationTarget)
        violationTarget = violationTargetDecoded
        let vPCDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vPC)
        vPC = vPCDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
        let targetViolationReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetViolationReason)
        targetViolationReason = targetViolationReasonDecoded
    }
}