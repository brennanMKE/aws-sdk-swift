// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateDeploymentOutputResponseBody: Equatable {
    public let autoDeployed: Bool
    public let createdDate: Date?
    public let deploymentId: String?
    public let deploymentStatus: DeploymentStatus?
    public let deploymentStatusMessage: String?
    public let description: String?
}

extension UpdateDeploymentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case autoDeployed = "autoDeployed"
        case createdDate = "createdDate"
        case deploymentId = "deploymentId"
        case deploymentStatus = "deploymentStatus"
        case deploymentStatusMessage = "deploymentStatusMessage"
        case description = "description"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let autoDeployedDecoded = try containerValues.decode(Bool.self, forKey: .autoDeployed)
        autoDeployed = autoDeployedDecoded
        let createdDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdDate)
        createdDate = createdDateDecoded
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let deploymentStatusDecoded = try containerValues.decodeIfPresent(DeploymentStatus.self, forKey: .deploymentStatus)
        deploymentStatus = deploymentStatusDecoded
        let deploymentStatusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentStatusMessage)
        deploymentStatusMessage = deploymentStatusMessageDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
    }
}