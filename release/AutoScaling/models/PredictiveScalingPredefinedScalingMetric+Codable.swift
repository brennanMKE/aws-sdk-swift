// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PredictiveScalingPredefinedScalingMetric: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case predefinedMetricType = "PredefinedMetricType"
        case resourceLabel = "ResourceLabel"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let predefinedMetricType = predefinedMetricType {
            try container.encode(predefinedMetricType, forKey: Key("PredefinedMetricType"))
        }
        if let resourceLabel = resourceLabel {
            try container.encode(resourceLabel, forKey: Key("ResourceLabel"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let predefinedMetricTypeDecoded = try containerValues.decodeIfPresent(PredefinedScalingMetricType.self, forKey: .predefinedMetricType)
        predefinedMetricType = predefinedMetricTypeDecoded
        let resourceLabelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceLabel)
        resourceLabel = resourceLabelDecoded
    }
}