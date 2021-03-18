// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct InvalidZipFileExceptionBody: Equatable {
    public let type: String?
    public let message: String?
}

extension InvalidZipFileExceptionBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case message = "Message"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}
