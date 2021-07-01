// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HashAlgorithmOptions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowedValues
        case defaultValue
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allowedValues = allowedValues {
            var allowedValuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .allowedValues)
            for hashalgorithms0 in allowedValues {
                try allowedValuesContainer.encode(hashalgorithms0.rawValue)
            }
        }
        if let defaultValue = defaultValue {
            try encodeContainer.encode(defaultValue.rawValue, forKey: .defaultValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let allowedValuesContainer = try containerValues.decodeIfPresent([HashAlgorithm?].self, forKey: .allowedValues)
        var allowedValuesDecoded0:[HashAlgorithm]? = nil
        if let allowedValuesContainer = allowedValuesContainer {
            allowedValuesDecoded0 = [HashAlgorithm]()
            for string0 in allowedValuesContainer {
                if let string0 = string0 {
                    allowedValuesDecoded0?.append(string0)
                }
            }
        }
        allowedValues = allowedValuesDecoded0
        let defaultValueDecoded = try containerValues.decodeIfPresent(HashAlgorithm.self, forKey: .defaultValue)
        defaultValue = defaultValueDecoded
    }
}