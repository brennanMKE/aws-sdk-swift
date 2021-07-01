// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TotalImpactFilter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endValue = "EndValue"
        case numericOperator = "NumericOperator"
        case startValue = "StartValue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if endValue != 0.0 {
            try encodeContainer.encode(endValue, forKey: .endValue)
        }
        if let numericOperator = numericOperator {
            try encodeContainer.encode(numericOperator.rawValue, forKey: .numericOperator)
        }
        if startValue != 0.0 {
            try encodeContainer.encode(startValue, forKey: .startValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let numericOperatorDecoded = try containerValues.decodeIfPresent(NumericOperator.self, forKey: .numericOperator)
        numericOperator = numericOperatorDecoded
        let startValueDecoded = try containerValues.decode(Double.self, forKey: .startValue)
        startValue = startValueDecoded
        let endValueDecoded = try containerValues.decode(Double.self, forKey: .endValue)
        endValue = endValueDecoded
    }
}