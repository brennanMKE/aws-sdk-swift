// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RemoveCustomRoutingEndpointsInputBody: Equatable {
    public let endpointIds: [String]?
    public let endpointGroupArn: String?
}

extension RemoveCustomRoutingEndpointsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointGroupArn = "EndpointGroupArn"
        case endpointIds = "EndpointIds"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .endpointIds)
        var endpointIdsDecoded0:[String]? = nil
        if let endpointIdsContainer = endpointIdsContainer {
            endpointIdsDecoded0 = [String]()
            for string0 in endpointIdsContainer {
                if let string0 = string0 {
                    endpointIdsDecoded0?.append(string0)
                }
            }
        }
        endpointIds = endpointIdsDecoded0
        let endpointGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointGroupArn)
        endpointGroupArn = endpointGroupArnDecoded
    }
}