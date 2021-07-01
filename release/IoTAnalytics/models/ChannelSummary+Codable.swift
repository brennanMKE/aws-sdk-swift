// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ChannelSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case channelName
        case channelStorage
        case creationTime
        case lastMessageArrivalTime
        case lastUpdateTime
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let channelName = channelName {
            try encodeContainer.encode(channelName, forKey: .channelName)
        }
        if let channelStorage = channelStorage {
            try encodeContainer.encode(channelStorage, forKey: .channelStorage)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let lastMessageArrivalTime = lastMessageArrivalTime {
            try encodeContainer.encode(lastMessageArrivalTime.timeIntervalSince1970, forKey: .lastMessageArrivalTime)
        }
        if let lastUpdateTime = lastUpdateTime {
            try encodeContainer.encode(lastUpdateTime.timeIntervalSince1970, forKey: .lastUpdateTime)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .channelName)
        channelName = channelNameDecoded
        let channelStorageDecoded = try containerValues.decodeIfPresent(ChannelStorageSummary.self, forKey: .channelStorage)
        channelStorage = channelStorageDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ChannelStatus.self, forKey: .status)
        status = statusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastUpdateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdateTime)
        lastUpdateTime = lastUpdateTimeDecoded
        let lastMessageArrivalTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastMessageArrivalTime)
        lastMessageArrivalTime = lastMessageArrivalTimeDecoded
    }
}