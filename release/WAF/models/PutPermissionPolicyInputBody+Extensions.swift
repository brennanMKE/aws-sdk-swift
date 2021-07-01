// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutPermissionPolicyInputBody: Equatable {
    public let resourceArn: String?
    public let policy: String?
}

extension PutPermissionPolicyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policy = "Policy"
        case resourceArn = "ResourceArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceArn)
        resourceArn = resourceArnDecoded
        let policyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .policy)
        policy = policyDecoded
    }
}