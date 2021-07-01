// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProjectedMetric: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name
        case timestamps
        case values
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name.rawValue, forKey: .name)
        }
        if let timestamps = timestamps {
            var timestampsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .timestamps)
            for timestamps0 in timestamps {
                try timestampsContainer.encode(timestamps0.timeIntervalSince1970)
            }
        }
        if let values = values {
            var valuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .values)
            for metricvalues0 in values {
                try valuesContainer.encode(metricvalues0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(MetricName.self, forKey: .name)
        name = nameDecoded
        let timestampsContainer = try containerValues.decodeIfPresent([Date?].self, forKey: .timestamps)
        var timestampsDecoded0:[Date]? = nil
        if let timestampsContainer = timestampsContainer {
            timestampsDecoded0 = [Date]()
            for timestamp0 in timestampsContainer {
                if let timestamp0 = timestamp0 {
                    timestampsDecoded0?.append(timestamp0)
                }
            }
        }
        timestamps = timestampsDecoded0
        let valuesContainer = try containerValues.decodeIfPresent([Double?].self, forKey: .values)
        var valuesDecoded0:[Double]? = nil
        if let valuesContainer = valuesContainer {
            valuesDecoded0 = [Double]()
            for double0 in valuesContainer {
                if let double0 = double0 {
                    valuesDecoded0?.append(double0)
                }
            }
        }
        values = valuesDecoded0
    }
}