// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DetachObjectOutputResponseBody: Equatable {
    public let detachedObjectIdentifier: String?
}

extension DetachObjectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case detachedObjectIdentifier = "DetachedObjectIdentifier"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let detachedObjectIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .detachedObjectIdentifier)
        detachedObjectIdentifier = detachedObjectIdentifierDecoded
    }
}