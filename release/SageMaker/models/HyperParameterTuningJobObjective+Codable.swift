// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HyperParameterTuningJobObjective: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case metricName = "MetricName"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let metricName = metricName {
            try encodeContainer.encode(metricName, forKey: .metricName)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(HyperParameterTuningJobObjectiveType.self, forKey: .type)
        type = typeDecoded
        let metricNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metricName)
        metricName = metricNameDecoded
    }
}