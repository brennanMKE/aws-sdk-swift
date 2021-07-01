// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListClustersOutputResponseBody: Equatable {
    public let clusters: [ClusterSummary]?
    public let marker: String?
}

extension ListClustersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusters = "Clusters"
        case marker = "Marker"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clustersContainer = try containerValues.decodeIfPresent([ClusterSummary?].self, forKey: .clusters)
        var clustersDecoded0:[ClusterSummary]? = nil
        if let clustersContainer = clustersContainer {
            clustersDecoded0 = [ClusterSummary]()
            for structure0 in clustersContainer {
                if let structure0 = structure0 {
                    clustersDecoded0?.append(structure0)
                }
            }
        }
        clusters = clustersDecoded0
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}