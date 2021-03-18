// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension EventRiskType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case compromisedCredentialsDetected = "CompromisedCredentialsDetected"
        case riskDecision = "RiskDecision"
        case riskLevel = "RiskLevel"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let compromisedCredentialsDetected = compromisedCredentialsDetected {
            try container.encode(compromisedCredentialsDetected, forKey: .compromisedCredentialsDetected)
        }
        if let riskDecision = riskDecision {
            try container.encode(riskDecision.rawValue, forKey: .riskDecision)
        }
        if let riskLevel = riskLevel {
            try container.encode(riskLevel.rawValue, forKey: .riskLevel)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let riskDecisionDecoded = try containerValues.decodeIfPresent(RiskDecisionType.self, forKey: .riskDecision)
        riskDecision = riskDecisionDecoded
        let riskLevelDecoded = try containerValues.decodeIfPresent(RiskLevelType.self, forKey: .riskLevel)
        riskLevel = riskLevelDecoded
        let compromisedCredentialsDetectedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .compromisedCredentialsDetected)
        compromisedCredentialsDetected = compromisedCredentialsDetectedDecoded
    }
}
