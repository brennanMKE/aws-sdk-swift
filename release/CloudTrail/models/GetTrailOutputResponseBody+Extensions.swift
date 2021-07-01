// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetTrailOutputResponseBody: Equatable {
    public let trail: Trail?
}

extension GetTrailOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case trail = "Trail"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trailDecoded = try containerValues.decodeIfPresent(Trail.self, forKey: .trail)
        trail = trailDecoded
    }
}