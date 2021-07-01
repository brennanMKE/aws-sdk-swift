// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFlowExecutionMessagesInputBody: Equatable {
    public let flowExecutionId: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension ListFlowExecutionMessagesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case flowExecutionId
        case maxResults
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowExecutionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowExecutionId)
        flowExecutionId = flowExecutionIdDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}