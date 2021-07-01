// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Limits: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case additionalLimits = "AdditionalLimits"
        case instanceLimits = "InstanceLimits"
        case storageTypes = "StorageTypes"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let additionalLimits = additionalLimits {
            var additionalLimitsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .additionalLimits)
            for additionallimitlist0 in additionalLimits {
                try additionalLimitsContainer.encode(additionallimitlist0)
            }
        }
        if let instanceLimits = instanceLimits {
            try encodeContainer.encode(instanceLimits, forKey: .instanceLimits)
        }
        if let storageTypes = storageTypes {
            var storageTypesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .storageTypes)
            for storagetypelist0 in storageTypes {
                try storageTypesContainer.encode(storagetypelist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let storageTypesContainer = try containerValues.decodeIfPresent([StorageType?].self, forKey: .storageTypes)
        var storageTypesDecoded0:[StorageType]? = nil
        if let storageTypesContainer = storageTypesContainer {
            storageTypesDecoded0 = [StorageType]()
            for structure0 in storageTypesContainer {
                if let structure0 = structure0 {
                    storageTypesDecoded0?.append(structure0)
                }
            }
        }
        storageTypes = storageTypesDecoded0
        let instanceLimitsDecoded = try containerValues.decodeIfPresent(InstanceLimits.self, forKey: .instanceLimits)
        instanceLimits = instanceLimitsDecoded
        let additionalLimitsContainer = try containerValues.decodeIfPresent([AdditionalLimit?].self, forKey: .additionalLimits)
        var additionalLimitsDecoded0:[AdditionalLimit]? = nil
        if let additionalLimitsContainer = additionalLimitsContainer {
            additionalLimitsDecoded0 = [AdditionalLimit]()
            for structure0 in additionalLimitsContainer {
                if let structure0 = structure0 {
                    additionalLimitsDecoded0?.append(structure0)
                }
            }
        }
        additionalLimits = additionalLimitsDecoded0
    }
}