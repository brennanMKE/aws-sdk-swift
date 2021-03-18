// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateAuthEventFeedbackInputBody: Equatable {
    public let userPoolId: String?
    public let username: String?
    public let eventId: String?
    public let feedbackToken: String?
    public let feedbackValue: FeedbackValueType?
}

extension UpdateAuthEventFeedbackInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case eventId = "EventId"
        case feedbackToken = "FeedbackToken"
        case feedbackValue = "FeedbackValue"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let eventIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventId)
        eventId = eventIdDecoded
        let feedbackTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .feedbackToken)
        feedbackToken = feedbackTokenDecoded
        let feedbackValueDecoded = try containerValues.decodeIfPresent(FeedbackValueType.self, forKey: .feedbackValue)
        feedbackValue = feedbackValueDecoded
    }
}