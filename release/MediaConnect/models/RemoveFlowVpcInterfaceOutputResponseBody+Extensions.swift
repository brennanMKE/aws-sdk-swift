// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RemoveFlowVpcInterfaceOutputResponseBody: Equatable {
    public let flowArn: String?
    public let nonDeletedNetworkInterfaceIds: [String]?
    public let vpcInterfaceName: String?
}

extension RemoveFlowVpcInterfaceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case flowArn = "flowArn"
        case nonDeletedNetworkInterfaceIds = "nonDeletedNetworkInterfaceIds"
        case vpcInterfaceName = "vpcInterfaceName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowArn)
        flowArn = flowArnDecoded
        let nonDeletedNetworkInterfaceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .nonDeletedNetworkInterfaceIds)
        var nonDeletedNetworkInterfaceIdsDecoded0:[String]? = nil
        if let nonDeletedNetworkInterfaceIdsContainer = nonDeletedNetworkInterfaceIdsContainer {
            nonDeletedNetworkInterfaceIdsDecoded0 = [String]()
            for string0 in nonDeletedNetworkInterfaceIdsContainer {
                if let string0 = string0 {
                    nonDeletedNetworkInterfaceIdsDecoded0?.append(string0)
                }
            }
        }
        nonDeletedNetworkInterfaceIds = nonDeletedNetworkInterfaceIdsDecoded0
        let vpcInterfaceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcInterfaceName)
        vpcInterfaceName = vpcInterfaceNameDecoded
    }
}