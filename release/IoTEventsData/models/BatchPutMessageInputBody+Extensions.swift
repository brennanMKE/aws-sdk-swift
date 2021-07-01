// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchPutMessageInputBody: Equatable {
    public let messages: [Message]?
}

extension BatchPutMessageInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case messages
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messagesContainer = try containerValues.decodeIfPresent([Message?].self, forKey: .messages)
        var messagesDecoded0:[Message]? = nil
        if let messagesContainer = messagesContainer {
            messagesDecoded0 = [Message]()
            for structure0 in messagesContainer {
                if let structure0 = structure0 {
                    messagesDecoded0?.append(structure0)
                }
            }
        }
        messages = messagesDecoded0
    }
}