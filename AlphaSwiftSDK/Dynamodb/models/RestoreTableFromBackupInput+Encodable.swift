// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension RestoreTableFromBackupInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
        case billingModeOverride = "BillingModeOverride"
        case globalSecondaryIndexOverride = "GlobalSecondaryIndexOverride"
        case localSecondaryIndexOverride = "LocalSecondaryIndexOverride"
        case provisionedThroughputOverride = "ProvisionedThroughputOverride"
        case sSESpecificationOverride = "SSESpecificationOverride"
        case targetTableName = "TargetTableName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let backupArn = backupArn {
            try container.encode(backupArn, forKey: .backupArn)
        }
        if let billingModeOverride = billingModeOverride {
            try container.encode(billingModeOverride.rawValue, forKey: .billingModeOverride)
        }
        if let globalSecondaryIndexOverride = globalSecondaryIndexOverride {
            var globalSecondaryIndexOverrideContainer = container.nestedUnkeyedContainer(forKey: .globalSecondaryIndexOverride)
            for globalsecondaryindexlist0 in globalSecondaryIndexOverride {
                try globalSecondaryIndexOverrideContainer.encode(globalsecondaryindexlist0)
            }
        }
        if let localSecondaryIndexOverride = localSecondaryIndexOverride {
            var localSecondaryIndexOverrideContainer = container.nestedUnkeyedContainer(forKey: .localSecondaryIndexOverride)
            for localsecondaryindexlist0 in localSecondaryIndexOverride {
                try localSecondaryIndexOverrideContainer.encode(localsecondaryindexlist0)
            }
        }
        if let provisionedThroughputOverride = provisionedThroughputOverride {
            try container.encode(provisionedThroughputOverride, forKey: .provisionedThroughputOverride)
        }
        if let sSESpecificationOverride = sSESpecificationOverride {
            try container.encode(sSESpecificationOverride, forKey: .sSESpecificationOverride)
        }
        if let targetTableName = targetTableName {
            try container.encode(targetTableName, forKey: .targetTableName)
        }
    }
}
