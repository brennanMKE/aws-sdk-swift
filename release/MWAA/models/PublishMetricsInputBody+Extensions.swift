// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PublishMetricsInputBody: Equatable {
    public let metricData: [MetricDatum]?
}

extension PublishMetricsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case metricData = "MetricData"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metricDataContainer = try containerValues.decodeIfPresent([MetricDatum?].self, forKey: .metricData)
        var metricDataDecoded0:[MetricDatum]? = nil
        if let metricDataContainer = metricDataContainer {
            metricDataDecoded0 = [MetricDatum]()
            for structure0 in metricDataContainer {
                if let structure0 = structure0 {
                    metricDataDecoded0?.append(structure0)
                }
            }
        }
        metricData = metricDataDecoded0
    }
}