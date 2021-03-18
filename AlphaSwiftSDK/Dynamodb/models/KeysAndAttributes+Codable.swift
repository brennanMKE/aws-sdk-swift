// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension KeysAndAttributes: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case consistentRead = "ConsistentRead"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case keys = "Keys"
        case projectionExpression = "ProjectionExpression"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let attributesToGet = attributesToGet {
            var attributesToGetContainer = container.nestedUnkeyedContainer(forKey: .attributesToGet)
            for attributenamelist0 in attributesToGet {
                try attributesToGetContainer.encode(attributenamelist0)
            }
        }
        if let consistentRead = consistentRead {
            try container.encode(consistentRead, forKey: .consistentRead)
        }
        if let expressionAttributeNames = expressionAttributeNames {
            var expressionAttributeNamesContainer = container.nestedContainer(keyedBy: Key.self, forKey: .expressionAttributeNames)
            for (dictKey0, expressionattributenamemap0) in expressionAttributeNames {
                try expressionAttributeNamesContainer.encode(expressionattributenamemap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let keys = keys {
            var keysContainer = container.nestedUnkeyedContainer(forKey: .keys)
            for keylist0 in keys {
                var keylist0Container = keysContainer.nestedContainer(keyedBy: Key.self)
                if let keylist0 = keylist0 {
                    for (dictKey1, key1) in keylist0 {
                        try keylist0Container.encode(key1, forKey: Key(stringValue: dictKey1))
                    }
                }
            }
        }
        if let projectionExpression = projectionExpression {
            try container.encode(projectionExpression, forKey: .projectionExpression)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keysContainer = try containerValues.decodeIfPresent([[String:AttributeValue]?].self, forKey: .keys)
        var keysDecoded0:[[String:AttributeValue]?]? = nil
        if let keysContainer = keysContainer {
            keysDecoded0 = [[String:AttributeValue]?]()
            for map0 in keysContainer {
                var keysContainerDecoded0 = [String:AttributeValue]()
                if let map0 = map0 {
                    for (key1, attributevalue1) in map0 {
                        keysContainerDecoded0[key1] = attributevalue1
                    }
                }
                keysDecoded0?.append(keysContainerDecoded0)
            }
        }
        keys = keysDecoded0
        let attributesToGetContainer = try containerValues.decodeIfPresent([String].self, forKey: .attributesToGet)
        var attributesToGetDecoded0:[String]? = nil
        if let attributesToGetContainer = attributesToGetContainer {
            attributesToGetDecoded0 = [String]()
            for string0 in attributesToGetContainer {
                attributesToGetDecoded0?.append(string0)
            }
        }
        attributesToGet = attributesToGetDecoded0
        let consistentReadDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .consistentRead)
        consistentRead = consistentReadDecoded
        let projectionExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectionExpression)
        projectionExpression = projectionExpressionDecoded
        let expressionAttributeNamesContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .expressionAttributeNames)
        var expressionAttributeNamesDecoded0: [String:String]? = nil
        if let expressionAttributeNamesContainer = expressionAttributeNamesContainer {
            expressionAttributeNamesDecoded0 = [String:String]()
            for (key0, attributename0) in expressionAttributeNamesContainer {
                expressionAttributeNamesDecoded0?[key0] = attributename0
            }
        }
        expressionAttributeNames = expressionAttributeNamesDecoded0
    }
}
