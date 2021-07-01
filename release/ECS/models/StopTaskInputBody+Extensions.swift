// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopTaskInputBody: Equatable {
    public let cluster: String?
    public let task: String?
    public let reason: String?
}

extension StopTaskInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster
        case reason
        case task
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cluster)
        cluster = clusterDecoded
        let taskDecoded = try containerValues.decodeIfPresent(String.self, forKey: .task)
        task = taskDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reason)
        reason = reasonDecoded
    }
}