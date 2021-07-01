// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetReportGroupTrendInputBody: Equatable {
    public let reportGroupArn: String?
    public let numOfReports: Int?
    public let trendField: ReportGroupTrendFieldType?
}

extension GetReportGroupTrendInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case numOfReports
        case reportGroupArn
        case trendField
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let reportGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reportGroupArn)
        reportGroupArn = reportGroupArnDecoded
        let numOfReportsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .numOfReports)
        numOfReports = numOfReportsDecoded
        let trendFieldDecoded = try containerValues.decodeIfPresent(ReportGroupTrendFieldType.self, forKey: .trendField)
        trendField = trendFieldDecoded
    }
}