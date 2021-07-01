// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDeploymentGroupOutputResponseBody: Equatable {
    public let deploymentGroupInfo: DeploymentGroupInfo?
}

extension GetDeploymentGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deploymentGroupInfo
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentGroupInfoDecoded = try containerValues.decodeIfPresent(DeploymentGroupInfo.self, forKey: .deploymentGroupInfo)
        deploymentGroupInfo = deploymentGroupInfoDecoded
    }
}