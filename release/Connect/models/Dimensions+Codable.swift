// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Dimensions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case channel = "Channel"
        case queue = "Queue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let channel = channel {
            try encodeContainer.encode(channel.rawValue, forKey: .channel)
        }
        if let queue = queue {
            try encodeContainer.encode(queue, forKey: .queue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queueDecoded = try containerValues.decodeIfPresent(QueueReference.self, forKey: .queue)
        queue = queueDecoded
        let channelDecoded = try containerValues.decodeIfPresent(Channel.self, forKey: .channel)
        channel = channelDecoded
    }
}