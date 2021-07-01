// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UnsupportedAvailabilityZoneBody: Equatable {
    public let errorCode: String?
    public let message: String?
}

extension UnsupportedAvailabilityZoneBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case errorCode = "ErrorCode"
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .errorCode)
        errorCode = errorCodeDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}