// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ExpectedAttributeValue: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case attributeValueList = "AttributeValueList"
        case comparisonOperator = "ComparisonOperator"
        case exists = "Exists"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let attributeValueList = attributeValueList {
            var attributeValueListContainer = container.nestedUnkeyedContainer(forKey: .attributeValueList)
            for attributevaluelist0 in attributeValueList {
                try attributeValueListContainer.encode(attributevaluelist0)
            }
        }
        if let comparisonOperator = comparisonOperator {
            try container.encode(comparisonOperator.rawValue, forKey: .comparisonOperator)
        }
        if let exists = exists {
            try container.encode(exists, forKey: .exists)
        }
        if let value = value {
            try container.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let valueDecoded = try containerValues.decodeIfPresent(AttributeValue.self, forKey: .value)
        value = valueDecoded
        let existsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .exists)
        exists = existsDecoded
        let comparisonOperatorDecoded = try containerValues.decodeIfPresent(ComparisonOperator.self, forKey: .comparisonOperator)
        comparisonOperator = comparisonOperatorDecoded
        let attributeValueListContainer = try containerValues.decodeIfPresent([AttributeValue].self, forKey: .attributeValueList)
        var attributeValueListDecoded0:[AttributeValue]? = nil
        if let attributeValueListContainer = attributeValueListContainer {
            attributeValueListDecoded0 = [AttributeValue]()
            for union0 in attributeValueListContainer {
                attributeValueListDecoded0?.append(union0)
            }
        }
        attributeValueList = attributeValueListDecoded0
    }
}
