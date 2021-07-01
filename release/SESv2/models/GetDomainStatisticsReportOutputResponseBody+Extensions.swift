// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDomainStatisticsReportOutputResponseBody: Equatable {
    public let overallVolume: OverallVolume?
    public let dailyVolumes: [DailyVolume]?
}

extension GetDomainStatisticsReportOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dailyVolumes = "DailyVolumes"
        case overallVolume = "OverallVolume"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let overallVolumeDecoded = try containerValues.decodeIfPresent(OverallVolume.self, forKey: .overallVolume)
        overallVolume = overallVolumeDecoded
        let dailyVolumesContainer = try containerValues.decodeIfPresent([DailyVolume?].self, forKey: .dailyVolumes)
        var dailyVolumesDecoded0:[DailyVolume]? = nil
        if let dailyVolumesContainer = dailyVolumesContainer {
            dailyVolumesDecoded0 = [DailyVolume]()
            for structure0 in dailyVolumesContainer {
                if let structure0 = structure0 {
                    dailyVolumesDecoded0?.append(structure0)
                }
            }
        }
        dailyVolumes = dailyVolumesDecoded0
    }
}