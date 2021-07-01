// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribePipelinesOutputResponseBody: Equatable {
    public let pipelineDescriptionList: [PipelineDescription]?
}

extension DescribePipelinesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case pipelineDescriptionList
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineDescriptionListContainer = try containerValues.decodeIfPresent([PipelineDescription?].self, forKey: .pipelineDescriptionList)
        var pipelineDescriptionListDecoded0:[PipelineDescription]? = nil
        if let pipelineDescriptionListContainer = pipelineDescriptionListContainer {
            pipelineDescriptionListDecoded0 = [PipelineDescription]()
            for structure0 in pipelineDescriptionListContainer {
                if let structure0 = structure0 {
                    pipelineDescriptionListDecoded0?.append(structure0)
                }
            }
        }
        pipelineDescriptionList = pipelineDescriptionListDecoded0
    }
}