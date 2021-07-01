// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InsightEvent: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientRequestImpactStatistics = "ClientRequestImpactStatistics"
        case eventTime = "EventTime"
        case rootCauseServiceRequestImpactStatistics = "RootCauseServiceRequestImpactStatistics"
        case summary = "Summary"
        case topAnomalousServices = "TopAnomalousServices"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientRequestImpactStatistics = clientRequestImpactStatistics {
            try encodeContainer.encode(clientRequestImpactStatistics, forKey: .clientRequestImpactStatistics)
        }
        if let eventTime = eventTime {
            try encodeContainer.encode(eventTime.timeIntervalSince1970, forKey: .eventTime)
        }
        if let rootCauseServiceRequestImpactStatistics = rootCauseServiceRequestImpactStatistics {
            try encodeContainer.encode(rootCauseServiceRequestImpactStatistics, forKey: .rootCauseServiceRequestImpactStatistics)
        }
        if let summary = summary {
            try encodeContainer.encode(summary, forKey: .summary)
        }
        if let topAnomalousServices = topAnomalousServices {
            var topAnomalousServicesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .topAnomalousServices)
            for anomalousservicelist0 in topAnomalousServices {
                try topAnomalousServicesContainer.encode(anomalousservicelist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let summaryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .summary)
        summary = summaryDecoded
        let eventTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .eventTime)
        eventTime = eventTimeDecoded
        let clientRequestImpactStatisticsDecoded = try containerValues.decodeIfPresent(RequestImpactStatistics.self, forKey: .clientRequestImpactStatistics)
        clientRequestImpactStatistics = clientRequestImpactStatisticsDecoded
        let rootCauseServiceRequestImpactStatisticsDecoded = try containerValues.decodeIfPresent(RequestImpactStatistics.self, forKey: .rootCauseServiceRequestImpactStatistics)
        rootCauseServiceRequestImpactStatistics = rootCauseServiceRequestImpactStatisticsDecoded
        let topAnomalousServicesContainer = try containerValues.decodeIfPresent([AnomalousService?].self, forKey: .topAnomalousServices)
        var topAnomalousServicesDecoded0:[AnomalousService]? = nil
        if let topAnomalousServicesContainer = topAnomalousServicesContainer {
            topAnomalousServicesDecoded0 = [AnomalousService]()
            for structure0 in topAnomalousServicesContainer {
                if let structure0 = structure0 {
                    topAnomalousServicesDecoded0?.append(structure0)
                }
            }
        }
        topAnomalousServices = topAnomalousServicesDecoded0
    }
}