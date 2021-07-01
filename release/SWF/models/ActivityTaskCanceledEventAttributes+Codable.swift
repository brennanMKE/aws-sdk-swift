// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ActivityTaskCanceledEventAttributes: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case details
        case latestCancelRequestedEventId
        case scheduledEventId
        case startedEventId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let details = details {
            try encodeContainer.encode(details, forKey: .details)
        }
        if latestCancelRequestedEventId != 0 {
            try encodeContainer.encode(latestCancelRequestedEventId, forKey: .latestCancelRequestedEventId)
        }
        if scheduledEventId != 0 {
            try encodeContainer.encode(scheduledEventId, forKey: .scheduledEventId)
        }
        if startedEventId != 0 {
            try encodeContainer.encode(startedEventId, forKey: .startedEventId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let detailsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .details)
        details = detailsDecoded
        let scheduledEventIdDecoded = try containerValues.decode(Int.self, forKey: .scheduledEventId)
        scheduledEventId = scheduledEventIdDecoded
        let startedEventIdDecoded = try containerValues.decode(Int.self, forKey: .startedEventId)
        startedEventId = startedEventIdDecoded
        let latestCancelRequestedEventIdDecoded = try containerValues.decode(Int.self, forKey: .latestCancelRequestedEventId)
        latestCancelRequestedEventId = latestCancelRequestedEventIdDecoded
    }
}