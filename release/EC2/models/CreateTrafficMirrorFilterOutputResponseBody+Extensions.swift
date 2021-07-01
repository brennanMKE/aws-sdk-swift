// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTrafficMirrorFilterOutputResponseBody: Equatable {
    public let trafficMirrorFilter: TrafficMirrorFilter?
    public let clientToken: String?
}

extension CreateTrafficMirrorFilterOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case trafficMirrorFilter = "trafficMirrorFilter"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trafficMirrorFilterDecoded = try containerValues.decodeIfPresent(TrafficMirrorFilter.self, forKey: .trafficMirrorFilter)
        trafficMirrorFilter = trafficMirrorFilterDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}