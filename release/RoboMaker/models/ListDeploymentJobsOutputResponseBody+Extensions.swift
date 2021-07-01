// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDeploymentJobsOutputResponseBody: Equatable {
    public let deploymentJobs: [DeploymentJob]?
    public let nextToken: String?
}

extension ListDeploymentJobsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deploymentJobs
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentJobsContainer = try containerValues.decodeIfPresent([DeploymentJob?].self, forKey: .deploymentJobs)
        var deploymentJobsDecoded0:[DeploymentJob]? = nil
        if let deploymentJobsContainer = deploymentJobsContainer {
            deploymentJobsDecoded0 = [DeploymentJob]()
            for structure0 in deploymentJobsContainer {
                if let structure0 = structure0 {
                    deploymentJobsDecoded0?.append(structure0)
                }
            }
        }
        deploymentJobs = deploymentJobsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}