// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RecommendedOptionProjectedMetric: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case projectedMetrics
        case rank
        case recommendedInstanceType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let projectedMetrics = projectedMetrics {
            var projectedMetricsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .projectedMetrics)
            for projectedmetrics0 in projectedMetrics {
                try projectedMetricsContainer.encode(projectedmetrics0)
            }
        }
        if rank != 0 {
            try encodeContainer.encode(rank, forKey: .rank)
        }
        if let recommendedInstanceType = recommendedInstanceType {
            try encodeContainer.encode(recommendedInstanceType, forKey: .recommendedInstanceType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recommendedInstanceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .recommendedInstanceType)
        recommendedInstanceType = recommendedInstanceTypeDecoded
        let rankDecoded = try containerValues.decode(Int.self, forKey: .rank)
        rank = rankDecoded
        let projectedMetricsContainer = try containerValues.decodeIfPresent([ProjectedMetric?].self, forKey: .projectedMetrics)
        var projectedMetricsDecoded0:[ProjectedMetric]? = nil
        if let projectedMetricsContainer = projectedMetricsContainer {
            projectedMetricsDecoded0 = [ProjectedMetric]()
            for structure0 in projectedMetricsContainer {
                if let structure0 = structure0 {
                    projectedMetricsDecoded0?.append(structure0)
                }
            }
        }
        projectedMetrics = projectedMetricsDecoded0
    }
}