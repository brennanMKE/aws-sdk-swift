// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ServiceLimitExceededBody: Equatable {
    public let limit: ServiceLimit?
    public let message: String?
}

extension ServiceLimitExceededBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let limitDecoded = try containerValues.decodeIfPresent(ServiceLimit.self, forKey: .limit)
        limit = limitDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}