// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsJobAbortCriteria: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action
        case failureType
        case minNumberOfExecutedThings
        case thresholdPercentage
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action.rawValue, forKey: .action)
        }
        if let failureType = failureType {
            try encodeContainer.encode(failureType.rawValue, forKey: .failureType)
        }
        if let minNumberOfExecutedThings = minNumberOfExecutedThings {
            try encodeContainer.encode(minNumberOfExecutedThings, forKey: .minNumberOfExecutedThings)
        }
        if let thresholdPercentage = thresholdPercentage {
            try encodeContainer.encode(thresholdPercentage, forKey: .thresholdPercentage)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let failureTypeDecoded = try containerValues.decodeIfPresent(AwsJobAbortCriteriaFailureType.self, forKey: .failureType)
        failureType = failureTypeDecoded
        let actionDecoded = try containerValues.decodeIfPresent(AwsJobAbortCriteriaAbortAction.self, forKey: .action)
        action = actionDecoded
        let thresholdPercentageDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .thresholdPercentage)
        thresholdPercentage = thresholdPercentageDecoded
        let minNumberOfExecutedThingsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .minNumberOfExecutedThings)
        minNumberOfExecutedThings = minNumberOfExecutedThingsDecoded
    }
}