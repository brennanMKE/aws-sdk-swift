// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeBudgetPerformanceHistoryOutputResponseBody: Equatable {
    public let budgetPerformanceHistory: BudgetPerformanceHistory?
    public let nextToken: String?
}

extension DescribeBudgetPerformanceHistoryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case budgetPerformanceHistory = "BudgetPerformanceHistory"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let budgetPerformanceHistoryDecoded = try containerValues.decodeIfPresent(BudgetPerformanceHistory.self, forKey: .budgetPerformanceHistory)
        budgetPerformanceHistory = budgetPerformanceHistoryDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}