// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetExecutionHistoryInputBody: Equatable {
    public let executionArn: String?
    public let maxResults: Int
    public let reverseOrder: Bool
    public let nextToken: String?
    public let includeExecutionData: Bool?
}

extension GetExecutionHistoryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case executionArn
        case includeExecutionData
        case maxResults
        case nextToken
        case reverseOrder
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let executionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionArn)
        executionArn = executionArnDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let reverseOrderDecoded = try containerValues.decode(Bool.self, forKey: .reverseOrder)
        reverseOrder = reverseOrderDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let includeExecutionDataDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeExecutionData)
        includeExecutionData = includeExecutionDataDecoded
    }
}