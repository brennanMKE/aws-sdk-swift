// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsElbLoadBalancerSourceSecurityGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case groupName = "GroupName"
        case ownerAlias = "OwnerAlias"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let groupName = groupName {
            try encodeContainer.encode(groupName, forKey: .groupName)
        }
        if let ownerAlias = ownerAlias {
            try encodeContainer.encode(ownerAlias, forKey: .ownerAlias)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let ownerAliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ownerAlias)
        ownerAlias = ownerAliasDecoded
    }
}