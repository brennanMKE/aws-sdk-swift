// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeprecateWorkflowTypeInputBody: Equatable {
    public let domain: String?
    public let workflowType: WorkflowType?
}

extension DeprecateWorkflowTypeInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domain
        case workflowType
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let workflowTypeDecoded = try containerValues.decodeIfPresent(WorkflowType.self, forKey: .workflowType)
        workflowType = workflowTypeDecoded
    }
}