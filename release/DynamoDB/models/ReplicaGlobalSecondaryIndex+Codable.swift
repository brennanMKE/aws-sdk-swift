// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicaGlobalSecondaryIndex: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case provisionedThroughputOverride = "ProvisionedThroughputOverride"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let indexName = indexName {
            try encodeContainer.encode(indexName, forKey: .indexName)
        }
        if let provisionedThroughputOverride = provisionedThroughputOverride {
            try encodeContainer.encode(provisionedThroughputOverride, forKey: .provisionedThroughputOverride)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let provisionedThroughputOverrideDecoded = try containerValues.decodeIfPresent(ProvisionedThroughputOverride.self, forKey: .provisionedThroughputOverride)
        provisionedThroughputOverride = provisionedThroughputOverrideDecoded
    }
}