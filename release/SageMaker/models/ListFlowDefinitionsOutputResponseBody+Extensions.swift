// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFlowDefinitionsOutputResponseBody: Equatable {
    public let flowDefinitionSummaries: [FlowDefinitionSummary]?
    public let nextToken: String?
}

extension ListFlowDefinitionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case flowDefinitionSummaries = "FlowDefinitionSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowDefinitionSummariesContainer = try containerValues.decodeIfPresent([FlowDefinitionSummary?].self, forKey: .flowDefinitionSummaries)
        var flowDefinitionSummariesDecoded0:[FlowDefinitionSummary]? = nil
        if let flowDefinitionSummariesContainer = flowDefinitionSummariesContainer {
            flowDefinitionSummariesDecoded0 = [FlowDefinitionSummary]()
            for structure0 in flowDefinitionSummariesContainer {
                if let structure0 = structure0 {
                    flowDefinitionSummariesDecoded0?.append(structure0)
                }
            }
        }
        flowDefinitionSummaries = flowDefinitionSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}