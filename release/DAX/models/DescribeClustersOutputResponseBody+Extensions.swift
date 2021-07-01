// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeClustersOutputResponseBody: Equatable {
    public let nextToken: String?
    public let clusters: [Cluster]?
}

extension DescribeClustersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusters = "Clusters"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let clustersContainer = try containerValues.decodeIfPresent([Cluster?].self, forKey: .clusters)
        var clustersDecoded0:[Cluster]? = nil
        if let clustersContainer = clustersContainer {
            clustersDecoded0 = [Cluster]()
            for structure0 in clustersContainer {
                if let structure0 = structure0 {
                    clustersDecoded0?.append(structure0)
                }
            }
        }
        clusters = clustersDecoded0
    }
}