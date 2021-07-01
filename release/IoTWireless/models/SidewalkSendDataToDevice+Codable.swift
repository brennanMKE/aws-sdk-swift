// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SidewalkSendDataToDevice: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case messageType = "MessageType"
        case seq = "Seq"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let messageType = messageType {
            try encodeContainer.encode(messageType.rawValue, forKey: .messageType)
        }
        if let seq = seq {
            try encodeContainer.encode(seq, forKey: .seq)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let seqDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .seq)
        seq = seqDecoded
        let messageTypeDecoded = try containerValues.decodeIfPresent(MessageType.self, forKey: .messageType)
        messageType = messageTypeDecoded
    }
}