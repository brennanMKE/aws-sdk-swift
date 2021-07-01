// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteClusterInputBody: Equatable {
    public let clusterId: String?
}

extension DeleteClusterInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusterId = "ClusterId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clusterId)
        clusterId = clusterIdDecoded
    }
}