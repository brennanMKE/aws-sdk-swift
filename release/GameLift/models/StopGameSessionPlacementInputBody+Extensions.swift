// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopGameSessionPlacementInputBody: Equatable {
    public let placementId: String?
}

extension StopGameSessionPlacementInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case placementId = "PlacementId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let placementIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .placementId)
        placementId = placementIdDecoded
    }
}