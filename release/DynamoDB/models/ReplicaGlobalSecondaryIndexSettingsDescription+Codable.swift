// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicaGlobalSecondaryIndexSettingsDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case indexStatus = "IndexStatus"
        case provisionedReadCapacityAutoScalingSettings = "ProvisionedReadCapacityAutoScalingSettings"
        case provisionedReadCapacityUnits = "ProvisionedReadCapacityUnits"
        case provisionedWriteCapacityAutoScalingSettings = "ProvisionedWriteCapacityAutoScalingSettings"
        case provisionedWriteCapacityUnits = "ProvisionedWriteCapacityUnits"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let indexName = indexName {
            try encodeContainer.encode(indexName, forKey: .indexName)
        }
        if let indexStatus = indexStatus {
            try encodeContainer.encode(indexStatus.rawValue, forKey: .indexStatus)
        }
        if let provisionedReadCapacityAutoScalingSettings = provisionedReadCapacityAutoScalingSettings {
            try encodeContainer.encode(provisionedReadCapacityAutoScalingSettings, forKey: .provisionedReadCapacityAutoScalingSettings)
        }
        if let provisionedReadCapacityUnits = provisionedReadCapacityUnits {
            try encodeContainer.encode(provisionedReadCapacityUnits, forKey: .provisionedReadCapacityUnits)
        }
        if let provisionedWriteCapacityAutoScalingSettings = provisionedWriteCapacityAutoScalingSettings {
            try encodeContainer.encode(provisionedWriteCapacityAutoScalingSettings, forKey: .provisionedWriteCapacityAutoScalingSettings)
        }
        if let provisionedWriteCapacityUnits = provisionedWriteCapacityUnits {
            try encodeContainer.encode(provisionedWriteCapacityUnits, forKey: .provisionedWriteCapacityUnits)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let indexStatusDecoded = try containerValues.decodeIfPresent(IndexStatus.self, forKey: .indexStatus)
        indexStatus = indexStatusDecoded
        let provisionedReadCapacityUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .provisionedReadCapacityUnits)
        provisionedReadCapacityUnits = provisionedReadCapacityUnitsDecoded
        let provisionedReadCapacityAutoScalingSettingsDecoded = try containerValues.decodeIfPresent(AutoScalingSettingsDescription.self, forKey: .provisionedReadCapacityAutoScalingSettings)
        provisionedReadCapacityAutoScalingSettings = provisionedReadCapacityAutoScalingSettingsDecoded
        let provisionedWriteCapacityUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .provisionedWriteCapacityUnits)
        provisionedWriteCapacityUnits = provisionedWriteCapacityUnitsDecoded
        let provisionedWriteCapacityAutoScalingSettingsDecoded = try containerValues.decodeIfPresent(AutoScalingSettingsDescription.self, forKey: .provisionedWriteCapacityAutoScalingSettings)
        provisionedWriteCapacityAutoScalingSettings = provisionedWriteCapacityAutoScalingSettingsDecoded
    }
}