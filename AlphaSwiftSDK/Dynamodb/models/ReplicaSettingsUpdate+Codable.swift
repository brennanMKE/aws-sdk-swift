// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ReplicaSettingsUpdate: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
        case replicaGlobalSecondaryIndexSettingsUpdate = "ReplicaGlobalSecondaryIndexSettingsUpdate"
        case replicaProvisionedReadCapacityAutoScalingSettingsUpdate = "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"
        case replicaProvisionedReadCapacityUnits = "ReplicaProvisionedReadCapacityUnits"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let regionName = regionName {
            try container.encode(regionName, forKey: .regionName)
        }
        if let replicaGlobalSecondaryIndexSettingsUpdate = replicaGlobalSecondaryIndexSettingsUpdate {
            var replicaGlobalSecondaryIndexSettingsUpdateContainer = container.nestedUnkeyedContainer(forKey: .replicaGlobalSecondaryIndexSettingsUpdate)
            for replicaglobalsecondaryindexsettingsupdatelist0 in replicaGlobalSecondaryIndexSettingsUpdate {
                try replicaGlobalSecondaryIndexSettingsUpdateContainer.encode(replicaglobalsecondaryindexsettingsupdatelist0)
            }
        }
        if let replicaProvisionedReadCapacityAutoScalingSettingsUpdate = replicaProvisionedReadCapacityAutoScalingSettingsUpdate {
            try container.encode(replicaProvisionedReadCapacityAutoScalingSettingsUpdate, forKey: .replicaProvisionedReadCapacityAutoScalingSettingsUpdate)
        }
        if let replicaProvisionedReadCapacityUnits = replicaProvisionedReadCapacityUnits {
            try container.encode(replicaProvisionedReadCapacityUnits, forKey: .replicaProvisionedReadCapacityUnits)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let regionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regionName)
        regionName = regionNameDecoded
        let replicaProvisionedReadCapacityUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .replicaProvisionedReadCapacityUnits)
        replicaProvisionedReadCapacityUnits = replicaProvisionedReadCapacityUnitsDecoded
        let replicaProvisionedReadCapacityAutoScalingSettingsUpdateDecoded = try containerValues.decodeIfPresent(AutoScalingSettingsUpdate.self, forKey: .replicaProvisionedReadCapacityAutoScalingSettingsUpdate)
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate = replicaProvisionedReadCapacityAutoScalingSettingsUpdateDecoded
        let replicaGlobalSecondaryIndexSettingsUpdateContainer = try containerValues.decodeIfPresent([ReplicaGlobalSecondaryIndexSettingsUpdate].self, forKey: .replicaGlobalSecondaryIndexSettingsUpdate)
        var replicaGlobalSecondaryIndexSettingsUpdateDecoded0:[ReplicaGlobalSecondaryIndexSettingsUpdate]? = nil
        if let replicaGlobalSecondaryIndexSettingsUpdateContainer = replicaGlobalSecondaryIndexSettingsUpdateContainer {
            replicaGlobalSecondaryIndexSettingsUpdateDecoded0 = [ReplicaGlobalSecondaryIndexSettingsUpdate]()
            for structure0 in replicaGlobalSecondaryIndexSettingsUpdateContainer {
                replicaGlobalSecondaryIndexSettingsUpdateDecoded0?.append(structure0)
            }
        }
        replicaGlobalSecondaryIndexSettingsUpdate = replicaGlobalSecondaryIndexSettingsUpdateDecoded0
    }
}
