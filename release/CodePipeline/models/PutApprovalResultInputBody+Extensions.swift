// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutApprovalResultInputBody: Equatable {
    public let pipelineName: String?
    public let stageName: String?
    public let actionName: String?
    public let result: ApprovalResult?
    public let token: String?
}

extension PutApprovalResultInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case actionName
        case pipelineName
        case result
        case stageName
        case token
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pipelineName)
        pipelineName = pipelineNameDecoded
        let stageNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stageName)
        stageName = stageNameDecoded
        let actionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .actionName)
        actionName = actionNameDecoded
        let resultDecoded = try containerValues.decodeIfPresent(ApprovalResult.self, forKey: .result)
        result = resultDecoded
        let tokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .token)
        token = tokenDecoded
    }
}