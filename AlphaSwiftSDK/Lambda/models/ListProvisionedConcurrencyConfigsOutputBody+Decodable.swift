// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ListProvisionedConcurrencyConfigsOutputBody: Equatable {
    public let provisionedConcurrencyConfigs: [ProvisionedConcurrencyConfigListItem]?
    public let nextMarker: String?
}

extension ListProvisionedConcurrencyConfigsOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case nextMarker = "NextMarker"
        case provisionedConcurrencyConfigs = "ProvisionedConcurrencyConfigs"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let provisionedConcurrencyConfigsContainer = try containerValues.decodeIfPresent([ProvisionedConcurrencyConfigListItem].self, forKey: .provisionedConcurrencyConfigs)
        var provisionedConcurrencyConfigsDecoded0:[ProvisionedConcurrencyConfigListItem]? = nil
        if let provisionedConcurrencyConfigsContainer = provisionedConcurrencyConfigsContainer {
            provisionedConcurrencyConfigsDecoded0 = [ProvisionedConcurrencyConfigListItem]()
            for structure0 in provisionedConcurrencyConfigsContainer {
                provisionedConcurrencyConfigsDecoded0?.append(structure0)
            }
        }
        provisionedConcurrencyConfigs = provisionedConcurrencyConfigsDecoded0
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
    }
}
