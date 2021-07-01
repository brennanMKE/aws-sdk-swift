// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FilterExpression: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case expression = "Expression"
        case valuesMap = "ValuesMap"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let expression = expression {
            try encodeContainer.encode(expression, forKey: .expression)
        }
        if let valuesMap = valuesMap {
            var valuesMapContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .valuesMap)
            for (dictKey0, valuesmap0) in valuesMap {
                try valuesMapContainer.encode(valuesmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let expressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .expression)
        expression = expressionDecoded
        let valuesMapContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .valuesMap)
        var valuesMapDecoded0: [String:String]? = nil
        if let valuesMapContainer = valuesMapContainer {
            valuesMapDecoded0 = [String:String]()
            for (key0, conditionvalue0) in valuesMapContainer {
                if let conditionvalue0 = conditionvalue0 {
                    valuesMapDecoded0?[key0] = conditionvalue0
                }
            }
        }
        valuesMap = valuesMapDecoded0
    }
}