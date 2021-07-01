// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteDevEndpointInputBody: Equatable {
    public let endpointName: String?
}

extension DeleteDevEndpointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointName = "EndpointName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointName)
        endpointName = endpointNameDecoded
    }
}