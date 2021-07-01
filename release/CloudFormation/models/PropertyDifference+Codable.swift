// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PropertyDifference: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case actualValue = "ActualValue"
        case differenceType = "DifferenceType"
        case expectedValue = "ExpectedValue"
        case propertyPath = "PropertyPath"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let actualValue = actualValue {
            try container.encode(actualValue, forKey: Key("ActualValue"))
        }
        if let differenceType = differenceType {
            try container.encode(differenceType, forKey: Key("DifferenceType"))
        }
        if let expectedValue = expectedValue {
            try container.encode(expectedValue, forKey: Key("ExpectedValue"))
        }
        if let propertyPath = propertyPath {
            try container.encode(propertyPath, forKey: Key("PropertyPath"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let propertyPathDecoded = try containerValues.decodeIfPresent(String.self, forKey: .propertyPath)
        propertyPath = propertyPathDecoded
        let expectedValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .expectedValue)
        expectedValue = expectedValueDecoded
        let actualValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .actualValue)
        actualValue = actualValueDecoded
        let differenceTypeDecoded = try containerValues.decodeIfPresent(DifferenceType.self, forKey: .differenceType)
        differenceType = differenceTypeDecoded
    }
}