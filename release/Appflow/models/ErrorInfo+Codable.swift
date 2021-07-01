// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ErrorInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case executionMessage
        case putFailuresCount
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let executionMessage = executionMessage {
            try encodeContainer.encode(executionMessage, forKey: .executionMessage)
        }
        if let putFailuresCount = putFailuresCount {
            try encodeContainer.encode(putFailuresCount, forKey: .putFailuresCount)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let putFailuresCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .putFailuresCount)
        putFailuresCount = putFailuresCountDecoded
        let executionMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionMessage)
        executionMessage = executionMessageDecoded
    }
}