// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListThemesOutputResponseBody: Equatable {
    public let themeSummaryList: [ThemeSummary]?
    public let nextToken: String?
    public let status: Int
    public let requestId: String?
}

extension ListThemesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case requestId = "RequestId"
        case status = "Status"
        case themeSummaryList = "ThemeSummaryList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let themeSummaryListContainer = try containerValues.decodeIfPresent([ThemeSummary?].self, forKey: .themeSummaryList)
        var themeSummaryListDecoded0:[ThemeSummary]? = nil
        if let themeSummaryListContainer = themeSummaryListContainer {
            themeSummaryListDecoded0 = [ThemeSummary]()
            for structure0 in themeSummaryListContainer {
                if let structure0 = structure0 {
                    themeSummaryListDecoded0?.append(structure0)
                }
            }
        }
        themeSummaryList = themeSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let statusDecoded = try containerValues.decode(Int.self, forKey: .status)
        status = statusDecoded
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
    }
}