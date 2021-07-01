// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBootstrapActionsInputBody: Equatable {
    public let clusterId: String?
    public let marker: String?
}

extension ListBootstrapActionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusterId = "ClusterId"
        case marker = "Marker"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clusterId)
        clusterId = clusterIdDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}