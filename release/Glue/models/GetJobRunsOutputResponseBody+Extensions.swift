// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetJobRunsOutputResponseBody: Equatable {
    public let jobRuns: [JobRun]?
    public let nextToken: String?
}

extension GetJobRunsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobRuns = "JobRuns"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobRunsContainer = try containerValues.decodeIfPresent([JobRun?].self, forKey: .jobRuns)
        var jobRunsDecoded0:[JobRun]? = nil
        if let jobRunsContainer = jobRunsContainer {
            jobRunsDecoded0 = [JobRun]()
            for structure0 in jobRunsContainer {
                if let structure0 = structure0 {
                    jobRunsDecoded0?.append(structure0)
                }
            }
        }
        jobRuns = jobRunsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}