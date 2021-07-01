// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AddonVersionInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case addonVersion
        case architecture
        case compatibilities
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let addonVersion = addonVersion {
            try encodeContainer.encode(addonVersion, forKey: .addonVersion)
        }
        if let architecture = architecture {
            var architectureContainer = encodeContainer.nestedUnkeyedContainer(forKey: .architecture)
            for stringlist0 in architecture {
                try architectureContainer.encode(stringlist0)
            }
        }
        if let compatibilities = compatibilities {
            var compatibilitiesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .compatibilities)
            for compatibilities0 in compatibilities {
                try compatibilitiesContainer.encode(compatibilities0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let addonVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .addonVersion)
        addonVersion = addonVersionDecoded
        let architectureContainer = try containerValues.decodeIfPresent([String?].self, forKey: .architecture)
        var architectureDecoded0:[String]? = nil
        if let architectureContainer = architectureContainer {
            architectureDecoded0 = [String]()
            for string0 in architectureContainer {
                if let string0 = string0 {
                    architectureDecoded0?.append(string0)
                }
            }
        }
        architecture = architectureDecoded0
        let compatibilitiesContainer = try containerValues.decodeIfPresent([Compatibility?].self, forKey: .compatibilities)
        var compatibilitiesDecoded0:[Compatibility]? = nil
        if let compatibilitiesContainer = compatibilitiesContainer {
            compatibilitiesDecoded0 = [Compatibility]()
            for structure0 in compatibilitiesContainer {
                if let structure0 = structure0 {
                    compatibilitiesDecoded0?.append(structure0)
                }
            }
        }
        compatibilities = compatibilitiesDecoded0
    }
}