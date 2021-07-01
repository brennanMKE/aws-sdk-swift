// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TimelineEvent: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case eventData
        case eventId
        case eventTime
        case eventType
        case eventUpdatedTime
        case incidentRecordArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventData = eventData {
            try encodeContainer.encode(eventData, forKey: .eventData)
        }
        if let eventId = eventId {
            try encodeContainer.encode(eventId, forKey: .eventId)
        }
        if let eventTime = eventTime {
            try encodeContainer.encode(eventTime.timeIntervalSince1970, forKey: .eventTime)
        }
        if let eventType = eventType {
            try encodeContainer.encode(eventType, forKey: .eventType)
        }
        if let eventUpdatedTime = eventUpdatedTime {
            try encodeContainer.encode(eventUpdatedTime.timeIntervalSince1970, forKey: .eventUpdatedTime)
        }
        if let incidentRecordArn = incidentRecordArn {
            try encodeContainer.encode(incidentRecordArn, forKey: .incidentRecordArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let incidentRecordArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .incidentRecordArn)
        incidentRecordArn = incidentRecordArnDecoded
        let eventIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventId)
        eventId = eventIdDecoded
        let eventTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .eventTime)
        eventTime = eventTimeDecoded
        let eventUpdatedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .eventUpdatedTime)
        eventUpdatedTime = eventUpdatedTimeDecoded
        let eventTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventType)
        eventType = eventTypeDecoded
        let eventDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventData)
        eventData = eventDataDecoded
    }
}