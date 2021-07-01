// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateWirelessGatewayTaskInputBody: Equatable {
    public let wirelessGatewayTaskDefinitionId: String?
}

extension CreateWirelessGatewayTaskInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case wirelessGatewayTaskDefinitionId = "WirelessGatewayTaskDefinitionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let wirelessGatewayTaskDefinitionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .wirelessGatewayTaskDefinitionId)
        wirelessGatewayTaskDefinitionId = wirelessGatewayTaskDefinitionIdDecoded
    }
}