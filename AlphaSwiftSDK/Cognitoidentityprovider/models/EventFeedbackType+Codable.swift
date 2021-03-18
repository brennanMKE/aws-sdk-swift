// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension EventFeedbackType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case feedbackDate = "FeedbackDate"
        case feedbackValue = "FeedbackValue"
        case provider = "Provider"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let feedbackDate = feedbackDate {
            try container.encode(feedbackDate.timeIntervalSince1970, forKey: .feedbackDate)
        }
        if let feedbackValue = feedbackValue {
            try container.encode(feedbackValue.rawValue, forKey: .feedbackValue)
        }
        if let provider = provider {
            try container.encode(provider, forKey: .provider)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let feedbackValueDecoded = try containerValues.decodeIfPresent(FeedbackValueType.self, forKey: .feedbackValue)
        feedbackValue = feedbackValueDecoded
        let providerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provider)
        provider = providerDecoded
        let feedbackDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .feedbackDate)
        feedbackDate = feedbackDateDecoded
    }
}
