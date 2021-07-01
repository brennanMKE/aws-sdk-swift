// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BrokerInstanceOption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZones = "availabilityZones"
        case engineType = "engineType"
        case hostInstanceType = "hostInstanceType"
        case storageType = "storageType"
        case supportedDeploymentModes = "supportedDeploymentModes"
        case supportedEngineVersions = "supportedEngineVersions"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZones = availabilityZones {
            var availabilityZonesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .availabilityZones)
            for __listofavailabilityzone0 in availabilityZones {
                try availabilityZonesContainer.encode(__listofavailabilityzone0)
            }
        }
        if let engineType = engineType {
            try encodeContainer.encode(engineType.rawValue, forKey: .engineType)
        }
        if let hostInstanceType = hostInstanceType {
            try encodeContainer.encode(hostInstanceType, forKey: .hostInstanceType)
        }
        if let storageType = storageType {
            try encodeContainer.encode(storageType.rawValue, forKey: .storageType)
        }
        if let supportedDeploymentModes = supportedDeploymentModes {
            var supportedDeploymentModesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .supportedDeploymentModes)
            for __listofdeploymentmode0 in supportedDeploymentModes {
                try supportedDeploymentModesContainer.encode(__listofdeploymentmode0.rawValue)
            }
        }
        if let supportedEngineVersions = supportedEngineVersions {
            var supportedEngineVersionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .supportedEngineVersions)
            for __listof__string0 in supportedEngineVersions {
                try supportedEngineVersionsContainer.encode(__listof__string0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let availabilityZonesContainer = try containerValues.decodeIfPresent([AvailabilityZone?].self, forKey: .availabilityZones)
        var availabilityZonesDecoded0:[AvailabilityZone]? = nil
        if let availabilityZonesContainer = availabilityZonesContainer {
            availabilityZonesDecoded0 = [AvailabilityZone]()
            for structure0 in availabilityZonesContainer {
                if let structure0 = structure0 {
                    availabilityZonesDecoded0?.append(structure0)
                }
            }
        }
        availabilityZones = availabilityZonesDecoded0
        let engineTypeDecoded = try containerValues.decodeIfPresent(EngineType.self, forKey: .engineType)
        engineType = engineTypeDecoded
        let hostInstanceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostInstanceType)
        hostInstanceType = hostInstanceTypeDecoded
        let storageTypeDecoded = try containerValues.decodeIfPresent(BrokerStorageType.self, forKey: .storageType)
        storageType = storageTypeDecoded
        let supportedDeploymentModesContainer = try containerValues.decodeIfPresent([DeploymentMode?].self, forKey: .supportedDeploymentModes)
        var supportedDeploymentModesDecoded0:[DeploymentMode]? = nil
        if let supportedDeploymentModesContainer = supportedDeploymentModesContainer {
            supportedDeploymentModesDecoded0 = [DeploymentMode]()
            for string0 in supportedDeploymentModesContainer {
                if let string0 = string0 {
                    supportedDeploymentModesDecoded0?.append(string0)
                }
            }
        }
        supportedDeploymentModes = supportedDeploymentModesDecoded0
        let supportedEngineVersionsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .supportedEngineVersions)
        var supportedEngineVersionsDecoded0:[String]? = nil
        if let supportedEngineVersionsContainer = supportedEngineVersionsContainer {
            supportedEngineVersionsDecoded0 = [String]()
            for string0 in supportedEngineVersionsContainer {
                if let string0 = string0 {
                    supportedEngineVersionsDecoded0?.append(string0)
                }
            }
        }
        supportedEngineVersions = supportedEngineVersionsDecoded0
    }
}