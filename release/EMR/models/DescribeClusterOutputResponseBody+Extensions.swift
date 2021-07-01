// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeClusterOutputResponseBody: Equatable {
    public let cluster: Cluster?
}

extension DescribeClusterOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster = "Cluster"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterDecoded = try containerValues.decodeIfPresent(Cluster.self, forKey: .cluster)
        cluster = clusterDecoded
    }
}