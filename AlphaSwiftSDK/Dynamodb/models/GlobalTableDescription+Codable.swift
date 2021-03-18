// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GlobalTableDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case creationDateTime = "CreationDateTime"
        case globalTableArn = "GlobalTableArn"
        case globalTableName = "GlobalTableName"
        case globalTableStatus = "GlobalTableStatus"
        case replicationGroup = "ReplicationGroup"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let creationDateTime = creationDateTime {
            try container.encode(creationDateTime.timeIntervalSince1970, forKey: .creationDateTime)
        }
        if let globalTableArn = globalTableArn {
            try container.encode(globalTableArn, forKey: .globalTableArn)
        }
        if let globalTableName = globalTableName {
            try container.encode(globalTableName, forKey: .globalTableName)
        }
        if let globalTableStatus = globalTableStatus {
            try container.encode(globalTableStatus.rawValue, forKey: .globalTableStatus)
        }
        if let replicationGroup = replicationGroup {
            var replicationGroupContainer = container.nestedUnkeyedContainer(forKey: .replicationGroup)
            for replicadescriptionlist0 in replicationGroup {
                try replicationGroupContainer.encode(replicadescriptionlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationGroupContainer = try containerValues.decodeIfPresent([ReplicaDescription].self, forKey: .replicationGroup)
        var replicationGroupDecoded0:[ReplicaDescription]? = nil
        if let replicationGroupContainer = replicationGroupContainer {
            replicationGroupDecoded0 = [ReplicaDescription]()
            for structure0 in replicationGroupContainer {
                replicationGroupDecoded0?.append(structure0)
            }
        }
        replicationGroup = replicationGroupDecoded0
        let globalTableArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .globalTableArn)
        globalTableArn = globalTableArnDecoded
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
        let globalTableStatusDecoded = try containerValues.decodeIfPresent(GlobalTableStatus.self, forKey: .globalTableStatus)
        globalTableStatus = globalTableStatusDecoded
        let globalTableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .globalTableName)
        globalTableName = globalTableNameDecoded
    }
}
