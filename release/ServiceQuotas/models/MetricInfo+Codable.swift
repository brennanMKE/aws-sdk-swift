// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MetricInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case metricDimensions = "MetricDimensions"
        case metricName = "MetricName"
        case metricNamespace = "MetricNamespace"
        case metricStatisticRecommendation = "MetricStatisticRecommendation"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let metricDimensions = metricDimensions {
            var metricDimensionsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .metricDimensions)
            for (dictKey0, metricdimensionsmapdefinition0) in metricDimensions {
                try metricDimensionsContainer.encode(metricdimensionsmapdefinition0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let metricName = metricName {
            try encodeContainer.encode(metricName, forKey: .metricName)
        }
        if let metricNamespace = metricNamespace {
            try encodeContainer.encode(metricNamespace, forKey: .metricNamespace)
        }
        if let metricStatisticRecommendation = metricStatisticRecommendation {
            try encodeContainer.encode(metricStatisticRecommendation, forKey: .metricStatisticRecommendation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metricNamespaceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metricNamespace)
        metricNamespace = metricNamespaceDecoded
        let metricNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metricName)
        metricName = metricNameDecoded
        let metricDimensionsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .metricDimensions)
        var metricDimensionsDecoded0: [String:String]? = nil
        if let metricDimensionsContainer = metricDimensionsContainer {
            metricDimensionsDecoded0 = [String:String]()
            for (key0, metricdimensionvalue0) in metricDimensionsContainer {
                if let metricdimensionvalue0 = metricdimensionvalue0 {
                    metricDimensionsDecoded0?[key0] = metricdimensionvalue0
                }
            }
        }
        metricDimensions = metricDimensionsDecoded0
        let metricStatisticRecommendationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metricStatisticRecommendation)
        metricStatisticRecommendation = metricStatisticRecommendationDecoded
    }
}