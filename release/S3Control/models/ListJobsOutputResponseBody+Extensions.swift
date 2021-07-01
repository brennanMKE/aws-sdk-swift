// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListJobsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let jobs: [JobListDescriptor]?
}

extension ListJobsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobs = "Jobs"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        if containerValues.contains(.jobs) {
            struct KeyVal0{struct member{}}
            let jobsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .jobs)
            if let jobsWrappedContainer = jobsWrappedContainer {
                let jobsContainer = try jobsWrappedContainer.decodeIfPresent([JobListDescriptor].self, forKey: .member)
                var jobsBuffer:[JobListDescriptor]? = nil
                if let jobsContainer = jobsContainer {
                    jobsBuffer = [JobListDescriptor]()
                    for structureContainer0 in jobsContainer {
                        jobsBuffer?.append(structureContainer0)
                    }
                }
                jobs = jobsBuffer
            } else {
                jobs = []
            }
        } else {
            jobs = nil
        }
    }
}