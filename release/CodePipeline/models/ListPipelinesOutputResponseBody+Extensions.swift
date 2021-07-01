// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListPipelinesOutputResponseBody: Equatable {
    public let pipelines: [PipelineSummary]?
    public let nextToken: String?
}

extension ListPipelinesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case pipelines
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelinesContainer = try containerValues.decodeIfPresent([PipelineSummary?].self, forKey: .pipelines)
        var pipelinesDecoded0:[PipelineSummary]? = nil
        if let pipelinesContainer = pipelinesContainer {
            pipelinesDecoded0 = [PipelineSummary]()
            for structure0 in pipelinesContainer {
                if let structure0 = structure0 {
                    pipelinesDecoded0?.append(structure0)
                }
            }
        }
        pipelines = pipelinesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}