// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateLifecyclePolicyInputBody: Equatable {
    public let executionRoleArn: String?
    public let state: SettablePolicyStateValues?
    public let description: String?
    public let policyDetails: PolicyDetails?
}

extension UpdateLifecyclePolicyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case executionRoleArn = "ExecutionRoleArn"
        case policyDetails = "PolicyDetails"
        case state = "State"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let executionRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionRoleArn)
        executionRoleArn = executionRoleArnDecoded
        let stateDecoded = try containerValues.decodeIfPresent(SettablePolicyStateValues.self, forKey: .state)
        state = stateDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let policyDetailsDecoded = try containerValues.decodeIfPresent(PolicyDetails.self, forKey: .policyDetails)
        policyDetails = policyDetailsDecoded
    }
}