// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InternalServerErrorExceptionBody: Equatable {
    public let invalidParameter: String?
    public let message: String?
}

extension InternalServerErrorExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case invalidParameter = "invalidParameter"
        case message = "message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let invalidParameterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .invalidParameter)
        invalidParameter = invalidParameterDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}