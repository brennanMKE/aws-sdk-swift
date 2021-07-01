// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFlowDefinitionOutputResponseBody: Equatable {
    public let flowDefinitionArn: String?
}

extension CreateFlowDefinitionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case flowDefinitionArn = "FlowDefinitionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowDefinitionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowDefinitionArn)
        flowDefinitionArn = flowDefinitionArnDecoded
    }
}