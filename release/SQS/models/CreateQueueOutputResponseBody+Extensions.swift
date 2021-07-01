// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateQueueOutputResponseBody: Equatable {
    public let queueUrl: String?
}

extension CreateQueueOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("CreateQueueResult"))
        let queueUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queueUrl)
        queueUrl = queueUrlDecoded
    }
}