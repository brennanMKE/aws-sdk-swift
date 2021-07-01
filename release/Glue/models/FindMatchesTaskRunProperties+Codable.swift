// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FindMatchesTaskRunProperties: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case jobId = "JobId"
        case jobName = "JobName"
        case jobRunId = "JobRunId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let jobId = jobId {
            try encodeContainer.encode(jobId, forKey: .jobId)
        }
        if let jobName = jobName {
            try encodeContainer.encode(jobName, forKey: .jobName)
        }
        if let jobRunId = jobRunId {
            try encodeContainer.encode(jobRunId, forKey: .jobRunId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobId)
        jobId = jobIdDecoded
        let jobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobName)
        jobName = jobNameDecoded
        let jobRunIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobRunId)
        jobRunId = jobRunIdDecoded
    }
}