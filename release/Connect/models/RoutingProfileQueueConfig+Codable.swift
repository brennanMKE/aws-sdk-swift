// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RoutingProfileQueueConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case delay = "Delay"
        case priority = "Priority"
        case queueReference = "QueueReference"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if delay != 0 {
            try encodeContainer.encode(delay, forKey: .delay)
        }
        if priority != 0 {
            try encodeContainer.encode(priority, forKey: .priority)
        }
        if let queueReference = queueReference {
            try encodeContainer.encode(queueReference, forKey: .queueReference)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queueReferenceDecoded = try containerValues.decodeIfPresent(RoutingProfileQueueReference.self, forKey: .queueReference)
        queueReference = queueReferenceDecoded
        let priorityDecoded = try containerValues.decode(Int.self, forKey: .priority)
        priority = priorityDecoded
        let delayDecoded = try containerValues.decode(Int.self, forKey: .delay)
        delay = delayDecoded
    }
}