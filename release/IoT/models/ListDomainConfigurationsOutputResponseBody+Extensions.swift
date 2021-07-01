// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDomainConfigurationsOutputResponseBody: Equatable {
    public let domainConfigurations: [DomainConfigurationSummary]?
    public let nextMarker: String?
}

extension ListDomainConfigurationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainConfigurations
        case nextMarker
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainConfigurationsContainer = try containerValues.decodeIfPresent([DomainConfigurationSummary?].self, forKey: .domainConfigurations)
        var domainConfigurationsDecoded0:[DomainConfigurationSummary]? = nil
        if let domainConfigurationsContainer = domainConfigurationsContainer {
            domainConfigurationsDecoded0 = [DomainConfigurationSummary]()
            for structure0 in domainConfigurationsContainer {
                if let structure0 = structure0 {
                    domainConfigurationsDecoded0?.append(structure0)
                }
            }
        }
        domainConfigurations = domainConfigurationsDecoded0
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
    }
}