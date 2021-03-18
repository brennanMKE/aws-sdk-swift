// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateContributorInsightsInputBody: Equatable {
    public let tableName: String?
    public let indexName: String?
    public let contributorInsightsAction: ContributorInsightsAction?
}

extension UpdateContributorInsightsInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case contributorInsightsAction = "ContributorInsightsAction"
        case indexName = "IndexName"
        case tableName = "TableName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let contributorInsightsActionDecoded = try containerValues.decodeIfPresent(ContributorInsightsAction.self, forKey: .contributorInsightsAction)
        contributorInsightsAction = contributorInsightsActionDecoded
    }
}
