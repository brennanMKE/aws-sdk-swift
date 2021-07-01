// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Transform: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case expression
        case variables
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let expression = expression {
            try encodeContainer.encode(expression, forKey: .expression)
        }
        if let variables = variables {
            var variablesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .variables)
            for expressionvariables0 in variables {
                try variablesContainer.encode(expressionvariables0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let expressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .expression)
        expression = expressionDecoded
        let variablesContainer = try containerValues.decodeIfPresent([ExpressionVariable?].self, forKey: .variables)
        var variablesDecoded0:[ExpressionVariable]? = nil
        if let variablesContainer = variablesContainer {
            variablesDecoded0 = [ExpressionVariable]()
            for structure0 in variablesContainer {
                if let structure0 = structure0 {
                    variablesDecoded0?.append(structure0)
                }
            }
        }
        variables = variablesDecoded0
    }
}