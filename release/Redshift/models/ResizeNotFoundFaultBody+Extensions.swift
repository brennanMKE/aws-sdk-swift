// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResizeNotFoundFaultBody: Equatable {
    public let message: String?
}

extension ResizeNotFoundFaultBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}