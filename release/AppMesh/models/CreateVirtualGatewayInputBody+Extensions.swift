// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateVirtualGatewayInputBody: Equatable {
    public let virtualGatewayName: String?
    public let spec: VirtualGatewaySpec?
    public let tags: [TagRef]?
    public let clientToken: String?
}

extension CreateVirtualGatewayInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case spec
        case tags
        case virtualGatewayName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualGatewayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .virtualGatewayName)
        virtualGatewayName = virtualGatewayNameDecoded
        let specDecoded = try containerValues.decodeIfPresent(VirtualGatewaySpec.self, forKey: .spec)
        spec = specDecoded
        let tagsContainer = try containerValues.decodeIfPresent([TagRef?].self, forKey: .tags)
        var tagsDecoded0:[TagRef]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [TagRef]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}