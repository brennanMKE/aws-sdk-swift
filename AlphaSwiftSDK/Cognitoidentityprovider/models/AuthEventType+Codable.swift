// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AuthEventType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case challengeResponses = "ChallengeResponses"
        case creationDate = "CreationDate"
        case eventContextData = "EventContextData"
        case eventFeedback = "EventFeedback"
        case eventId = "EventId"
        case eventResponse = "EventResponse"
        case eventRisk = "EventRisk"
        case eventType = "EventType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let challengeResponses = challengeResponses {
            var challengeResponsesContainer = container.nestedUnkeyedContainer(forKey: .challengeResponses)
            for challengeresponselisttype0 in challengeResponses {
                try challengeResponsesContainer.encode(challengeresponselisttype0)
            }
        }
        if let creationDate = creationDate {
            try container.encode(creationDate.timeIntervalSince1970, forKey: .creationDate)
        }
        if let eventContextData = eventContextData {
            try container.encode(eventContextData, forKey: .eventContextData)
        }
        if let eventFeedback = eventFeedback {
            try container.encode(eventFeedback, forKey: .eventFeedback)
        }
        if let eventId = eventId {
            try container.encode(eventId, forKey: .eventId)
        }
        if let eventResponse = eventResponse {
            try container.encode(eventResponse.rawValue, forKey: .eventResponse)
        }
        if let eventRisk = eventRisk {
            try container.encode(eventRisk, forKey: .eventRisk)
        }
        if let eventType = eventType {
            try container.encode(eventType.rawValue, forKey: .eventType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventId)
        eventId = eventIdDecoded
        let eventTypeDecoded = try containerValues.decodeIfPresent(EventType.self, forKey: .eventType)
        eventType = eventTypeDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let eventResponseDecoded = try containerValues.decodeIfPresent(EventResponseType.self, forKey: .eventResponse)
        eventResponse = eventResponseDecoded
        let eventRiskDecoded = try containerValues.decodeIfPresent(EventRiskType.self, forKey: .eventRisk)
        eventRisk = eventRiskDecoded
        let challengeResponsesContainer = try containerValues.decodeIfPresent([ChallengeResponseType].self, forKey: .challengeResponses)
        var challengeResponsesDecoded0:[ChallengeResponseType]? = nil
        if let challengeResponsesContainer = challengeResponsesContainer {
            challengeResponsesDecoded0 = [ChallengeResponseType]()
            for structure0 in challengeResponsesContainer {
                challengeResponsesDecoded0?.append(structure0)
            }
        }
        challengeResponses = challengeResponsesDecoded0
        let eventContextDataDecoded = try containerValues.decodeIfPresent(EventContextDataType.self, forKey: .eventContextData)
        eventContextData = eventContextDataDecoded
        let eventFeedbackDecoded = try containerValues.decodeIfPresent(EventFeedbackType.self, forKey: .eventFeedback)
        eventFeedback = eventFeedbackDecoded
    }
}
