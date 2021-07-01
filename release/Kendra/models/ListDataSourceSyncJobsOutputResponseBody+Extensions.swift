// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDataSourceSyncJobsOutputResponseBody: Equatable {
    public let history: [DataSourceSyncJob]?
    public let nextToken: String?
}

extension ListDataSourceSyncJobsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case history = "History"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let historyContainer = try containerValues.decodeIfPresent([DataSourceSyncJob?].self, forKey: .history)
        var historyDecoded0:[DataSourceSyncJob]? = nil
        if let historyContainer = historyContainer {
            historyDecoded0 = [DataSourceSyncJob]()
            for structure0 in historyContainer {
                if let structure0 = structure0 {
                    historyDecoded0?.append(structure0)
                }
            }
        }
        history = historyDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}