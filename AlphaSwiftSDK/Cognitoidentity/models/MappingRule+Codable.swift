// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension MappingRule: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case claim = "Claim"
        case matchType = "MatchType"
        case roleARN = "RoleARN"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let claim = claim {
            try container.encode(claim, forKey: .claim)
        }
        if let matchType = matchType {
            try container.encode(matchType.rawValue, forKey: .matchType)
        }
        if let roleARN = roleARN {
            try container.encode(roleARN, forKey: .roleARN)
        }
        if let value = value {
            try container.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let claimDecoded = try containerValues.decodeIfPresent(String.self, forKey: .claim)
        claim = claimDecoded
        let matchTypeDecoded = try containerValues.decodeIfPresent(MappingRuleMatchType.self, forKey: .matchType)
        matchType = matchTypeDecoded
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
        let roleARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleARN)
        roleARN = roleARNDecoded
    }
}
