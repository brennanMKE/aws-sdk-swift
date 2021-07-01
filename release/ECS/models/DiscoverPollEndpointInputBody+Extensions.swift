// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DiscoverPollEndpointInputBody: Equatable {
    public let containerInstance: String?
    public let cluster: String?
}

extension DiscoverPollEndpointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let containerInstanceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .containerInstance)
        containerInstance = containerInstanceDecoded
        let clusterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cluster)
        cluster = clusterDecoded
    }
}