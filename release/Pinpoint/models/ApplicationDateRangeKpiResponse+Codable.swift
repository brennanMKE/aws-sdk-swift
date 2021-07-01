// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ApplicationDateRangeKpiResponse: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case endTime = "EndTime"
        case kpiName = "KpiName"
        case kpiResult = "KpiResult"
        case nextToken = "NextToken"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationId = applicationId {
            try encodeContainer.encode(applicationId, forKey: .applicationId)
        }
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let kpiName = kpiName {
            try encodeContainer.encode(kpiName, forKey: .kpiName)
        }
        if let kpiResult = kpiResult {
            try encodeContainer.encode(kpiResult, forKey: .kpiResult)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationId)
        applicationId = applicationIdDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
        let kpiNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kpiName)
        kpiName = kpiNameDecoded
        let kpiResultDecoded = try containerValues.decodeIfPresent(BaseKpiResult.self, forKey: .kpiResult)
        kpiResult = kpiResultDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
    }
}