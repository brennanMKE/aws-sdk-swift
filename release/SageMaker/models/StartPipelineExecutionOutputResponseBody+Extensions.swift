// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartPipelineExecutionOutputResponseBody: Equatable {
    public let pipelineExecutionArn: String?
}

extension StartPipelineExecutionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case pipelineExecutionArn = "PipelineExecutionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineExecutionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pipelineExecutionArn)
        pipelineExecutionArn = pipelineExecutionArnDecoded
    }
}