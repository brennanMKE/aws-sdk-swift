// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeGameServerInstancesInputBody: Equatable {
    public let gameServerGroupName: String?
    public let instanceIds: [String]?
    public let limit: Int?
    public let nextToken: String?
}

extension DescribeGameServerInstancesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case gameServerGroupName = "GameServerGroupName"
        case instanceIds = "InstanceIds"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gameServerGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameServerGroupName)
        gameServerGroupName = gameServerGroupNameDecoded
        let instanceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .instanceIds)
        var instanceIdsDecoded0:[String]? = nil
        if let instanceIdsContainer = instanceIdsContainer {
            instanceIdsDecoded0 = [String]()
            for string0 in instanceIdsContainer {
                if let string0 = string0 {
                    instanceIdsDecoded0?.append(string0)
                }
            }
        }
        instanceIds = instanceIdsDecoded0
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}