// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FlowExecutionSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdAt
        case flowExecutionId
        case flowTemplateId
        case status
        case systemInstanceId
        case updatedAt
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let flowExecutionId = flowExecutionId {
            try encodeContainer.encode(flowExecutionId, forKey: .flowExecutionId)
        }
        if let flowTemplateId = flowTemplateId {
            try encodeContainer.encode(flowTemplateId, forKey: .flowTemplateId)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let systemInstanceId = systemInstanceId {
            try encodeContainer.encode(systemInstanceId, forKey: .systemInstanceId)
        }
        if let updatedAt = updatedAt {
            try encodeContainer.encode(updatedAt.timeIntervalSince1970, forKey: .updatedAt)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowExecutionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowExecutionId)
        flowExecutionId = flowExecutionIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(FlowExecutionStatus.self, forKey: .status)
        status = statusDecoded
        let systemInstanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .systemInstanceId)
        systemInstanceId = systemInstanceIdDecoded
        let flowTemplateIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowTemplateId)
        flowTemplateId = flowTemplateIdDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let updatedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .updatedAt)
        updatedAt = updatedAtDecoded
    }
}