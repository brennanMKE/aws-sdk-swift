// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteClusterInputBody: Equatable {
    public let cluster: String?
}

extension DeleteClusterInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cluster)
        cluster = clusterDecoded
    }
}