// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetPipelineExecutionOutputResponseBody: Equatable {
    public let pipelineExecution: PipelineExecution?
}

extension GetPipelineExecutionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case pipelineExecution
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineExecutionDecoded = try containerValues.decodeIfPresent(PipelineExecution.self, forKey: .pipelineExecution)
        pipelineExecution = pipelineExecutionDecoded
    }
}