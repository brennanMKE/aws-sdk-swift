// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAgentInputBody: Equatable {
    public let agentArn: String?
}

extension DeleteAgentInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case agentArn = "AgentArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let agentArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .agentArn)
        agentArn = agentArnDecoded
    }
}