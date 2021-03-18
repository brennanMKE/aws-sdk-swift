// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AutoScalingPolicyUpdate: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case policyName = "PolicyName"
        case targetTrackingScalingPolicyConfiguration = "TargetTrackingScalingPolicyConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let policyName = policyName {
            try container.encode(policyName, forKey: .policyName)
        }
        if let targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfiguration {
            try container.encode(targetTrackingScalingPolicyConfiguration, forKey: .targetTrackingScalingPolicyConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policyNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .policyName)
        policyName = policyNameDecoded
        let targetTrackingScalingPolicyConfigurationDecoded = try containerValues.decodeIfPresent(AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.self, forKey: .targetTrackingScalingPolicyConfiguration)
        targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfigurationDecoded
    }
}