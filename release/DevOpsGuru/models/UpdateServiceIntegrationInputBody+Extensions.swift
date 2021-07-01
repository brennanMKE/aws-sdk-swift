// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateServiceIntegrationInputBody: Equatable {
    public let serviceIntegration: UpdateServiceIntegrationConfig?
}

extension UpdateServiceIntegrationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serviceIntegration = "ServiceIntegration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceIntegrationDecoded = try containerValues.decodeIfPresent(UpdateServiceIntegrationConfig.self, forKey: .serviceIntegration)
        serviceIntegration = serviceIntegrationDecoded
    }
}